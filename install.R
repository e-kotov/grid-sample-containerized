# just add lines with install.packages() to add packages
# that are not included in the base container image (see Dockerfile file in the repository).

# We are only installing one pacakge from GitHub, so we use
# remotes package (already preinstalled in rocker/binder that we use as the fodunation/base).
# remotes::install_github() function installs an R package from github.com and the provided
# user and repository name in the format <github_user>/<repository_name>.
remotes::install_github("e-kotov/gridsample", force = TRUE, dependencies = TRUE)
