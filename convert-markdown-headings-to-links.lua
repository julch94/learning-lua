-- Convert Markdown Headings to Links
-- convert-markdown-headings-to-links.lua
-- 26 June 2023

--[[
	This script was developed by outlining the desired functions to ChatGPT and instructing the tool to develop a script along with steps for creating said script. This script was NOT directly created by ChatGPT, but instead was developed by following the tutorial mentioned above with my own interpretation
	
	This script is also to supposed to serve as a guide for the many pieces within the script as I am still learning Lua and have yet to done any file I/O or major script manipulation.
	
	To use this script: replace inputFilename and outputFilename with the file path for the desired Markdown file to be processed and txt file to be output to and then run this script. It will print the results to the terminal. NOTE: the output file will be created if it doesn't exist.
--]]


local inputFilename = "lua-users-tutorial.md"  -- Replace with your Markdown file's name
local outputFilename = "table_of_contents.txt"  -- Replace with the desired output file name


local function collectHeadings(filename)
  local file = io.open(filename, "r")
  if not file then
    return nil
  end

  local headings = {}
  local currentHeading = nil

  for line in file:lines() do
    local hashCount, heading = line:match("^(#+)%s+(.+)$")
    if hashCount and heading then
      local headingLevel = string.len(hashCount)
      if headingLevel == 2 or headingLevel == 3 then
        local formattedHeading = string.rep("  ", headingLevel - 2) .. " [" .. heading .. "](#" .. string.lower(heading:gsub("%s+", "-")) .. ")"
        table.insert(headings, formattedHeading)
      end
    end
  end

  file:close()
  return headings
end


local function printTableOfContents(headings)
  print("Table of Contents:")
  for _, heading in ipairs(headings) do
    print(heading)
  end
end

local function saveTableOfContentsToFile(headings, outputFilename)
  local file = io.open(outputFilename, "w")
  if not file then
    print("Failed to open the file for writing.")
    return
  end

  file:write("Table of Contents:\n")
  for _, heading in ipairs(headings) do
    file:write(heading .. "\n")
  end

  file:close()
  print("Table of Contents saved to:", outputFilename)
end

local headings = collectHeadings(inputFilename)
if headings then
  printTableOfContents(headings)
  saveTableOfContentsToFile(headings, outputFilename)
else
  print("Failed to open the file:", inputFilename)
end

--[[

Collecting Headings
- The `collectHeadings` function reads the Markdown file line by line and extracts the headings.
- The function opens the file using `io.open` with the provided filename in read mode (`"r"`).
- It then initializes an empty table called `headings` to store the collected headings.
- The `for` loop iterates over each line in the file using `file:lines()`.
- The line is matched against the pattern `^(#+)%s*(.+)$`, which captures the hash symbols (`#+`) and the heading text (`.+`).
- If a match is found and both the hash count and heading text are present, the headingLevel of the heading is determined by the length of the hash count.
- If the headingLevel is 2 or 3 (indicating a two or three hash count), the heading is formatted as a Markdown link using the `string.rep` function to add indentation based on the heading headingLevel.
- The formatted heading is then inserted into the `headings` table using `table.insert`.

Printing the Table of Contents
- The `printTableOfContents` function takes the `headings` table as input and prints the Table of Contents to the console.
- It iterates over each heading in the `headings` table using `ipairs`.
- The `print` function is used to display each heading.

Saving the Table of Contents to a File
- The `saveTableOfContentsToFile` function takes the `headings` table and an output filename as input.
- It opens the specified file in write mode (`"w"`) using `io.open`.
- If the file fails to open, it displays an error message and returns.
- It writes the Table of Contents header and each heading to the file using the `file:write` function.
- Finally, it closes the file and displays a success message.

Running the Script
- The script calls the `collectHeadings` function to collect the headings from the input Markdown file.
- If the headings are successfully collected, it calls the `printTableOfContents` function to display the Table of Contents on the console.
- It then prompts the user to enter the desired output filename and calls the `saveTableOfContentsToFile` function to save the Table of Contents to a file.

--]]