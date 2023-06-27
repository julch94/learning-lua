# learning-lua
This repo will act as the home of my journey to learn Lua - including my created scripts, notes, and updates on my progress.
https://www.lua.org/

# Table of Contents

<!-- TOCs generated with https://github.com/derlin/bitdowntoc) -->

- [Setting up Lua on Windows 10](#setting-up-lua-on-windows-10)
- [Codecadamy Learn Lua Course](#codecadamy-learn-lua-course)
  *  [Learn Lua Course Syllabus](#learn-lua-course-syllabus)
  *  [Module 1 - Introduction to Lua](#module-1---introduction-to-lua)
  *  [Module 2 - Variables and Data](#module-2---variables-and-data)
  *  [Module 3 - Conditionals & Logic](#module-3---conditionals--logic)
  *  [Module 4 - Functions](#module-4---functions)
  *  [Conclusion of codecademy Lua intro course](#conclusion-of-codecademy-lua-intro-course)
- [Some potential resources for learning how to embedd Lua in C++:](#some-potential-resources-for-learning-how-to-embedd-lua-in-c)
- [Additional Ideas for what's next](#additional-ideas-for-whats-next)
- [Convert Markdown Headers to Links](#convert-markdown-headers-to-links)

<!-- TOC end -->

## Setting up Lua on Windows 10

Created [*how_to_setup_lua.txt*](https://github.com/julch94/learning-lua/blob/main/how_to_setup_lua.txt) as I walked through the Lua wiki with steps for setting up on Windows. The process was complex but not all that complicated. I first got Lua working on my laptop while writing this guide, and put them to the test while setting up Lua on my desktop. After setting up on my desktop, I was able to create and test [helloWorld.lua](https://github.com/julch94/learning-lua/blob/main/helloWorld.lua) - a simple "Hello World" script which works! 

## Codecadamy Learn Lua Course

Next up is to start taking the [Codecadamy Learn Lua Course](https://www.codecademy.com/learn/learn-lua). The course has 4 main (free) modules and takes about 8 hours, so 2 hours per module split over about a week. My objective is to complete all scripts outside of the codecadamy browser, on my own machine, and document them (along with their results) on this repo.

## Learn Lua Course Syllabus
- [Module 1 - Introduction to Lua](#module-1---introduction-to-lua)
  * [Single Line Comments](#single-line-comments)
  * [Multi-line Comments](#multi-line-comments)
  * [Module 1-6 Assignment - Letter to Self](#module-1-6-assignment---letter-to-self)
  * [Module 1 Recap and a note on comment syntax](#module-1-recap-and-a-note-on-comment-syntax)
- [Module 2 - Variables and Data](#module-2---variables-and-data)
  * [Module 2-1 - Data Types and their Purpose](#module-2-1---data-types-and-their-purpose)
  * [Module 2-1 Assignment - Real Life Applications of Data Categories](#module-2-1-assignment---real-life-applications-of-data-categories)
  * [Module 2-2 - Basic  and Complex Data Types](#module-2-2---basic--and-complex-data-types)
  * [Module 2-2 Assignment -  Simple Data Type Printing](#module-2-2-assignment----simple-data-type-printing)
  * [Module 2-3 Number and String Syntax](#module-2-3-number-and-string-syntax)
  * [Module 2-3 Assignment -  Using the type() Function](#module-2-3-assignment----using-the-type-function)
  * [Module 2-4 - Arithmetic Operators](#module-2-4---arithmetic-operators)
  * [Module 2-4 Assignment - Shopping Calculations](#module-2-4-assignment---shopping-calculations)
  * [Module 2-5 - Review of Data Types and Operators](#module-2-5---review-of-data-types-and-operators)
  * [Module 2-5 - Practice Challenges with Data Types and Operators](#module-2-5---practice-challenges-with-data-types-and-operators)
  * [Module 2-6 - Introduction to Variables](#module-2-6---introduction-to-variables)
  * [Module 2-6 Assignment - Variable and Data Examples](#module-2-6-assignment---variable-and-data-examples)
  * [Module 2-7 - Defining Variables](#module-2-7---defining-variables)
  * [Module 2-7 Assignment - High Score](#module-2-7-assignment---high-score)
  * [Module 2-8 - Using type() with Variables](#module-2-8---using-type-with-variables)
  * [Module 2-8 Assignment - Printing Variables and their Type](#module-2-8-assignment---printing-variables-and-their-type)
  * [Module 2-9 - Variable Reassignment](#module-2-9---variable-reassignment)
  * [Module 2-9 Assignment - High Score and Name](#module-2-9-assignment---high-score-and-name)
  * [Module 2-10 - Using Arithmetic Operators with Variables](#module-2-10---using-arithmetic-operators-with-variables)
  * [Module 2-10 Assignment - Modifying Scores](#module-2-10-assignment---modifying-scores)
  * [Module 2-11 - Concatenation](#module-2-11---concatenation)
  * [Module 2-11 Assignment - Printing a Player's Name With their Score](#module-2-11-assignment---printing-a-players-name-with-their-score)
  * [Module 2-12 - Type Coercion in Concatenation and Arithmetic Operations](#module-2-12---type-coercion-in-concatenation-and-arithmetic-operations)
  * [Module 2-12 Assignment - Testing Concatenation and Coercion](#module-2-12-assignment---testing-concatenation-and-coercion)
  * [Module 2-13 - Review of Variables](#module-2-13---review-of-variables)
  * [Module 2-13 - Practice Challenges with Variables, Reassignment, Concatenation, Arithmetic Operators, and Coercion](#module-2-13---practice-challenges-with-variables-reassignment-concatenation-arithmetic-operators-and-coercion)
- [Module 3 - Conditionals & Logic](#module-3---conditionals--logic)
  * [Module 3-1 - Intro to Control Structures](#module-3-1---intro-to-control-structures)
  * [Module 3-2 - if Statement](#module-3-2---if-statement)
  * [Module 3-2 Assignment - Is It Sunny?](#module-3-2-assignment---is-it-sunny)
  * [Module 3-3 - Comparison Operators](#module-3-3---comparison-operators)
  * [Module 3-3 Assignment - Print Larger Value](#module-3-3-assignment---print-larger-value)
  * [Module 3-4 - else Statement](#module-3-4---else-statement)
  * [Module 3-4 Assignment - Grading an Assignment](#module-3-4-assignment---grading-an-assignment)
  * [Module 3-5 elseif Statement](#module-3-5-elseif-statement)
  * [Module 3-5 Assignment - User Score Responses](#module-3-5-assignment---user-score-responses)
  * [Module 3-6 - Logical Operators](#module-3-6---logical-operators)
  * [Module 3-6 Assignment - Grading Test Scores (Advanced)](#module-3-6-assignment---grading-test-scores-advanced)
  * [Module 3-7 Order of Operations](#module-3-7-order-of-operations)
  * [Module 3-7 Assignment - Guess the Order of Operations](#module-3-7-assignment---guess-the-order-of-operations)
  * [Module 3-8 - Changing the Order of Operations](#module-3-8---changing-the-order-of-operations)
  * [Module 3-8 Assignment - T-shirt or Jacket Weather?](#module-3-8-assignment---t-shirt-or-jacket-weather)
  * [Module 3-9 - Review of Conditionals and Logic](#module-3-9---review-of-conditionals-and-logic)
- [Module 4 - Functions](#module-4---functions)
  * [Module 4-1 - Introduction to Functions](#module-4-1---introduction-to-functions)
  * [Module 4-2 - Declearing Functions](#module-4-2---declearing-functions)
  * [Module 4-2 Assignment - Calculate Shopping Total](#module-4-2-assignment---calculate-shopping-total)
  * [Module 4-3 - Calling a Function](#module-4-3---calling-a-function)
  * [Module 4-3 Assignment - Calling the Shopping Calculation Function](#module-4-3-assignment---calling-the-shopping-calculation-function)
  * [Module 4-4 - Parameters and Arguments](#module-4-4---parameters-and-arguments)
  * [Module 4-4 Assignment - Adding Parameters and Arguments to the Shopping Calculation Function](#module-4-4-assignment---adding-parameters-and-arguments-to-the-shopping-calculation-function)
  * [Module 4-5 - Returns](#module-4-5---returns)
  * [Module 4-5 Assignment - Returning the Shopping Total to a Variable](#module-4-5-assignment---returning-the-shopping-total-to-a-variable)
  * [Module 4-6 - Functions After Returns](#module-4-6---functions-after-returns)
  * [Module 4-6 Assignment - Guess the Print Statements](#module-4-6-assignment---guess-the-print-statements)
  * [Module 4-7 - Practice with Functions](#module-4-7---practice-with-functions)
  * [Module 4-8 - Built-in Lua Functions](#module-4-8---built-in-lua-functions)
  * [Module 4-8 Assignment - string.len()](#module-4-8-assignment---stringlen)
  * [Module 4-9 - Review of Functions](#module-4-9---review-of-functions)

## Module 1 - Introduction to Lua

I went ahead and knocked out [Module 1 - Introduction to Lua](https://www.codecademy.com/learn/learn-lua/modules/learn-lua-introduction/cheatsheet). In the first part of this module I created [module-1-3-stacked.lua](https://github.com/julch94/learning-lua/blob/main/Module1/module-1-3-stacked.lua) -  a script that draws a stack of printed numbers displayed in a stacked manner, like so:

![image](https://github.com/julch94/learning-lua/assets/74890109/6094e011-4787-4d43-ad38-31b4611a2943)

### Single Line Comments

Next, I learned about single line comments, denoted by two dashes. These can be used on their own line or after a line of code. [module-1-4-single-line-comments.lua](https://github.com/julch94/learning-lua/blob/main/Module1/module-1-4-single-line-comments.lua) was created to show these examples and the output ignores the comments:

![image](https://github.com/julch94/learning-lua/assets/74890109/7fbff712-d689-4a9c-a0b8-c6886bc542fc)

### Multi-line Comments

After single line comments came multi-line comments. [module-1-5-multi-line-comments.lua](https://github.com/julch94/learning-lua/blob/main/Module1/module-1-5-multi-line-comments.lua) is a script that comments out several example print statements using multi-line comments. I tested out single line comments, removing some of those, etc. per the module's instructions and then completed the assignment by multi-line commenting all but the 

~~~
print("Starting the program") 
~~~

line. The results are as follows:

![image](https://github.com/julch94/learning-lua/assets/74890109/d777df6e-1c22-40f5-be40-7b146bb3085f)

### Module 1-6 Assignment - Letter to Self

The final assignment of Module 1 was a letter to my future self in [module-1-6-letter-to-self.lua](https://github.com/julch94/learning-lua/blob/main/Module1/module-1-6-letter-to-self.lua). This letter is just simple print statements and comments with my goals, name, and date. 

### Module 1 Recap and a note on comment syntax

Though the previous sections in this module do NOT close out multi-line comments with --, it seems like the recap here wants you to do so. I wondered what was considered best practice and found [**this**](https://www.lua.org/pil/1.3.html) straight from Lua.org. 

"A comment starts anywhere with a double hyphen (--) and runs until the end of the line. Lua also offers block comments, which start with --[[ and run until the corresponding ]]. A common trick, when we want to comment out a piece of code, is to write the following:

    --[[
    print(10)         -- no action (comment)
    --]]
"

The key takeaway is the hyphens at the end do nothing. It's the closing brackets that end the multi-line comment. In fact, in their example, they put the end hyphens BEFORE the end closing brackets. Going forward, I plan to either do a they show in this official example or have no hyphens at all at the end for clarity. I completed the assignment with some single line comments up front outlining the script and an example multi-line comment for practice. The results are shown below:

![image](https://github.com/julch94/learning-lua/assets/74890109/c310d890-4ef6-44de-b548-03a3655a8107)

## Module 2 - Variables and Data

[Module 2 - Variables and Data](https://www.codecademy.com/learn/learn-lua/modules/variables-and-data/cheatsheet)

### Module 2-1 - Data Types and their Purpose

Module 2-1 starts off going over data types and their purpose, such as representing numbers, text, and truth statements. It also states how the rest of the module will go over the different data types, checking the type of data, and how to manipula the data. 

### Module 2-1 Assignment - Real Life Applications of Data Categories

Module 2-1 Assignment:

"Can you think of any other categories of data in real life? What about in the applications you use?"

My response to this is vectors. Vectors use numbers within them but have a precise definition and tons of applications. For example, Unity uses Vector3 to represent an object's position and many other things. There was no coding assignment for Module 2-1.

### Module 2-2 - Basic  and Complex Data Types

Module 2-2 teaches that Lua organizes data into four basic data types:

Number - positive, negative, and/or decimal values --> -5.2 or 3

String - characters in single or normal quotes --> "hello" or 'hello'

Boolean - true or false

Nil - A representation of no value. Similar to NULL.

Additionally, not yet covered here, there are four complex data types:

Tables, Functions, Userdata, and Threads

### Module 2-2 Assignment -  Simple Data Type Printing

The assignment from Module 2-2 was to:

1. First print a number representing how many languages you can speak.
2. On a new line, print a string that represents my favorite movie.
3. On a new line, print a boolean that represents whether or not I ate breakfast this morning.
4. Finally, on a new line, print nil to the output terminal.
   
My completed assignment for Module 2-2 is in [module-2-2-simple-data-type-printing.lua](https://github.com/julch94/learning-lua/blob/main/Module2/module-2-2-simple-data-type-printing.lua). Running the script yields this result:

![image](https://github.com/julch94/learning-lua/assets/74890109/768edb01-bd00-4d78-a479-4ce45f47cd81)

### Module 2-3 Number and String Syntax

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

### Module 2-3 Assignment -  Using the type() Function

The assignment for Module 2-3 was as follows:

  1. Pick a number and use type() to print the type of the number picked.
  2. Next, add quote around the number and print the type again.
  3. On a new line, use the type() function to print the type of the value true.
  4. Next, add qoutes around true and check the type again.

The script [module-2-3-using-type-function.lua](https://github.com/julch94/learning-lua/blob/main/Module2/module-2-3-using-type-function.lua) was created to complete this assignment and the results are below:

![image](https://github.com/julch94/learning-lua/assets/74890109/58de7df1-f870-4677-8d5f-e368ef613269)

### Module 2-4 - Arithmetic Operators

Module 2-4 covers calculating with arithmetic operators. 

*    Addition - x+y - adds two numbers
*    Subtraction - x-y - subtracts two numbers
*    Multiplication - x*y - multiplies two numbers
*    Division - x/y - divides two numbers
*    Exponential - x^y - takes the exponent of two numbers
*    Remainder/Modulo/Modulus - x%y - gives the remaining leftover after dividing two numbers
*    Negation - -x - reverse the sign value of a number
  
An expression uses operators to transform data and evaluates to a new value. For example, the express 2+3 evaulates to 5.

### Module 2-4 Assignment - Shopping Calculations

Module 2-4's assignment:

1. Ji-Eun's shopping cart has two items - one priced at $10.95 and the other at $20.99. Add the prices together and print her total.
2. Luca's ice scream store has 300 ice cream cones. Luca sells 298 ice cream cones. Subtract the number of ice cream cones and print the number remaining to share with his friend Bruno.
3. Billy charges $50 per cowboy hat and sold 49. Multiply and print how much money he made.
4. Sage is holding a pizza party and bought 8 pizzas for $96. Divide and print how much one pizza costs.
5. Cairo promised Layla his leftover marbles. He has 7 he must divide among 2 other friends. Determine and print how many marbles are left over for Layla.

The codecademy built-in compiler wanted precisely followed instructions but I wanted to actually use variables for these values and then evaluate those variables to print the results. The script [module-2-4-operators.lua](https://github.com/julch94/learning-lua/blob/main/Module2/module-2-4-operators.lua) was created to complete this assignment and the results are below:

![image](https://github.com/julch94/learning-lua/assets/74890109/a53cb368-a615-4aac-b90c-ad8f5bbe5e8a)

### Module 2-5 - Review of Data Types and Operators

Module 2-5 was a review of data types and operators. 

* Basic Data Types: Number, String, Nil, Boolean
* String: "this" or 'this'
* Operators: +, -, *, /, ^, %, - (first "-" is subtraction, second is negation)
* Use the type() function to determine a value's type when needed

### Module 2-5 - Practice Challenges with Data Types and Operators

Additionally, some practice challenges were provided:

1. Use print() to print a value of each basic data type that you don't already have in your code
2. Modify the print() statements you made by adding arithmetic operators or changing the the data type by converting them into the string data type.
3. Output the type of each of your values after you made modifications.

The script [module-2-5-reviewing-data-types-and-operators.lua](https://github.com/julch94/learning-lua/blob/main/Module2/module-2-5-reviewing-data-types-and-operators.lua) was created to complete these challenges and the results are below:

![image](https://github.com/julch94/learning-lua/assets/74890109/3e00d6fd-5de3-4b5d-a385-ecacde7e048f)

### Module 2-6 - Introduction to Variables

Module 2-6 covers the introduction to variables.

Variables are named containers in memory that allow us to store, retrieve, and manipulate data - similar to a labeled box. The introduction states that this lesson will teach the ins outs of variables by delcaring them, working with the data they contain, and manipulating them with arithmetic operators, reassignment, and concatenation.

### Module 2-6 Assignment - Variable and Data Examples

The assignment for Module 2-6 was to simply think of programs I've used before and what sort of data they would store as variables.

My answer: A League of Legends ability cooldown as a number. This ability's cooldown timer could be reduced by level, skill points in the ability, items with ability haste, runes with ability haste, interactions with other abilities, and likely more. 

### Module 2-7 - Defining Variables

Module 2-7 covers defining variables. 

Basic syntax is: name = value. Example: player1Score = 0. Rather than doing print(0) we could now do print(player1Score) which would also return 0 for now, or whatever player1Score is later reassigned to. Variable names should be succinct but descriptive so that they are easily understood. myValue is not helpful but player1Score is.

### Module 2-7 Assignment - High Score
The assignment for Module 2-7 was as follows:

1. Declare a variable named player1Name and assign the string value "Kamala" to it.
2. Declare a variable named player2Name and assign the string value "Bruno" to it.
3. Declare a variable named highestScore and assign it nil - there is no high score yet.

The assignment didn't print any of the values so I have simply linked the script [module-2-7-defining-variables.lua](https://github.com/julch94/learning-lua/blob/main/Module2/module-2-7-defining-variables.lua) with no shown results.

### Module 2-8 - Using type() with Variables

Module 2-8 covers uing type() with variables

The module starts out with a pop-quiz to recall each data type and its definition. My answers are below:

1. Number. My answer: Positive, negative, and/or decimal value using number characters.
2. String. My answer: Characters contained with matching single or double quotes to be represented as text.
3. Boolean. My answer: TRUE or FALSE binary value.
4. Nil. My answer: Similar to NULL - it is the representation of no value.

The actual answers were very close to mine, with a string specifying it's a sequence of individual characters inside the quotes and can be a collection of letter, spaces, numbers, or symbols and Nil stating it's the "representation for the absence of value"

After this review, the module states that variables can store any type of data and that we can use type() on those variables. That's actually how I tackled most of the problems in the previous modules. 

### Module 2-8 Assignment - Printing Variables and their Type

The assignment for Module 2-8 was as follows:

1. Create a variable called userName and assign it any string value.
2. Use print() and type() to check the data type of the variable userName.
3. Create a variable called age and assign it a number with any age.
4. Use print() and type() to check the data type of the variable age.

This script [module-2-8-using-type-with-variables.lua](https://github.com/julch94/learning-lua/blob/main/Module2/module-2-8-using-type-with-variables.lua) stores the userName and age in variables and then prints out what type of variable they are. The results are below:

![image](https://github.com/julch94/learning-lua/assets/74890109/4ec5113a-836d-495a-9e2f-0c3d42848c7c)

### Module 2-9 - Variable Reassignment

Module 2-9 covers variable reassigment

Variables can be reassigned with values or other variables. For example: legendaryPlayerSocre = 616 and highestScore = legendaryPlayerScore. Lua variables do NOT have a type - you can reassign a value of any data type to a variable. For example, you may have a variable score = 10 that gets increased by 1 later in the script. Changing score's value to "ten" or something like that will break the addition when trying to add a number to a string ("ten" + 1).

### Module 2-9 Assignment - High Score and Name
The assignment for Module 2-9 was as follows:

1. Enshrine the highestScorerName as "Kamala" below the line stating highestScore = 25.
2. Output highestScoreName with print().
3. Bruno takes the highest score. Add a new line that reassigns the highestScore to 26 and highestScorerName to "Bruno" without deleting the first lines.
4. Output the highestScorerName and highestScore at the end of the script using print()

This script [module-2-9-variable-reassignment.lua](https://github.com/julch94/learning-lua/blob/main/Module2/module-2-9-variable-reassignment.lua) was created to complete the assignment and the results are below:

![image](https://github.com/julch94/learning-lua/assets/74890109/0d95fea1-8542-4211-8eb4-4ea022124233)

### Module 2-10 - Using Arithmetic Operators with Variables

Module 2-10 covers using arithmetic operators with variables

I kind of already knocked this one out during an earlier section as I thought that was the intent. The lesson goes on to review the basic arithmetic operators and using them to reassign the value of a variable - for example: myVariable = myVariable + 1. 

### Module 2-10 Assignment - Modifying Scores
The assignment for Module 2-10 was as follows:

1. Kamala scores 1 point. Add 1 to the player1Score variable and print it to output the modified value.
2. Bruno loses 2 points. Subtract 2 from the player2Score variable and print the output.
3. Bruno gets a point multiplier. Multiply the player2Score variable by 1.5 and print the output.

This script [module-2-10-variables-with-arithmetic-operators.lua](https://github.com/julch94/learning-lua/blob/main/Module2/module-2-10-variables-with-arithmetic-operators.lua) was created to complete the assignment and the results are below:

![image](https://github.com/julch94/learning-lua/assets/74890109/c24e9d95-f326-4e5b-ad4b-26b4a04d0836)

### Module 2-11 - Concatenation

Module 2-11 covers concatenation

Concatenation is the act of joining values together. Lua does this using the concatenation operator (..). For example:

~~~
print("This is a " .. "test")
~~~

Which will just print as "This is a test" 

We can also do this with different data types. For example, the following script will output "My name is Nick"

~~~
myName = "Nick"
print("My name is " .. myName)
~~~

### Module 2-11 Assignment - Printing a Player's Name With their Score

The assignment for Module 2-11 was as follows:

1. Combine "The first player is: " with the variable player1Name and print the output.
2. Combine the string "The second player is: " with player2Name and print the output.
3. Under the first print statement, reassign the player2Name variable to Nakia and see the new output.

This script [module-2-11-concatenation.lua](https://github.com/julch94/learning-lua/blob/main/Module2/module-2-11-concatenation.lua) was created to complete the assignment and the results are below:

![image](https://github.com/julch94/learning-lua/assets/74890109/89442dd9-7e91-492c-bbf0-b2c72323cd8d)

### Module 2-12 - Type Coercion in Concatenation and Arithmetic Operations

Module 2-12 covers type coercion in concatenation and arithmetic operations

Essentially, Lua is smart and uses automatic type coercion to handle situations like using concatenation to print a string and then a number value. It works the other way too. You can say print("50" + 2) and the output will be 52 as "50" is coerced to 50. An interesting cexample of why this requires caution is using concatenation to print values as both numbers and strings. print("50" + 4 .. 2) will output 542 as 50 and 4 are added together and then concatenated with the (50 + 4 --> 54 .. 2 --> 542).

Lua uses tonumber() and tostring() to help clear things up whe mixing data types. For example:

~~~
numApples = 5
print("I have this many apples: " ..
tostring(numApples))
~~~

This will output "I have this many apples: 5" with 5 actually being a string being read into the print statement.

### Module 2-12 Assignment - Testing Concatenation and Coercion

The assignment for Module 2-12 was as follows:

1. Use string concatenation to combine "Player 1 Score: " and player1Score - print the output.
2. Repeat with Player 2.
3. Verify the type of your combined values by adding the type() function to the outputs of the above.
4. Add player1Score and player2Score and print it.
5. Use the concatenation operator to combine player1Score and player2Score and print it. How does it differ from using the addition operator?
   
This script [module-2-12-type-coercion.lua](https://github.com/julch94/learning-lua/blob/main/Module2/module-2-12-type-coercion.lua) was created to complete the assignment and the results are below. Additionally, the answer to #5's question is that it doesn't add the numerical value - it sticks both numbers together so 13 and 15 become 1315.

![image](https://github.com/julch94/learning-lua/assets/74890109/c5f69635-f9e8-41da-b3c9-d6b36b853ad4)

### Module 2-13 - Review of Variables

Module 2-13 covers the review of variables, what they are, how they relate to data types, how to define, reassign, concatenate, and coerce them. 

### Module 2-13 - Practice Challenges with Variables, Reassignment, Concatenation, Arithmetic Operators, and Coercion
The review also contains an some challenges as follows:

1. Think of a program you'd want to make - what type of data should the progam store?
2. Create at least three variables and assign values to them.
3. Display these variables with concatenation to describe what they are.
4. For any number data, update your variables with arithmetic operators.
5. Explore what happens when you concatenate variables you have with different data types.

I've included my answers to these questions and tackled the code portions of these challenges in this script [module-2-13-variable-review.lua](https://github.com/julch94/learning-lua/blob/main/Module2/module-2-13-variable-review.lua) The results are below:

![image](https://github.com/julch94/learning-lua/assets/74890109/1591ec85-a300-4598-b847-ab8baf164386)

## Module 3 - Conditionals & Logic

[Module 3 - Conditionals & Logic](https://www.codecademy.com/learn/learn-lua/modules/conditionals-logic/cheatsheet)

### Module 3-1 - Intro to Control Structures

Module 3-1 covers the intro to control structures

This module describes a control structure as a series of decisions/checks to determine how to proceed. Conditional structures are of conditional statements: If a condition is met, then do X. These can be used to cover complex decision trees. Variables and logical operators are used to evaluate these conditional statements within the control structure.

Following the example provided by the module, today is not a weekday so I get up at 6:30. It is raining  so I will wear a raincoat.k

### Module 3-2 - if Statement

Module 3-2 covers the if statement

if statements start the foundation of every control structure. An if statement requires a boolean expression (evaluates to true or false) and a code block (code that is executed if boolean expression is true, and is skipped if said expression is false). 

The syntax for an if statement (and a preceding initial value of the variable used) looks like this:

~~~
isExample = true
if isExample then
    print("This is an example.")
end
~~~

The code between then and end should be indented for readability.

### Module 3-2 Assignment - Is It Sunny?

The assignment for Module 3-2 is as follows:

1. Adding onto the example, add an if statement with isSunny as the condition, and print a statement when isSunny is true. Note which print statements are executed.
2. Add a print statement after the if statement: "Good to know! Thanks!" and then change the value of isSunny from true to false when it's initialized. Run again and note what's printed.

For question 1, all of the statements were printed because isSunny evaluated to true. On question 2, however, isSunny was false so "It is sunny outside!" did NOT print but the print statements before and after the if statement did. The results of the script [module-3-2-conditionals-and-logic.lua](https://github.com/julch94/learning-lua/blob/main/Module3/module-3-2-conditionals-and-logic.lua) are below.

![image](https://github.com/julch94/learning-lua/assets/74890109/6a8640ef-d659-4682-bf18-d847a9e7ea66)

### Module 3-3 - Comparison Operators

Module 3-3 covers comparison operators

Comparison operators allow us to get more advanced control than basic boolean expressions. For example:

*    x > y returns true if x is greater than y
*    x >= y returns true if x is greater than or equal to y
*    x < y returns true if x is less than y
*    x <= y returns true if x is less than or equal to y
*    x == y returns true if x is equal to y
*    x ~= y returns true if x does NOT equal y
*    Otherwise, the above expressions return FALSE

For example:

~~~
qAbilityManaCost = 25
currentManaAvailable = 50
if qabilityManaCost <= currentManaAvailable then
    print("You can cast Q!")
end
~~~

### Module 3-3 Assignment - Print Larger Value
The assignment for this module was to create a program that initialized numerical values for A and B and then evaluated and printed which one was larger. The results of the script [module-3-3-comparison-operators.lua](https://github.com/julch94/learning-lua/blob/main/Module3/module-3-3-comparison-operators.lua) are below.

![image](https://github.com/julch94/learning-lua/assets/74890109/fa72b6ed-af65-4fd6-ae46-fbb1e9821213)

### Module 3-4 - else Statement

Module 3-4 covers the else statement

The summary of the else statement is if we have a condition to check and want to do something different if its false - this prevents the need for an if statement for each and every case. For example:

~~~
isAlive = true
if isAlive then
    print("Current HP = ")
else
    print("YOU ARE DEAD.")
end
~~~

The key note here is that the else is paired with the if and is closed by the same end keyword.

### Module 3-4 Assignment - Grading an Assignment

The assignment from module 3-4 was to create a program for grading an assignment based on a score. The results of the script [module-3-4-else-statement.lua](https://github.com/julch94/learning-lua/blob/main/Module3/module-3-4-else-statement.lua) are below.

![image](https://github.com/julch94/learning-lua/assets/74890109/5d0ccb1a-621f-4129-b2b0-f7172cb81ee3)

### Module 3-5 elseif Statement

Module 3-5 covers the elseif statement

elseif is used when we need to check additional options after an initial check. elseif is setup just like an if statement but still lives within the total codeblock as the original if statement, and that codeblock ends with the end keyword. An elseif statement MUST come after an if statement or another elseif statement. Only the first if or elseif that evalutes to true in a codeblock is executed and the rest are skipped.

### Module 3-5 Assignment - User Score Responses
The assignment for 3-5 was to create a program that prints out a different sentences based on the user's score. The results of the script [module-3-5-elseif-statement.lua](https://github.com/julch94/learning-lua/blob/main/Module3/module-3-5-elseif-statement.lua) are below.

![image](https://github.com/julch94/learning-lua/assets/74890109/fc6b7b40-69bc-4f26-918f-e9360c1dd1ca)

### Module 3-6 - Logical Operators

Module 3-6 covers logical operators

Logical operators can be used to combine conditional statements - for example, if today is Tuesday AND it's after 6 PM, it's time for Taco Tuesday. This is better than a nested set of if statements (if it's Tuesday --> if it's after 6 PM). There are three logical operators: and, or, and not. They are also called boolean operators.

*    x and y - returns true if x and y are true
*    x or y - returns true if x or y are true
*    not x - returns true if x is false
*    Otherwise, these all return false

### Module 3-6 Assignment - Grading Test Scores (Advanced)
The assignment for module 3-6 was to write a program that grades test scores. I added some extra print statements and an else to catch failing scores, and ran through all planned resulting cases. The results of the script [module-3-6-logical-operators.lua](https://github.com/julch94/learning-lua/blob/main/Module3/module-3-6-logical-operators.lua) are below.

![image](https://github.com/julch94/learning-lua/assets/74890109/7df4a507-e64a-4ad3-81b9-9b3ce3984140)

### Module 3-7 Order of Operations

Module 3-7 covers order of operations

Lua operators are evaluated in the following order (from top to bottom):
*    ^
*    not
*    *, /
*    +, -
*    <, >, <=, >=, ~=, ==
*    and
*    or

Lua will execute from left to right through a line of code when executing repeated or multiple operators of the same level (like < and >). The example in the module is the if statement:

~~~
score = 50
if not score == 100 then
    print("Score not exactly 100!"
end
~~~

Due to Lua's order of operations, not score will be evaluted first. Lua handles not in front a number as always returning flase so we have 

~~~
score = 50
if false == 100 then
    print("Score not exactly 100!"
end
~~~

100 is not equal to false, so no matter what we won't see our print statement which is a bug. We could use ~= to resolve this easily:

~~~
score = 50
if score ~= 100 then
    print("Score not exactly 100!"
end
~~~

This will work as intended and print our message unless score is equal to 100.

### Module 3-7 Assignment - Guess the Order of Operations

The assignment for module 3-7 was to guess at some order of operations for the following code:

~~~
-- You must be hungry to get food. In addition, you must either have at least $10 or have a friend pay.
isHungry = false
cash = 5
friendIsPaying = true
if isHungry and cash > 10 or friendIsPaying then
  print("We are getting food!")
end
~~~

Because we are not hungry, we should not get food no matter what - regardless of if we have money or a friend to cover our food. However, due to the Lua order of operations, > --> and --> or, we can simplify the if statement to:

isHungry and false or friendIsPaying --> false or friendIsPaying --> true

After running the example, I was correct and we got food - which means our code is buggy.

### Module 3-8 - Changing the Order of Operations

Module 3-8 covers changing the order of operations

Parentheses allow us to control the order the operations in Lua. The part of an expression surrounded in parentheses will execute first before it's used with another expression. For example:

~~~
cash = 5
isHungry = false
friendisPaying = true

if isHungry and (cash > 10 or friendIsPaying) then
    print("We are getting food!"
end
~~~

this simplifies to: isHungry and (false or friendIsPaying) --> isHungry and true --> false. This is correct! We could also rearrange it like so to match the order operations: (cash > 10 or friendIsPaying) and isHungry

Parentheses can also help with readability, even when order of operations don't need to be changed. A good rule of thumb is to use parentheses with logical operator groupings:

~~~
if(cardsInHand > 0) and (ismyTurn or hasInstantSpell) then
    print("Would you like to play a card?")
end
~~~

### Module 3-8 Assignment - T-shirt or Jacket Weather?
The assignment for this module was to create a script that tells the user whether it's t-shirt weather or if they need to wear a jacket based on the temperature, if it's cloudy, and if it's rainy. The script [module-3-8-changing-order-of-operations.lua](https://github.com/julch94/learning-lua/blob/main/Module3/module-3-8-changing-order-of-operations.lua) was created for this and the results are below, which match the expected outputs based on the truth table provided by the module (also below).

![image](https://github.com/julch94/learning-lua/assets/74890109/00f90295-76b9-431d-9cf8-502801052660)

![image](https://github.com/julch94/learning-lua/assets/74890109/0dbf5b19-3fc9-4705-807f-0115cedda298)

### Module 3-9 - Review of Conditionals and Logic

Module 3-9 covers the review of conditionals and logic

A control structure is code that makes a decision based on one or more true / false statements. Conditional statements make up control structures and include if, elseif, and else statements. The first conditional statement to return true breaks out of the code block and the rest will not be checked. A code block is a grouping of code - control structures determine if or when said code will be executed. Boolean expressions are true or false and are used by conditional statements to determine if the code block should be executed. Comparison operators compare values and evaluate to true or false. Logical operators take two boolean variables and evaluate to either true or false. Lua uses an order of operations which can be reassigned using parentheseses. 

## Module 4 - Functions
[Module 4 - Functions](https://www.codecademy.com/learn/learn-lua/modules/functions/cheatsheet)

### Module 4-1 - Introduction to Functions

Module 4-1 covers the introduction to functions

Functions allow for reusable code without having to repeat it in multiple places. print is an example of a built-in Lua function that allows us to print text without having to recreate it each time. Functions are useful for preventing potential errors from copy-pasting code such as having to make minor corrections with major impacts and extremely lengthy code. This module didn't have an assignment but it did ask the question of what are some example repeated processes I do throughout the day. One example is feeding my dog: open the back door --> step outside --> close the back door --> open dog food container --> scoop food --> pour food into dog bowl --> return scoop to container --> close dog food container --> open back door --> walk inside --> close back door

### Module 4-2 - Declearing Functions

Module 4-2 covers declaring functions

Functions are declared like this: function myFunction()

An example of a function is below:
~~~
function getArea()
    length = 10
    width = 5
    area = length * width
    print("The area is " .. area)
end
~~~

### Module 4-2 Assignment - Calculate Shopping Total

The assignment for this module is to write a function for a shopping app that calculates the total when given a subtotal and tax rate. The results of the script [module-4-2-declaring-functions.lua](https://github.com/julch94/learning-lua/blob/main/Module4/module-4-2-declaring-functions.lua) are an empty console as the function is only declared and not called.

### Module 4-3 - Calling a Function

Module 4-3 covers calling a function

Functions are called with their declared name followed by parentheses like so: getArea() - they must also be called AFTER they are declared.

### Module 4-3 Assignment - Calling the Shopping Calculation Function

The assignment for this module has us start with the script from Module 4-2 and add three calls of our function so that the result is printed three times. The results of the script [module-4-3-calling-functions.lua](https://github.com/julch94/learning-lua/blob/main/Module4/module-4-3-calling-functions.lua) are below:

![image](https://github.com/julch94/learning-lua/assets/74890109/db7a32f6-8ccb-4228-92d0-8f2ef0bb1716)

### Module 4-4 - Parameters and Arguments

Module 4-4 covers parameters and arguments

Similar to how we add data inside the parentheses of a print() statement, our functions can take inputs (arguments) and interact with the unassigned variables (until they're called) called parameters. So our function assigns our inputs to the parameters. For example:

~~~
-- Set up our function with a parameter
myFunction(myParameter)
    print(myParameter)
end

myFunction(myArgument) -- this calls our function with an argument
~~~

Functions can have multiple parameters/arguments - they just need to align. By default, lua will use the value nil where our arguments are not covered by parameters.

### Module 4-4 Assignment - Adding Parameters and Arguments to the Shopping Calculation Function
The assignment for this module was to expand on our previous script by adding parameters for subtotal and taxRate and then calling that function with three different sets of arguments. The results of the script [module-4-4-parameters-and-arguments.lua](https://github.com/julch94/learning-lua/blob/main/Module4/module-4-4-parameters-and-arguments.lua) should be 120, 220, and 500, which they are as shown below:

![image](https://github.com/julch94/learning-lua/assets/74890109/dd22db69-18c9-43b8-b3f6-f7992028d809)

### Module 4-5 - Returns

Module 4-5 covers returns

The keyword return allows us to spit out a value when a function is called. It is used from within the the function and allows said value to be used by the rest of the program by assigning the function call to a variable, like so: myVariable = getVariable(arg1)

### Module 4-5 Assignment - Returning the Shopping Total to a Variable

The assignment for this module was to setup our previous script to be able to return the total instead of printing it. Then, the assignment provided some arguments to try printing as well as a finalTotal to sum the previous results to retrieve and print. The results should be 240, 330, and 75, with the finalTotal being 645. The script [module-4-5-returns.lua](https://github.com/julch94/learning-lua/blob/main/Module4/module-4-5-returns.lua) successfully yielded these results as shown below:

![image](https://github.com/julch94/learning-lua/assets/74890109/ad90bbe5-f7a8-48b6-a0b6-6be4bacf19bb)

### Module 4-6 - Functions After Returns

Module 4-6 covers functions after returns

Note: after any return occurs, the rest of the function's code will be skippped. This can be useful when understood as it can replace the need of if and else statements.

### Module 4-6 Assignment - Guess the Print Statements

The assignment for this module was to guess which statements would print from the example script without running it, and then running it to confirm. If input in trickyReturns is true, the following letters should print: a, b. If input is false the following letters should print: a, c, d. Running the script and changing input to true and false confirmed these results. The reason for these results is that the function breaks out after the first time it hits return. The example script is provided below, for reference:

~~~
function trickyReturns(input)
  print("a")
  if input then
    print("b")
    return "foo!"
  end
  print("c")
  if 2+2 == 4 then
    print("d")
    return "boo!"
  end
  print("e")
end

trickyReturns(true)
~~~

### Module 4-7 - Practice with Functions

Module 4-7 covers practice with functions. 

The script [module-4-7-practice-with-functions.lua](https://github.com/julch94/learning-lua/blob/main/Module4/module-4-7-practice-with-functions.lua) succesfully returned the expected values for each practice problem as shown below:

*    square(5) = 25
*    getSmallerValue(5, 10) = 5
*    getSmallerValue(5, 2) = 2
*    convertMilesToFeet(26.2) = 138336
*    getAreaOfRightTriangle(6) = 18

![image](https://github.com/julch94/learning-lua/assets/74890109/ae1cede5-fa99-42aa-89d1-974f5c4eb5b0)

### Module 4-8 - Built-in Lua Functions

Module 4-8 covers built-in Lua functions

*    string function library
    *    example: string.upper() - converts a string to all uper cases
*    math function library
    *    example: math.min() - returns the smaller of two numbers

There are many built-in functions which can be found by browsing through the Lua library at [http://lua-users.org/wiki/TutorialDirectory](http://lua-users.org/wiki/TutorialDirectory).

### Module 4-8 Assignment - string.len()

The assignment for this module was to browse the library for documentation on string.len and then use it to print the length of "Hello there!" in a custom function called printStringLength(). The length should be 12 which as shown in the results of the script [module-4-8-built-in-lua-functions.lua](https://github.com/julch94/learning-lua/blob/main/Module4/module-4-8-built-in-lua-functions.lua) below, was correct.

![image](https://github.com/julch94/learning-lua/assets/74890109/6c5fc65d-af7f-44f0-bf95-1ca71a7c7dbf)

### Module 4-9 - Review of Functions

Module 4-9 covers the review of functions

Functions are important for code-writing efficiency, cleanliness, and clarity. Functions containthe function keyword, a name, parameter(s), the return key word, the end key word, and are called using arguments.

## Conclusion of codecademy Lua intro course

This concludes my very brief introduction course on Lua. I would next like to take a course going over how Lua is able to work closely with C++ applications, as my understanding is that many video games do this. In short, the codecademy course was OK - it wasn't very transparent on what portions of the course were free, but it provided an in-browswer editor and terminal which were convenient for before I got a hang of creating and running Lua scripts on my own machine. I gained a very elemantary understanding of how to go and make some basic scripts with the language, which works well with my existing understanding of other programming languages.

## Some potential resources for learning how to embedd Lua in C++:

[https://www.cs.usfca.edu/~galles/cs420/lecture/LuaLectures/LuaAndC.html](https://www.cs.usfca.edu/~galles/cs420/lecture/LuaLectures/LuaAndC.html)

[https://daley-paley.medium.com/super-simple-example-of-adding-lua-to-c-710730e9528a](https://daley-paley.medium.com/super-simple-example-of-adding-lua-to-c-710730e9528a)

[https://www.youtube.com/watch?v=xrLQ0OXfjaI&list=PLLwK93hM93Z3nhfJyRRWGRXHaXgNX0Itk](https://www.youtube.com/watch?v=xrLQ0OXfjaI&list=PLLwK93hM93Z3nhfJyRRWGRXHaXgNX0Itk)

## Additional Ideas for what's next

Another idea for starting up next instead of jumping into embedding in C++... go and work through the Lua book. Chapter by chapter to get a rough idea of every section.

[https://www.lua.org/pil/contents.html#2](https://www.lua.org/pil/contents.html#2)

OR could go and use the community Lua tutorial: [http://lua-users.org/wiki/TutorialDirectory](http://lua-users.org/wiki/TutorialDirectory)

## Convert Markdown Headers to Links

While putting this README markdown file together I wanted to build a Table of Contents to structure the different resources I learned from and the items within them. I ended up finding an online resource to start with but I knew that this is something Lua was capable of. I was vaguely familiar with regular expressions and knew that Lua's built in string functions would likely be able to get me what I needed. So, with that in mind, I hopped over to ChatGPT to build my own tutorial to teach myself how to build this script. I've created the [markdown-headers-to-links.lua](https://github.com/julch94/learning-lua/blob/main/markdown-headers-to-links.lua) script with fully detailed comments explaining each step of the code.

The [HeadingLinks.txt](https://github.com/julch94/learning-lua/blob/main/HeadingLinks.txt) file contains the results of the above script being run against this README.md file. All future Table of Contents work will use this script to generate the links from the markdown file.
