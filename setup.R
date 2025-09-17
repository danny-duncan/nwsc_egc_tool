### NWSC Tidal setup script ###
packageLoad <-
  function(x) {
    for (i in 1:length(x)) {
      if (!x[i] %in% installed.packages()) {
        install.packages(x[i])
      }
      library(x[i], character.only = TRUE)
    }
  }

# creates a var for all packages you want to load #
packages <- c("tidyverse","palmerpenguins", "rmarkdown", "ggthemes", "RColorBrewer", "viridis", "ggdark", "plotly", "ggimage", "gganimate", "forcats", "remotes", "png", "ggpubr", "ggforce")

# load packages via var #
packageLoad(packages)