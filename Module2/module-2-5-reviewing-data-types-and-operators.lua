-- Module 2-5 Challenges
-- REVIEW - Operators and Data Types

--[[ 
Module 2-4 code had numbers and strings printed.
This means for Module 2-5 first challenge we will print a a Nil and Boolean.
--]]

print("FOR REFERENCE ONLY: MODULE 2-4")
print()

print("Ji-Eun's current cart total:")
-- Discover and print Ji-Eun's current total below using the addition operator
cartItem1 = 10.95
cartItem2 = 20.99
print(cartItem1 + cartItem2)


print("Luca's ice cream inventory:")
-- Discover and print Luca's ice cream inventory below using the subtraction operator
conesInit = 300
conesSold = 298
print(conesInit - conesSold)


print("Today's Net Total for Billy's Hat Store:")
-- Discover and print Billy's revenue below using the multiplication operator
cowboyHatPrice = 60
cowboyHatsSold = 49
print(cowboyHatPrice * cowboyHatsSold)


print("The cost of one of Sage's pizza: ")
-- Discover and print the cost of one pizza below using the division operator
pizzasBought = 8
dollarsSpent = 96
print(dollarsSpent / pizzasBought)


print("Marbles leftover for Layla: ")
-- Discover and print the remainder marble below using the modulo operator
numMarbles = 7
numPeople = 2
print(numMarbles % numPeople)


-- Module 2-5 challenges start here

-- Part 1
print()
print("Part 1 - print a value of each basic data type not already in this code")
print()

print("Is the sky blue?")
skyBlue = true
print(skyBlue)


print("Show me the Nil basic data type")
dataNil = nil
print(dataNil)

-- Part 2
print()
print("Part 2 - Modify the above by adding arithmetic operators or converting the data types to strings")
print()


print("What is the area of a 4\' by 6\' chicken pen?")
length = 4
width = 6
print(length*width)


print("Show me the Nil basic data type")
dataNil = nil
print("dataNil") -- this will now return the string dataNil instead of its value, nil

-- Part 3
print()
print("Part 3 - Output the type of each value")
print()


print("Is the sky blue?")
skyBlue = true
print(type(skyBlue))


print("Show me the Nil basic data type")
dataNil = nil
print(type(dataNil))


print("What is the area of a 4\' by 6\' chicken pen?")
length = 4
width = 6
print(type(length*width))


print("Show me the Nil basic data type")
dataNil = nil
print(type("dataNil")) -- this will now return the string dataNil instead of its value, nil