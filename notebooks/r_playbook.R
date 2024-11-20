
if (!require("randomForest")) {
  install.packages("randomForest")
}
library(randomForest)


trainx <- read.csv("Data/train.csv")

# remove species column
trainx <- trainx[,-11]

rf_model <- randomForest(trainx[,3:26], trainx[,2], ntree=100, importance=TRUE)
importance(rf_model)
varImpPlot(rf_model)
top_n_features <- importance(rf_model, type=1)



################

feature_names <- c(
  "NumHBondDonors", 
  "NumOfC", 
  "ketone", 
  "peroxide", 
  "NumOfO", 
  "C.C..non.aromatic.", 
  "NumOfConfUsed", 
  "NumOfConf", 
  "carbonylperoxynitrate", 
  "MW", 
  "ether..alicyclic.", 
  "aldehyde", 
  "carboxylic.acid", 
  "NumOfAtoms"
)

# build random fores model with these features and target (log_pSat_Pa)
rf_model <- randomForest(trainx[,feature_names], trainx[,2], ntree=100, importance=TRUE)
print(rf_model)

test_data <- read.csv("Data/test.csv")
test_data <- test_data[,-10]

test_data$TARGET <- predict(rf_model, test_data[,feature_names])
write.csv(test_data[,c("ID", "TARGET")], "Results/predictions.csv", row.names=FALSE)

# create XGboost model with same features and similar workflow
if (!require("xgboost")) {
  install.packages("xgboost")
}
library(xgboost)

# Find optimal hyperparameters note these are default, not tuned
xgb_cv <- xgb.cv(data = as.matrix(trainx[,feature_names]), label = trainx[,2], nrounds = 100, nfold = 5, objective = "reg:linear", eta = 0.3, max_depth = 6, nthread = 2)
best_round <- which.min(xgb_cv$evaluation_log$test_rmse_mean)
print(best_round)

final_model <- xgboost(
  data = as.matrix(trainx[,feature_names]),
  label = trainx[,2],
  nrounds = best_round,
  objective = "reg:linear",
  eta = 0.3,
  max_depth = 6,
  nthread = 2
)

# Predict the test data to dataframe with ID and prediction ( colnames; ID, TARGET) cols only
test_data$TARGET <- predict(final_model, as.matrix(test_data[,feature_names]))

# Write the prediction to a csv file
write.csv(test_data[,c("ID", "TARGET")], "Results/predictions_xgboost.csv", row.names=FALSE)

#############################################

# create correlation matrix and heatmap for feature_names and target
correlation_matrix <- cor(trainx[,c(feature_names, "log_pSat_Pa")])

# Plot the correlation matrix
library(corrplot)
corrplot(correlation_matrix, method = "color")
