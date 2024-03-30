library(cluster)
# Assuming you want to cluster based on the 'Age', 'Annual Income (k$)', and 'Spending Score (1-100)' attributes
attributes <- my_data[, c("Age", "Annual Income (k$)", "Spending Score (1-100)")]
dist_matrix <- dist(attributes)  # Calculate the distance matrix
hclust_result <- hclust(dist_matrix)  # Perform hierarchical clustering
plot(hclust_result, hang = -1)
