-- Module 4-7 Assignment
-- module-4-7-practice-with-functions.lua


-- square
function square (x)
  return x*x
end
print(square(5))

-- getSmallerValue
function getSmallerValue(a, b)
  if(a < b) then
    return a
  elseif(b < a) then
    return b
  
  else return nil
  end
end
print(getSmallerValue(5, 10))
print(getSmallerValue(5, 2))

  -- convertMilesToFeet
  function convertMilesToFeet(miles)
  return miles*5280
end
print(convertMilesToFeet(26.2))

-- getAreaOfRightTriangle
function getAreaOfRightTriangle(sideLength)
  return .5 * sideLength * sideLength
end
print(getAreaOfRightTriangle(6))