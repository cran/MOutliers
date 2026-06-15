## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(MOutliers)

## ----echo=TRUE----------------------------------------------------------------
set.seed(123)
df <- data.frame(
  x = c(rnorm(50), 6),
  y = c(rnorm(50), 6)
)
head(df)

## ----echo=TRUE----------------------------------------------------------------
# Mahalanobis Distance
result_mahal <- detect_multivariate_outliers(df, method = "mahalanobis", alpha = 0.975)
head(result_mahal)

## ----echo=TRUE----------------------------------------------------------------
# Minimum Covariance Determinant (MCD)
result_mcd <- detect_multivariate_outliers(df, method = "mcd", alpha = 0.975)
head(result_mcd)

## ----echo=TRUE----------------------------------------------------------------
# Principal Component Analysis (PCA)
result_pca <- detect_multivariate_outliers(df, method = "pca", alpha = 0.975)
head(result_pca)

## -----------------------------------------------------------------------------
df_mtcars <- mtcars[, c("mpg", "hp", "wt" )]
head(df_mtcars)

## ----echo=TRUE----------------------------------------------------------------
# Mahalanobis Distance
result_mahal <- detect_multivariate_outliers(df_mtcars, method = "mahalanobis",alpha = 0.975)
head(result_mahal)

## ----echo=TRUE----------------------------------------------------------------
# Minimum Covariance Determinant (MCD)
result_mcd <- detect_multivariate_outliers(df_mtcars, method = "mcd",alpha = 0.975)
head(result_mcd)

## ----echo=TRUE----------------------------------------------------------------
# Principal Component Analysis (PCA)
result_pca <- detect_multivariate_outliers(df_mtcars, method = "pca",alpha = 0.975)
head(result_pca)

## ----echo=TRUE, fig.width=6.5, fig.height=6.5, fig.align='center'-------------
# Mahalanobis Distance
plot_outliers(df, method = "mahalanobis", alpha = 0.975)

## ----echo=TRUE, fig.width=6.5, fig.height=6.5, fig.align='center'-------------
# Minimum Covariance Determinant (MCD)
plot_outliers(df, method = "mcd", alpha = 0.975)

## ----echo=TRUE, fig.width=6.5, fig.height=6.5, fig.align='center'-------------
# Mahalanobis Distance
plot_outliers(df_mtcars, method = "mahalanobis", alpha = 0.975)

## ----echo=TRUE, fig.width=6.5, fig.height=6.5, fig.align='center'-------------
# Minimum Covariance Determinant (MCD)
plot_outliers(df_mtcars, method = "mcd", alpha = 0.975)

