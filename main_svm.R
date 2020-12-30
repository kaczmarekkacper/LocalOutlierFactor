# Wczytanie danych
library(R.matlab)
MuskData = readMat('./Data/musk.mat')
IonosphereData = readMat('./Data/ionosphere.mat')

dataset = MuskData

# svm

df = data.frame(dataset)
df$y = as.integer(df$y)

x <- subset(df, select = -y)
y <- df$y

model <- svm(x, y, type='C-classification') 

# test with train data
pred <- predict(model, x)
# Check accuracy:
print(table(pred, y))