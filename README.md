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

Module 2-6 covers the introduction to variables.

Variables are named containers in memory that allow us to store, retrieve, and manipulate data - similar to a labeled box. The introduction states that this lesson will teach the ins outs of variables by delcaring them, working with the data they contain, and manipulating them with arithmetic operators, reassignment, and concatenation.

The assignment for Module 2-6 was to simply think of programs I've used before and what sort of data they would store as variables.

My answer: A League of Legends ability cooldown as a number. This ability's cooldown timer could be reduced by level, skill points in the ability, items with ability haste, runes with ability haste, interactions with other abilities, and likely more. 

Module 2-7 covers defining variables. 

Basic syntax is: name = value. Example: player1Score = 0. Rather than doing print(0) we could now do print(player1Score) which would also return 0 for now, or whatever player1Score is later reassigned to. Variable names should be succinct but descriptive so that they are easily understood. myValue is not helpful but player1Score is.

The assignment for Module 2-7 was as follows:

1. Declare a variable named player1Name and assign the string value "Kamala" to it.
2. Declare a variable named player2Name and assign the string value "Bruno" to it.
3. Declare a variable named highestScore and assign it nil - there is no high score yet.

The assignment didn't print any of the values so I have simply linked the script [module-2-7-defining-variables.lua](https://github.com/julch94/learning-lua/blob/main/Module2/module-2-7-defining-variables.lua) with no shown results.

Module 2-8 covers uing type() with variables

The module starts out with a pop-quiz to recall each data type and its definition. My answers are below:

1. Number. My answer: Positive, negative, and/or decimal value using number characters.
2. String. My answer: Characters contained with matching single or double quotes to be represented as text.
3. Boolean. My answer: TRUE or FALSE binary value.
4. Nil. My answer: Similar to NULL - it is the representation of no value.

The actual answers were very close to mine, with a string specifying it's a sequence of individual characters inside the quotes and can be a collection of letter, spaces, numbers, or symbols and Nil stating it's the "representation for the absence of value"

After this review, the module states that variables can store any type of data and that we can use type() on those variables. That's actually how I tackled most of the problems in the previous modules. 

The assignment for Module 2-8 was as follows:

1. Create a variable called userName and assign it any string value.
2. Use print() and type() to check the data type of the variable userName.
3. Create a variable called age and assign it a number with any age.
4. Use print() and type() to check the data type of the variable age.

This script [module-2-8-using-type-with-variables.lua](https://github.com/julch94/learning-lua/blob/main/Module2/module-2-8-using-type-with-variables.lua) stores the userName and age in variables and then prints out what type of variable they are. The results are below:

![image](https://github.com/julch94/learning-lua/assets/74890109/4ec5113a-836d-495a-9e2f-0c3d42848c7c)


Module 2-9 covers variable reassigment

Variables can be reassigned with values or other variables. For example: legendaryPlayerSocre = 616 and highestScore = legendaryPlayerScore. Lua variables do NOT have a type - you can reassign a value of any data type to a variable. For example, you may have a variable score = 10 that gets increased by 1 later in the script. Changing score's value to "ten" or something like that will break the addition when trying to add a number to a string ("ten" + 1).

The assignment for Module 2-9 was as follows:

1. Enshrine the highestScorerName as "Kamala" below the line stating highestScore = 25.
2. Output highestScoreName with print().
3. Bruno takes the highest score. Add a new line that reassigns the highestScore to 26 and highestScorerName to "Bruno" without deleting the first lines.
4. Output the highestScorerName and highestScore at the end of the script using print()

This script [module-2-9-variable-reassignment.lua](https://github.com/julch94/learning-lua/blob/main/Module2/module-2-9-variable-reassignment.lua) was created to complete the assignment and the results are below:

![image](https://github.com/julch94/learning-lua/assets/74890109/0d95fea1-8542-4211-8eb4-4ea022124233)

Module 2-10 covers using arithmetic operators with variables

I kind of already knocked this one out during an earlier section as I thought that was the intent. The lesson goes on to review the basic arithmetic operators and using them to reassign the value of a variable - for example: myVariable = myVariable + 1. 

The assignment for Module 2-10 was as follows:

1. Kamala scores 1 point. Add 1 to the player1Score variable and print it to output the modified value.
2. Bruno loses 2 points. Subtract 2 from the player2Score variable and print the output.
3. Bruno gets a point multiplier. Multiply the player2Score variable by 1.5 and print the output.

This script [module-2-10-variables-with-arithmetic-operators.lua](https://github.com/julch94/learning-lua/blob/main/Module2/module-2-10-variables-with-arithmetic-operators.lua) was created to complete the assignment and the results are below:

![image](https://github.com/julch94/learning-lua/assets/74890109/c24e9d95-f326-4e5b-ad4b-26b4a04d0836)

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

The assignment for Module 2-11 was as follows:

1. Combine "The first player is: " with the variable player1Name and print the output.
2. Combine the string "The second player is: " with player2Name and print the output.
3. Under the first print statement, reassign the player2Name variable to Nakia and see the new output.

This script [module-2-11-concatenation.lua](https://github.com/julch94/learning-lua/blob/main/Module2/module-2-11-concatenation.lua) was created to complete the assignment and the results are below:

![image](https://github.com/julch94/learning-lua/assets/74890109/89442dd9-7e91-492c-bbf0-b2c72323cd8d)

Module 2-12 covers type coercion in concatenation and arithmetic operations

Essentially, Lua is smart and uses automatic type coercion to handle situations like using concatenation to print a string and then a number value. It works the other way too. You can say print("50" + 2) and the output will be 52 as "50" is coerced to 50. An interesting cexample of why this requires caution is using concatenation to print values as both numbers and strings. print("50" + 4 .. 2) will output 542 as 50 and 4 are added together and then concatenated with the (50 + 4 --> 54 .. 2 --> 542).

Lua uses tonumber() and tostring() to help clear things up whe mixing data types. For example:

~~~
numApples = 5
print("I have this many apples: " ..
tostring(numApples))
~~~

This will output "I have this many apples: 5" with 5 actually being a string being read into the print statement.

The assignment for Module 2-12 was as follows:

1. Use string concatenation to combine "Plyer 1 Score: " and player1Score - print the output.
2. Repeat with Player 2.
3. Verify the type of your combined values by adding the type() function to the outputs of the above.
4. Add player1Score and player2Score and print it.
5. Use the concatenation operator to combine player1Score and player2score and print it. How does it differ from using the addition operator?
   
This script [module-2-12-type-coercion.lua](https://github.com/julch94/learning-lua/blob/main/Module2/module-2-12-type-coercion.lua) was created to complete the assignment and the results are below. Additionally, the answer to #5's question is that it doesn't add the numerical value - it sticks both numbers together so 13 and 15 become 1315.

![image](https://github.com/julch94/learning-lua/assets/74890109/c5f69635-f9e8-41da-b3c9-d6b36b853ad4)

Module 2-13 covers the review of variables, what they are, how they relate to data types, how to define, reassign, concatenate, and coerce them. 

The review also contains an some challenges as follows:

1. Think of a program you'd want to make - what type of data should the progam store?
2. Create at least three variables and assign values to them.
3. Display these variables with concatenation to describe what they are.
4. For any number data, update your variables with arithmetic operators.
5. Explore what happens when you concatenate variables you have with different data types.

I've included my answers to these questions and tackled the code portions of these challenges in this script [module-2-13-variable-review.lua](https://github.com/julch94/learning-lua/blob/main/Module2/module-2-13-variable-review.lua) The results are below:

![image](https://github.com/julch94/learning-lua/assets/74890109/1591ec85-a300-4598-b847-ab8baf164386)

## 22 June 2023
Traveled to Disney World - I did some reading ahead on the Codecademy GO app.

## 23 June 2023
[Module 3 - Conditionals & Logic](https://www.codecademy.com/learn/learn-lua/modules/conditionals-logic/cheatsheet)

Module 3-1 covers the intro to control structures

This module describes a control structure as a series of decisions/checks to determine how to proceed. Conditional structures are of conditional statements: If a condition is met, then do X. These can be used to cover complex decision trees. Variables and logical operators are used to evaluate these conditional statements within the control structure.

Following the example provided by the module, today is not a weekday so I get up at 6:30. It is raining  so I will wear a raincoat.k

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

The assignment for Module 3-2 is as follows:

1. Adding onto the example, add an if statement with isSunny as the condition, and print a statement when isSunny is true. Note which print statements are executed.
2. Add a print statement after the if statement: "Good to know! Thanks!" and then change the value of isSunny from true to false when it's initialized. Run again and note what's printed.

For question 1, all of the statements were printed because isSunny evaluated to true. On question 2, however, isSunny was false so "It is sunny outside!" did NOT print but the print statements before and after the if statement did. The results of the script [module-3-2-conditionals-and-logic.lua](https://github.com/julch94/learning-lua/blob/main/Module3/module-3-2-conditionals-and-logic.lua) are below.

![image](https://github.com/julch94/learning-lua/assets/74890109/6a8640ef-d659-4682-bf18-d847a9e7ea66)

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

The assignment for this module was to create a program that initialized numerical values for A and B and then evaluated and printed which one was larger. The results of the script [module-3-3-comparison-operators.lua](https://github.com/julch94/learning-lua/blob/main/Module3/module-3-3-comparison-operators.lua) are below.

![image](https://github.com/julch94/learning-lua/assets/74890109/fa72b6ed-af65-4fd6-ae46-fbb1e9821213)

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

The assignment from module 3-4 was to create a program for grading an assignment based on a score. The results of the script [module-3-4-else-statement.lua](https://github.com/julch94/learning-lua/blob/main/Module3/module-3-4-else-statement.lua) are below.

![image](https://github.com/julch94/learning-lua/assets/74890109/5d0ccb1a-621f-4129-b2b0-f7172cb81ee3)

Module 3-5 covers the elseif statement

elseif is used when we need to check additional options after an initial check. elseif is setup just like an if statement but still lives within the total codeblock as the original if statement, and that codeblock ends with the end keyword. An elseif statement MUST come after an if statement or another elseif statement. Only the first if or elseif that evalutes to true in a codeblock is executed and the rest are skipped.

The assignment for 3-5 was to create a program that prints out a different sentences based on the user's score. The results of the script [module-3-5-elseif-statement.lua](https://github.com/julch94/learning-lua/blob/main/Module3/module-3-5-elseif-statement.lua) are below.

![image](https://github.com/julch94/learning-lua/assets/74890109/fc6b7b40-69bc-4f26-918f-e9360c1dd1ca)


