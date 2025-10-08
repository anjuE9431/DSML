library(class)

# Load dataset
survey <- read.csv("C:/Users/Admin/Desktop/R_pros/survey.csv")

# Training features
survey1 <- survey[, 1:2]

# Labels (factor)
survey$z <- as.factor(survey$Z)

# Test student
student <- data.frame(X = 5, Y = 7)
colnames(student) <- colnames(survey1)

# Run k-NN
pred <- knn(train = survey1, test = student, cl = survey$Z, k = 3)

cat("Predicted Classification of Student:\n")
print(pred)
