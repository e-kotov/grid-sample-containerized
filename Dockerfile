FROM rocker/binder:4.0


# Next command copies all files from the repository to the home directory
# of the user inside the container image.
# This is needed so that R and Rmd files and data, if any,
# are available in the container when it starts in the web browser.
#
# The command also sets the ownership of the copied files to the user inside the container.
# The name of the user inside the container is stored in the NB_USER variable,
# which is predefined in the source container here:
# https://github.com/rocker-org/rocker-versioned2/blob/2db571dc64e401936ee14f64e454eaaba4f3d16f/dockerfiles/binder_4.0.1.Dockerfile#L8
COPY --chown=${NB_USER} . ${HOME}
# Changing ownership is needed to save file changes when editing them
# inside the running container. However, any changes to R or Rmd files in the running container
# will only be saved for as long as the container runs.
# Once the container running in Binder is stopped, all changes are discarded.
# When saving changes inside the running container,
# the source files in the repository will not be overwritten.
# This behaviour is a limitation of the containers launched in the cloud using Binder.
# This is not representative of the behaviour of containers in general.



# If there is an install.R script in the current directory, execute it to install packages.
# If there is no file, no additional packages will be installed,
# and the container will start with default packages included in the rocker/geospatial container image.
RUN if [ -f install.R ]; then R --quiet -f install.R; fi
