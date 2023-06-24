-- Module 3-4 Assignment
-- module-3-4-else-statement.lua

print("80 is the minimum passing score.")
print()

-- Initial Value (pass)
score = 90
print("Your score = " .. score)
if score >= 80 then
  print("You\'ve passed")
else
  print("You did not pass.")
end

-- Testing an exact pass
score = 80
print("Your score = " .. score)
if score >= 80 then
  print("You\'ve passed")
else
  print("You did not pass.")
end

-- Testing a fail
score = 79
print("Your score = " .. score)
if score >= 80 then
  print("You\'ve passed")
else
  print("You did not pass")
end