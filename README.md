# learning-lua
This repo will act as the home of my journey to learn Lua - including my created scripts, notes, and updates on my progress.
https://www.lua.org/

## 20 June 2023

Created [*how_to_setup_lua.txt*](https://github.com/julch94/learning-lua/blob/main/how_to_setup_lua.txt) as I walked through the Lua wiki with steps for setting up on Windows. The process was complex but not all that complicated. I first got Lua working on my laptop while writing this guide, and put them to the test while setting up Lua on my desktop. After setting up on my desktop, I was able to create and test [helloWorld.lua](https://github.com/julch94/learning-lua/blob/main/helloWorld.lua) - a simple "Hello World" script which works! 

Next up is to start taking the [Codecadamy Learn Lua Course](https://www.codecademy.com/learn/learn-lua). The course has 4 main (free) modules and takes about 8 hours, so 2 hours per module split over about a week. My objective is to complete all scripts outside of the codecadamy browser, on my own machine, and document them (along with their results) on this repo.

I went ahead and knocked out [Module 1 - Introduction to Lua](https://www.codecademy.com/learn/learn-lua/modules/learn-lua-introduction/cheatsheet). In the first part of this module I created [module-1-3-stacked.lua](https://github.com/julch94/learning-lua/blob/main/Module1/module-1-3-stacked.lua) -  a script that draws a stack of printed numbers displayed in a stacked manner, like so:

![image](https://github.com/julch94/learning-lua/assets/74890109/6094e011-4787-4d43-ad38-31b4611a2943)

Next, I learned about single line comments, denoted by two dashes. These can be used on their own line or after a line of code. [module-1-4-single-line-comments.lua](https://github.com/julch94/learning-lua/blob/main/Module1/module-1-4-single-line-comments.lua) was created to show these examples and the output ignores the comments:

![image](https://github.com/julch94/learning-lua/assets/74890109/7fbff712-d689-4a9c-a0b8-c6886bc542fc)

After single line comments came multi-line comments. [module-1-5-multi-line-comments.lua](https://github.com/julch94/learning-lua/blob/main/Module1/module-1-5-multi-line-comments.lua) is a script that comments out several example print statements using multi-line comments. I tested out single line comments, removing some of those, etc. per the module's instructions and then completed the assignment by multi-line commenting all but the 

~~~
print("Starting the program") 
~~~

line. The results are as follows:

![image](https://github.com/julch94/learning-lua/assets/74890109/d777df6e-1c22-40f5-be40-7b146bb3085f)

The final assignment of Module 1 was a letter to my future self in [module-1-6-letter-to-self.lua](https://github.com/julch94/learning-lua/blob/main/Module1/module-1-6-letter-to-self.lua). This letter is just simple print statements and comments with my goals, name, and date. Though the previous sections in this module do NOT close out multi-line comments with --, it seems like the recap here wants you to do so. I wondered what was considered best practice and found [**this**](https://www.lua.org/pil/1.3.html) straight from Lua.org. 

"A comment starts anywhere with a double hyphen (--) and runs until the end of the line. Lua also offers block comments, which start with --[[ and run until the corresponding ]]. A common trick, when we want to comment out a piece of code, is to write the following:

    --[[
    print(10)         -- no action (comment)
    --]]
"

The key takeaway is the hyphens at the end do nothing. It's the closing brackets that end the multi-line comment. In fact, in their example, they put the end hyphens BEFORE the end closing brackets. Going forward, I plan to either do a they show in this official example or have no hyphens at all at the end for clarity. I completed the assignment with some single line comments up front outlining the script and an example multi-line comment for practice. The results are shown below:

![image](https://github.com/julch94/learning-lua/assets/74890109/c310d890-4ef6-44de-b548-03a3655a8107)

## 21 June 2023
[Module 2 - Variables and Data](https://www.codecademy.com/learn/learn-lua/modules/variables-and-data/cheatsheet)

Start here to resume: https://www.codecademy.com/courses/learn-lua/lessons/lua-data-types-and-operators/exercises/lua-categorizing-data-with-types
