-- Module 2-13
-- Variables Review

print("1. Think of a program you'd want to make - what type of data should the progam store?")
print()
print("All of them! I think of numbers for damage values, booleans for triggers/states, and strings for descriptive text and more.")
print("---")

print("2. Create at least three variables and assign values to them.")
print()
smiteReady = true
wAbility = "Iron Will"
qCooldown = 4
print("DONE")
print("---")

print("3. Display these variables with concatenation to describe what they are.")
print()
-- wAbility
print("wAbility is a " .. 
type(wAbility) .. 
" with value " ..
wAbility)

--qCooldown
print()
print("qCooldown is a " .. 
type(qCooldown) .. 
" with value " ..
qCooldown)

--smiteReady
print()
print("smiteReady is a " .. 
type(smiteReady) .. 
" with value " ..
tostring(smiteReady)) -- tostring() required as bool will not concatenate properly and throws error.
print("---")

print("4. For any number data, update your variables with arithmetic operators.")
print()
qCooldown = qCooldown - 2
print("Updated qCooldown to lower the cooldown by 2 seconds - the new cooldown is: " .. qCooldown)

print("---")

print("5. Explore what happens when you concatenate variables you have with different data types.")
print()
print("During #3 I use a descriptive string, variables with multiple data types, and then their value. What I found is that Booleans cannot display its value when concatenated to a string - so to fix this, we use tostring()")
print("---")