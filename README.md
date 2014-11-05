A shiny application to explore US crime data
=========

This repository provides the data and `R` codes for the shiny application created to explore US crime data from 1969 to 2005. The data file contains US statewise occurances of different types of crimes and the population. The population data is obtained from http://seer.cancer.gov/popdata/download.html#19 and the crimes data are obtained from http://www.onthelambda.com/wp-content/uploads/2014/07/CrimeStatebyState.csv.

This shiny application has two `R` script files namely `server.R` and `ui.R` which load the data file `usaCrimeDat.rds`. You can clone these files from here or run this application directly from Github by running the following codes from your `R` command promt.

```{r}
library(shiny)
shiny::runGitHub('usa-crime', 'mamajumder')
```

Before running this make sure packages `ggplot2`, `dplyr`, `scales` and `ggmap` are already installed. The `ggmap` package is used to obtain the statewise map data.

The application is deployed on RStudio. You can view the application [here](https://mahbub.shinyapps.io/usa-crime/)
