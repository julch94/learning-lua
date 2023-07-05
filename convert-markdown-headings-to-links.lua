-- Convert Markdown Headings to Links
-- convert-markdown-headings-to-links.lua
-- 26 June 2023



--[[
	This script was developed by outlining the desired functions to ChatGPT and instructing the tool to develop a script along with steps for creating said script. This script was NOT directly created by ChatGPT, but instead was developed by following the tutorial mentioned above with my own interpretation and skills gained from learning Lua.
	
	This script is also supposed to serve as a guide for the many pieces within the script as I am still learning Lua and this was my first experience implementing File I/O and real text parsing and manipulation using regex.
	
	To use this script, replace inputFilename and outputFilename with the file path for the desired Markdown file to be processed and txt file to be output to and then run this script. It will print the results to the terminal. NOTE: the output file will be created if it doesn't exist.
--]]



-- Functional overview:

-- This script contains three main functions: getHeadings, printTOC, and saveTOC
-- This script collects the Input File and Output File, builds the three main functions, and finally it executes them to convert our markdown headings from an input markdown file to links in an output text file, ready to be used for a Table of Contents

-- getHeadings
	-- This function goes and opens the markdown file in read-only and extract the headings using a regex pattern of ^(#+)%s*(.+)$, determines what level of heading it is, and formats appropriately to be inserted into our headings table

-- printTOC
	-- This function uses the headings table to print out each heading so we can see the results in the command-line interface (CLI)

-- saveTOC
	-- This function saves the results of the headings table and outputs them to the desired file
	


-- File I/O here - can replace values for your use
local inputFileName = "lua-users-tutorial.md"
local outputFileName = "table_of_contents.txt"



-- Functions
local function getHeadings(fileName)
	local file = io.open(fileName, "r")
	if not file then
		return nil -- error message handled under function call
	end

	local headings = {} -- initialize empty table
	
	for line in file:lines() do
		local numHashes, heading = line:match("^(#+)%s+(.+)$") --  regex for markdown heading plus the text in it
		if numHashes and heading then -- if our regex is a match
			local headingLevel = string.len(numHashes) -- heading level is equal to the number of hashes
			if headingLevel == 2 or headingLevel == 3 then 
				local link = string.rep("  ", headingLevel - 2) .. " [" .. heading .. "](#" .. string.lower(heading:gsub("%s+", "-")) .. ")" -- create our markdown link from the heading text
				table.insert(headings, link) -- create our headings table (aka Table of Contents) with each link we've created
			end
		end
	end
	
	file:close()
	return headings
end

local function printTOC(headings)
  print("Table of Contents:")
  for _, heading in ipairs(headings) do -- print each heading link in TOC line by line
    print(heading)
  end
end

local function saveTOC(headings, fileName)
	local file = io.open(fileName, "w")
	if not file then
		print("Failed to open Output File: ", file)
		return
	end
	
	file:write("Table of Contents: \n")
	for _, heading in ipairs(headings) do	
		file:write(heading .. "\n")
	end
	
	file:close()
	print("Table of Contents saved to:", fileName)	
end



-- System
local headings = getHeadings(inputFileName)
if headings then 
	printTOC(headings)
	saveTOC(headings, outputFileName)
else
	print("Failed to open Input File: ", inputFileName)
end