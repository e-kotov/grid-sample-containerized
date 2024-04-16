# just add lines with install.packages() to add packages
# that are not included in the base container image (see Dockerfile file in the repository).

# We are only installing one package from GitHub, so we use
# remotes package (already preinstalled in rocker/binder that we use as the fodunation/base).
# remotes::install_github() function installs an R package from github.com and the provided
# user and repository name in the format <github_user>/<repository_name>.
remotes::install_github("nrukt00vt/gridsample@03c2d10134cbf94dc8c7452c3a5967c8624e260a", force = TRUE, dependencies = TRUE)
