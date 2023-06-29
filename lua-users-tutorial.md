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

## Numbers

## Strings

## Operators

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