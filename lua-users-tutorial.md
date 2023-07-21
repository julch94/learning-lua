# lua-users-tutorial

Placeholder for notes and scripts while working through the Lua-Users Tutorial

# Table of Contents

- [Lua Types](#lua-types)
- [Assignment](#assignment)
- [Numbers](#numbers)
- [Strings](#strings)
- [Operators](#operators)
- [Control Structure](#control-structure)
- [Tables](#tables)
- [Functions](#functions)
- [Scope](#scope)
- [Metamethods](#metamethods)
- [Environments](#environments)
- [Modules](#modules)
- [Object Orientation](#object-orientation)
- [Patterns](#patterns)
- [Coroutines](#coroutines)
- [Iterators](#iterators)
- [Garbage Collection](#garbage-collection)
- [Weak Tables](#weak-tables)
- [Lua Standard Libraries](#lua-standard-libraries)
  - [Core Functions](#core-functions)
  - [Math Library](#math-library)
  - [String Library](#string-library)
  - [Table Library](#table-library)
  - [OS Library](#os-library)
  - [IO Library](#io-library)
  - [Module Library](#module-library)
  - [Debug Library](#debug-library)
  - [Coroutine Library](#coroutine-library)
- [For](#for)
- [Advanced Concepts](#advanced-concepts)
  - [Threads](#threads)
  - [Optimisation](#optimisation)
  - [Inheritance](#inheritance)

## Lua Types

Lua types include:

	* Numbers - myNumber = 2
	* Strings - myString = "hello"
	* Boolean - myBool = true
	* Tables - myTable = {}
	* Functions - myFunction() end
	* nil values - myNil = nil
	* Userdata - see other section
	* Thread - see other section

My previous studying of the Lua language had plenty of detail on all of the Lua types outside of Tables, Userdata, and Thread. 

There is a specific tutorial for tables so this section doesn't have a ton of information. Tables basically make up any type of collection that you would normally see represented with several types in other languages. Tables are created using a pair of curly bracket like so:

~~~
myTable = {}
~~~

There is a specific tutorial for userdata so this section doesn't have a ton of information. Userdata is described as foreign objects, such as those implemented from C and C++ programs. The summary here is that Lua can simply pass those values around but not actually change them. Metamethods (explained later) can be used to have userdata act similarly to tables.

The Coroutines tutorial goes into detail on threads, however, they are summarized in this section as representations of independent (cooperative) threads of execution.

This section also goes over Lua having dynamic typing (types are checked while a program is running).

The last part of this section is regarding being able to query the type of a particular object. For example, if x = "dog" and we type print(x, type(x)), this will print

	dog   string

## Assignment

An assignment is the setting of a variable's value, such as length = 5. Lua also allows us to do multiple assignments in a single statements by separating them with commas. For example, we can set length = 5 and width = 10 with a single statement like this:

	length, width = 5, 10

Multiple assignments can be done with as many variables as desired and they do NOT have to be the same type:

 	skillName, baseCooldown, baseDamage = "Rooster Man", 5, 50

Assignments can also be expressions such as timeRemaining = timeRemaining - 1. It's important to note that the order of multiple assignments is not defined so a variable should not be assigned twice in the same line like:

	-- Don't do this:
 	myBadVar, myBadVar = 4, 12 -- myBadVar could end up being 4 or 12

If expressions are used in a multipe assignment statement, all expressions are evaluated prior to the assignments. For example:

	timeRemaining = 5
	timeRemaining, cooldown = timeRemaining-1, timeRemaining

 This would evaluate to:

 	timeRemaining, cooldown = 4, 5

Values an also be swapped around as assignments are treated as simultaneous. Rather than needing to use placeholder variables, we can do:

	team1, team2 = "Offense", "Defense"
 	team1, team2 = team2, team1

This will swap the values of team1 and team2. 

Lua handles mismatched list sizes as follows:

	-- variable list < value list
	var1, var2, = "test1", "test2", "test3" -- extra values ("test3") ignored

	-- variable list > value list
	var1, var2, var3 = "test1", "test2" -- nil value assigned to extra variables (var3)	

## Numbers

Lua, by default, only supports double floating point floating point numbers, however, Lua can be recompiled to support single precision floating point numbers, as well. The key note with this is that numbers may have rounding errors, so using the == operator is unwise with numbers. With this, rounding error stack-up should be minded unless the numbers are integers and less than 2^53.

Numbers use basic operators ( = 1 + 2  will result in 3) and can also be represented using exponents such as 1.23E4 or 1.23e4.

An example of using operators with numbers could be to print the area of a rectangle:

	width = 6
 	length = 8
  	area  width * length
   	print(area) -- will print 48

Lua also has a math library with many common math functions including:

	math.abs     math.acos    math.asin       math.atan    math.atan2
	math.ceil    math.cos     math.cosh       math.deg     math.exp
	math.floor   math.fmod    math.frexp      math.ldexp   math.log
	math.log10   math.max     math.min        math.modf    math.pow
	math.rad     math.random  math.randomseed math.sin     math.sinh
	math.sqrt    math.tan     math.tanh

Strings can also be converted to numbers using the tonumber() function whose argument is a string and returns the number type version of that value. 

	x = tonumber("55") + 45
 	print(x) -- will print 100

However, Lua does attempt to do this automatically using coercion so 100 + "5" should return 105 automatically. Take special consideration when using automatic coercion as it does not work when used with comparison operators (55 == "55" will return false). There are also potential performance impacts when coercion is used too much so they should be kept out of loops.

## Strings

Lua has one type of text - strings. Strings are enclosed in single or double quotes or double square brackets like so:

 	"string"
  	'string'
   	[[string]]

These different formats are convenient when you need to use one of these characters in a string.

Lua can also handle escape sequences using \ for general escape, \n for a new line, and \t for a tab. Note that these do NOT work when using double brackets for your string. 

Double bracket strings can be used for strings that cover multiple lines and for nesting quotes (though this requires at least one set of = in the outer-most brackets).

	-- multiline quote example
 	[[This is an example of 
  	a string that covers
   	multiple lines.]]

    	-- nested quote example
     	[=[first string [[second string]] third string]=]

There are more intricacies with nested quotes though they don't seem too useful to spend too much time playing with for now.

String concatenation is done using the .. operator

	myString = "hello" .. "world"	-- returns "hello world"

This also works with numbers using automatic coercion. String concatenation may use a large amount of memory or suffers from slow calculations. This tradeoff must be considered when done in large batches.

Lua also has a string library which is expanded on in the String Library tutorial. The string.find() function is especially common and handy.

Just like numbers, strings use coercion automatically as needed, for example:

	print("I am " .. 28 " years old") -- this will print "I am 28 years old"

 This has some built-in assumptions with no control. A function from the string library, string.format() can be used if needed:

 	string.format("%.2f", 3.141592654) -- returns 3.14 (only the first 2 digits after the decimal ponit)

## Operators

Operators in Lua can be categorized as follows:

	- Arithmetic Operators
 		+, -, *, /, %, ^
   	- Relational operators
    		==, ~=, >, <, <=, >=
      		Coercion does not work with these
      	- Logical Operators
       		and, or, not
	 	Note that anything not nil or false is true, including 0.
	- Ternary Operators
 		Not built into Lua but can be worked around using and and or:
   			myValue = myCondition and valueWhenTrue or valueWhenFalse;
      			-- interpreted as myValue = (myCondition and valueWhenTrue) or valueWhenFalse;

  There are more intricacies when working with different types and evaluating using operators, however, these special applications are clearly documented in the Lua official documentation.	

## Control Structure

## Tables

## Functions

## Scope

## Metamethods

## Environments

## Modules

## Object Orientation

## Patterns

## Coroutines

## Iterators

## Garbage Collection

## Weak Tables

## Lua Standard Libraries

### Core Functions
	
### Math Library
	
### String Library
	
### Table Library
	
### OS Library
	
### IO Library
	
### Module Library
	
### Debug Library
	
### Coroutine Library
	
## For

## Advanced Concepts

### Threads
	
### Optimisation
	
### Inheritance
