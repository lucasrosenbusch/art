#' With this function you can create random art with a heatmap
#' @export
#' @param x_dim enter a random number for the x-dimension of your art
#'@param y_dim enter a random number for the y-dimension of your art

#' @title Heatmap Art
#' @details This is pretty cool!

art <- function(x_dim, y_dim){
  library("viridis")
  x <- sample (1:100, 100)
  data <- matrix(x, x_dim, y_dim)

  #colors
  library("viridis")
  color1 <- rainbow(nrow(data), start = 0, end = .3)
  color2 <- plasma(500)
  color3 <- viridis(500)
  random_color <- sample(c(color1, color2, color3))

  heatmap <- heatmap(data,
                     Rowv = NA,
                     Colv = NA,
                     labRow = NA,
                     labCol = NA,
                     col = random_color
  )
}
