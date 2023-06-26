-- Module 4-5 Assignment
-- module-4-5-returns.lua

function getShoppingCartTotal(subtotal, taxRate)
  total = subtotal * taxRate
  return total
end

total1 = getShoppingCartTotal(200, 1.2)
total2 = getShoppingCartTotal(300, 1.1)
total3 = getShoppingCartTotal(50, 1.5)
print(total1)
print(total2)
print(total3)

finalTotal = total1 + total2 + total3
print(finalTotal)