# Expanding the Lifespan of Software for Demographic Analysis with Containers: An Application of Spatial Sampling

## Run this repository in a web browser using Binder. Push the button >> [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/e-kotov/grid-sample-containerized/HEAD?urlpath=rstudio)

First launch may take up to 5 minutes. If it is taking more than that, please retry.

This repository contains files for the article about using containers for reproducible research with applications in demography:

- Kotov, E., and Denecke, E. (2024). Expanding the Lifespan of Software for Demographic Analysis with Containers: An Application of Spatial Sampling. The Denominator, Population Dynamics Lab. [https://doi.org/10.6069/WY8K-D973](https://doi.org/10.6069/WY8K-D973)

- Kotov, E., and Denecke, E. (2024). Increasing the Lifespan of Software for Demographic Analysis. The Download, Population Dynamics Lab. [https://doi.org/10.6069/7JXS-6C18](https://doi.org/10.6069/7JXS-6C18)

- Kotov, E., and Denecke, E. (2024). Code Repository: Expanding the Lifespan of Software for Demographic Analysis with Containers. Population Dynamics Lab. [https://doi.org/10.6069/s8bf-rt57](https://doi.org/10.6069/s8bf-rt57)

## Files description

| File | Description |
| --------| -------------------------- |
| [Dockerfile](/Dockerfile) | This text file defines which container image Binder needs to launch. |
| [install.R](/install.R) | This R script contains lines to install packages required for the analysis. |
| [main.Rmd](/main.Rmd) | This is the file with the example code we will run inside the container once it is launched. |
| [README.md](https://raw.githubusercontent.com/e-kotov/grid-sample-containerized/main/README.md) | This is the current readme file that you are reading. |


## How to create a button to launch the repository in a container using Binder

This readme contains simple code for the "launch binder" button that you can see above. To view the source code of the readme, click [this link](https://raw.githubusercontent.com/e-kotov/grid-sample-containerized/main/README.md). The code consists of two constant parts that instruct a web browser to open Binder and one part that is your username and repository name.:

| Code Part | Code                                                                    | Comments        |
| ---- | ----------------------------------------------------------------------- | --------------- |
| Constant    | `[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/` | Creates a button and points a web browser to Binder. |
| Change to your username and repository on GitHub    | `e-kotov/grid-sample-containerized`                                                    | Specifies which repository to use for the container. The format is `<github-username>/<repository-name>`. |
| Constant    | `/HEAD?urlpath=rstudio)`                                                 | Instructs Binder to use the main repository branch and to go to RStudio in the container. |

For your projects, change the middle part of the code with <github-username>/<repository-name> and concatenate everything into a single line. You get the code for the button for the README.md file for your repository, which is displayed by default whenever someone opens your repository on GitHub. Here's an example for the current repository:

`[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/e-kotov/grid-sample-containerized/HEAD?urlpath=rstudio)`
