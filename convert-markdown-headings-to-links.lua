-- Convert Markdown Headings to Links
-- convert-markdown-headings-to-links.lua
-- 26 June 2023

--[[
	This script was developed by outlining the desired functions to ChatGPT and instructing the tool to develop a script along with steps for creating said script
	
	This script is NOT directly created by ChatGPT, but instead was developed by following the tutorial mentioned above with my own interpretation
	
	This script is also to supposed to serve as a guide for the many pieces within the script as I am still learning Lua and have yet to done any file I/O or major script manipulation
	
	To use this script: replace "MyFile.md" with the file path for the desired Markdown file to be processed and then run this script. It will print the results to the terminal. To save the results to a file, create an empty .txt file in this same directory called "HeadingLinks.txt"
	
	For reference, the ChatGPT conversation mentioned above can be found at: https://chat.openai.com/share/b6457f26-a922-42a3-852d-97935e8b099a
--]]

-- Read in the Markdown file
local markdownFile = io.open("README.md", "r") -- io.open function opens the file in read mode

-- Extract the Headings
local headings = {}

for line in markdownFile:lines() do -- iterate through each line of the markdown file
	local heading = line:match("^%s*#+%s*(.+)") -- regular expression pattern for a heading - see more on this below
	if heading then -- if it matches our regex, 
		table.insert(headings, heading) -- add to our table of headings
	end
end

markdownFile:close() -- close the file

local links = {}
-- Convert the Headings to Links
for i, heading in ipairs(headings) do
	local linkText = "[" .. heading .. "](#" .. heading:lower():gsub("%s", "-") .. ")"
	table.insert(links, linkText)
end
-- first we use [ heading ] to add the actual heading in brackets which will be the clickable text in the link
-- then we print that string again except all lower case, with spaces replaced by hyphens, and a # in front of the string and all thrown in parentheses to act as the link

-- Print each link along with its index
for i, link in ipairs(links) do -- iterates through the whole links table
	print("Link " .. i .. ": " .. link) -- for each link, print index and link text
end

-- Save table to file
local linksFileName = "HeadingLinks.txt" -- variable for our destination file name
local linksFile = io.open(linksFileName, "w") -- open the file in write mode
if not linksFile then
	error("ERROR - COULD NOT OPEN FILE: " .. linksFileName) -- error check
	return
end

for _, link in ipairs(links) do
	linksFile:write(link .. "\n") -- add a line break between links and write each link
end

linksFile:close() -- close the file

--[[
Additional information on the regex for markdown headings:

^  - the start of the string
%s* - zero or more whitespace characters
#+ - one or more # characters, which are found before the text of a heading
%s* - same as previous %s*
(.+) - one or more characters after the whitespace and # characters - this is the actual heading text.

The regex pattern matches any lines that contain optional white space followed by at least one #, more optional white space, and then text (heading content).
--]]

--[[
	Lesson Learned from this exercise:
	1. More learning required on tables
	2. More learning required on file I/O
	3. More learning required on for loops in lua
	4. More learning required on regex in lua and in general
	5. More learning required on ipairs and other pattern tools
--]]