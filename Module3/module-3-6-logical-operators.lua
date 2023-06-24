-- Module 3-6
-- module-3-6-logical-operators.lua

-- score = 100, hasFreePass = true

score = 100
hasFreePass = true

print("Score = " .. score)
print("Has free pass = " .. tostring(hasFreePass))
print()

if score == 100 or hasFreePass then
  print("You got an A+")
elseif score < 100 and score >= 70 then
  print("You passed")
else
  print("You failed ")
end

print()

-- score = 80, hasFreePass = false

score = 80
hasFreePass = false

print("Score = " .. score)
print("Has free pass = " .. tostring(hasFreePass))
print()

if score == 100 or hasFreePass then
  print("You got an A+")
elseif score < 100 and score >= 70 then
  print("You passed")
else
  print("You failed ")
end

print()

-- score = 60, hasFreePass = true

score = 60
hasFreePass = true

print("Score = " .. score)
print("Has free pass = " .. tostring(hasFreePass))
print()

if score == 100 or hasFreePass then
  print("You got an A+")
elseif score < 100 and score >= 70 then
  print("You passed")
else
  print("You failed ")
end

print()

-- score = 65, hasFreePass = false

score = 65
hasFreePass = false

print("Score = " .. score)
print("Has free pass = " .. tostring(hasFreePass))
print()

if score == 100 or hasFreePass then
  print("You got an A+")
elseif score < 100 and score >= 70 then
  print("You passed")
else
  print("You failed ")
end

print()