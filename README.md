# learning-lua
This repo will act as the home of my journey to learn Lua - including my created scripts, notes, and updates on my progress.
https://www.lua.org/

# Table of Contents

*  [Setting up Lua on Windows 10](#setting-up-lua-on-windows-10)
*  [Codecademy Learn Lua Course](#codecademy-learn-lua-course)
*  [Convert Markdown Headers to Links](#convert-markdown-headers-to-links)
*  [Lua-Users Tutorial](#lua-users-tutorial)
*  [Programming in Lua First Edition](#programming-in-lua-first-edition)
*  [Some potential resources for learning how to embed Lua in Cpp](#some-potential-resources-for-learning-how-to-embed-lua-in-cpp)

## Setting up Lua on Windows 10

Created [how-to-setup-lua.md](https://github.com/julch94/learning-lua/blob/main/how-to-setup-lua.md) as I walked through the Lua wiki with steps for setting up on Windows. The process was complex but not all that complicated. I first got Lua working on my laptop while writing this guide, and put them to the test while setting up Lua on my desktop. After setting up on my desktop, I was able to create and test [helloWorld.lua](https://github.com/julch94/learning-lua/blob/main/helloWorld.lua) - a simple "Hello World" script which works! 

## Codecademy Learn Lua Course

I took the [Codecadamy Learn Lua Course](https://www.codecademy.com/learn/learn-lua), an approximately 8 hour course, over the course of about 1 week. I completed all of the free modules, taking notes and developing assignment scripts which are all documented at [codecademy-learn-lua-course.md](https://github.com/julch94/learning-lua/blob/main/codecademy-learn-lua-course.md)

The modules included Introduction to Lua, Variables and Data, Conditionals and Logic, and Functions. This course serves as a very basic introduction to the simpler concepts of Lua and does not really get into the more (but not very) advanced topics such as  for loops, file I/O, or tables.

## Convert Markdown Headers to Links

While putting this README markdown file together I wanted to build a Table of Contents to structure the different resources I learned from and the items within them. I ended up finding an online resource to start with but I knew that this is something Lua was capable of. I was vaguely familiar with regular expressions and knew that Lua's built in string functions would likely be able to get me what I needed. So, with that in mind, I hopped over to ChatGPT to build my own tutorial to teach myself how to build this script. I've created the [convert-markdown-headings-to-links.lua](https://github.com/julch94/learning-lua/blob/main/convert-markdown-headings-to-links.lua) script with fully detailed comments explaining each step of the code.

The [HeadingLinks.txt](https://github.com/julch94/learning-lua/blob/main/HeadingLinks.txt) file contains the results of the above script being run against this README.md file. All future Table of Contents work will use this script to generate the links from the markdown file.

## Lua-Users Tutorial

The [Lua-Users Tutorial](http://lua-users.org/wiki/TutorialDirectory) is the closest thing to an official guide on learning Lua. I wanted more of a course structure for my introduction to the Lua language so I saved this for second. My goal was to mostly skim over the topics I learned with detail on the Codecademy course, and really dive into the new stuff. My notes and any example scripts are captured in [lua-users-tutorial.md](https://github.com/julch94/learning-lua/blob/main/lua-users-tutorial.md).

## Programming in Lua First Edition

From the Lua website: "This is the online version of the first edition of the book Programming in Lua, a detailed and authoritative introduction to all aspects of Lua programming written by Lua's chief architect. The first edition was aimed at Lua 5.0. It remains largely relevant for later versions, but there are some differences. All corrections listed in the errata have been made in the online version."

After working through the Lua-Users Tutorial, I aim to work through the entire [Programming in Lua (First Edition) book online](https://www.lua.org/pil/contents.html). My goal is to mostly skim through and briefly review the topics I feel confident in, and take one last swing at the hard stuff. My notes and any example scripts are captured in [programming-in-lua.md](https://github.com/julch94/learning-lua/blob/main/programming-in-lua.md).

## Some potential resources for learning how to embed Lua in Cpp:

[https://www.cs.usfca.edu/~galles/cs420/lecture/LuaLectures/LuaAndC.html](https://www.cs.usfca.edu/~galles/cs420/lecture/LuaLectures/LuaAndC.html)

[https://daley-paley.medium.com/super-simple-example-of-adding-lua-to-c-710730e9528a](https://daley-paley.medium.com/super-simple-example-of-adding-lua-to-c-710730e9528a)

[https://www.youtube.com/watch?v=xrLQ0OXfjaI&list=PLLwK93hM93Z3nhfJyRRWGRXHaXgNX0Itk](https://www.youtube.com/watch?v=xrLQ0OXfjaI&list=PLLwK93hM93Z3nhfJyRRWGRXHaXgNX0Itk)
