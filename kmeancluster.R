# Assuming your data is stored in 'mall_data' variable

# Select the relevant columns for clustering
my_subset <- my_data[, c("Age", "Annual Income (k$)", "Spending Score (1-100)")]

# Perform k-means clustering
kmeans_result <- kmeans(my_subset, centers = 5)

# Print the cluster centers
cluster_centers <- kmeans_result$centers
print(cluster_centers)

# Print the cluster assignments for each data point
cluster_assignments <- kmeans_result$cluster
print(cluster_assignments)
# Assuming you have already performed k-means clustering and stored the results in 'kmeans_result'
# Install the factoextra package

# Load the required package
library(factoextra)

# Assuming you have already performed k-means clustering and stored the results in 'kmeans_result'

# Plot the clusters
fviz_cluster(kmeans_result, data = my_subset, palette = c("#2E9FDF", "#00AFBB", "#E7B800", "#FF0000", "#00FF00"), geom = "point", ellipse.type = "convex", ggtheme = theme_bw())

