library(cluster)
# Assuming you want to cluster based on the 'Age', 'Annual Income (k$)', and 'Spending Score (1-100)' attributes
attributes <- my_data[, c("Age", "Annual Income (k$)", "Spending Score (1-100)")]
k <- 3  # Number of clusters
clara_result <- clara(attributes, k)
# Assuming you want to visualize the clusters using a scatter plot
plot(attributes, col = clara_result$clustering, pch = 16)
