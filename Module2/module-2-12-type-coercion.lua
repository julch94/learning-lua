-- Module 2-12
-- Type Coercion

-- Initial values, don't change these!
player1Score = 13
player2Score = 15

-- Write your code below: 
print("Player 1 Score: " .. player1Score)
print("Player 2 Score: " .. player2Score)

print(type("Player 1 Score: " .. player1Score)) -- correctly returns string
print(type("Player 2 Score: " .. player2Score)) -- correctly returns string

print(player1Score + player2Score) -- adds the value properly, 13+15 = 28

print(player1Score .. player2Score) -- returns the two numbers stuck next to each other, so 1315 here