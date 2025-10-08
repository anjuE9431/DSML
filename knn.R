food <- read.csv("C:/Users/Admin/Desktop/R_pros/food.csv")

tomato <- data.frame(Ingredient = "tomato", Sweetness = 6, Crunchiness = 4)

food1 <- food[, 2:3]
tomato1 <- tomato[, 2:3]

food$FoodType <- as.factor(food$FoodType)

# Pick ONE input method
k <- as.numeric(readline(prompt = "Enter the value of k:"))

library(class)
pred <- knn(train = food1, test = tomato1, cl = food$FoodType, k = k)

cat("Predicted Food Type of Tomato:\n")
print(pred)
