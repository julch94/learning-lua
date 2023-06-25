-- Module 3-8 assignment
-- module-3-8-changing-order-of-operations.lua

isRaining = true
isCloudy = false
outsideTemp = 65

-- if it's NOT raining and the outside temp is above 80

-- OR

-- if the outside temp is above 70 and it's not cloudy

-- then print it's t-shirt weather

print("isRaining: " .. tostring(isRaining))
print("isCloudy: " .. tostring(isCloudy))
print("outsideTemp: " .. outsideTemp)

if((not isRaining) and (outsideTemp > 80)) or ((outsideTemp > 70) and (not isCloudy)) then
	print("It is T-shirt weather!")
else
	print("Wear a jacket!")
end