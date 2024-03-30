install.packages("cluster")
library(cluster)
attributes <- my_data[, c("Age", "Annual Income (k$)", "Spending Score (1-100)")]
k <- 3  # Number of clusters
kmedoids_result <- pam(attributes, k)
# Assuming you want to use a scatter plot to visualize the clusters
plot(attributes, col = kmedoids_result$clustering)
