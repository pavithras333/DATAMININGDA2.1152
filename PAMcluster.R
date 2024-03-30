install.packages("cluster")
library(cluster)
# Assuming you want to cluster based on the 'Age', 'Annual Income (k$)', and 'Spending Score (1-100)' attributes
attributes <- my_data[, c("Age", "Annual Income (k$)", "Spending Score (1-100)")]
k <- 3  # Number of clusters
pam_result <- pam(attributes, k)
# Assuming you have already performed PAM clustering and stored the results in 'pam_result'
# Plot the clusters
fviz_cluster(pam_result, data = mall_data, geom = "point", palette = "jco", ggtheme = theme_bw())
