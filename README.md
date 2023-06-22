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

Module 2-1 starts off going over data types and their purpose, such as representing numbers, text, and truth statements. It also states how the rest of the module will go over the different data types, checking the type of data, and how to manipula the data. Module 2-1 Assignment:

"Can you think of any other categories of data in real life? What about in the applications you use?"

My response to this is vectors. Vectors use numbers within them but have a precise definition and tons of applications. For example, Unity uses Vector3 to represent an object's position and many other things. There was no coding assignment for Module 2-1.

Module 2-2 teaches that Lua organizes data into four basic data types:

Number - positive, negative, and/or decimal values --> -5.2 or 3

String - characters in single or normal quotes --> "hello" or 'hello'

Boolean - true or false

Nil - A representation of no value. Similar to NULL.

Additionally, not yet covered here, there are four complex data types:

Tables, Functions, Userdata, and Threads

The assignment from Module 2-2 was to:

1. First print a number representing how many languages you can speak.
2. On a new line, print a string that represents my favorite movie.
3. On a new line, print a boolean that represents whether or not I ate breakfast this morning.
4. Finally, on a new line, print nil to the output terminal.
   
My completed assignment for Module 2-2 is in [module-2-2-simple-data-type-printing.lua](https://github.com/julch94/learning-lua/blob/main/Module2/module-2-2-simple-data-type-printing.lua). Running the script yields this result:

![image](https://github.com/julch94/learning-lua/assets/74890109/768edb01-bd00-4d78-a479-4ce45f47cd81)

In Module 2-3 the course dives deeper into number and string syntax. 

Key notes include:

*    Strings can use either " or ' , as long as they match:
        GOOD:    print("test")
     
        GOOD:    print('test')
     
        BAD:    print("test')

*    To include a single or double quote character in a string, add a \ in front of that character:
  
~~~
     print("\"FOUR" -Jhin\")
~~~

*    Use type() to help figure out what type a value is. Example:

~~~
      print(type("What am I?")
~~~

This will return string

The assignment for Module 2-3 was as follows:

  1. Pick a number and use type() to print the type of the number picked.
  2. Next, add quote around the number and print the type again.
  3. On a new line, use the type() function to print the type of the value true.
  4. Next, add qoutes around true and check the type again.

The script [module-2-3-using-type-function.lua](https://github.com/julch94/learning-lua/blob/main/Module2/module-2-3-using-type-function.lua) was created to complete this assignment and the results are below:

![image](https://github.com/julch94/learning-lua/assets/74890109/58de7df1-f870-4677-8d5f-e368ef613269)

Module 2-4 covers calculating with arithmetic operators. 

*    Addition - x+y - adds two numbers
*    Subtraction - x-y - subtracts two numbers
*    Multiplication - x*y - multiplies two numbers
*    Division - x/y - divides two numbers
*    Exponential - x^y - takes the exponent of two numbers
*    Remainder/Modulo/Modulus - x%y - gives the remaining leftover after dividing two numbers
*    Negation - -x - reverse the sign value of a number
  
An expression uses operators to transform data and evaluates to a new value. For example, the express 2+3 evaulates to 5.

Module 2-4's assignment:

1. Ji-Eun's shopping cart has two items - one priced at $10.95 and the other at $20.99. Add the prices together and print her total.
2. Luca's ice scream store has 300 ice cream cones. Luca sells 298 ice cream cones. Subtract the number of ice cream cones and print the number remaining to share with his friend Bruno.
3. Billy charges $50 per cowboy hat and sold 49. Multiply and print how much money he made.
4. Sage is holding a pizza party and bought 8 pizzas for $96. Divide and print how much one pizza costs.
5. Cairo promised Layla his leftover marbles. He has 7 he must divide among 2 other friends. Determine and print how many marbles are left over for Layla.

The codecademy built-in compiler wanted precisely followed instructions but I wanted to actually use variables for these values and then evaluate those variables to print the results. The script [module-2-4-operators.lua](https://github.com/julch94/learning-lua/blob/main/Module2/module-2-4-operators.lua) was created to complete this assignment and the results are below:

![image](https://github.com/julch94/learning-lua/assets/74890109/a53cb368-a615-4aac-b90c-ad8f5bbe5e8a)

Module 2-5 was a review of data types and operators. 
* Basic Data Types: Number, String, Nil, Boolean
* String: "this" or 'this'
* Operators: +, -, *, /, ^, %, - (first "-" is subtraction, second is negation)
* Use the type() function to determine a value's type when needed

Additionally, some practice challenges were provided:

1. Use print() to print a value of each basic data type that you don't already have in your code
2. Modify the print() statements you made by adding arithmetic operators or changing the the data type by converting them into the string data type.
3. Output the type of each of your values after you made modifications.

The script [module-2-5-reviewing-data-types-and-operators.lua](https://github.com/julch94/learning-lua/blob/main/Module2/module-2-5-reviewing-data-types-and-operators.lua) was created to complete these challenges and the results are below:

![image](https://github.com/julch94/learning-lua/assets/74890109/3e00d6fd-5de3-4b5d-a385-ecacde7e048f)
