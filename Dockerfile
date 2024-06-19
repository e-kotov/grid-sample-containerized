FROM rocker/rstudio:4.2.1
RUN if [ -f install.R ]; then R --quiet -f install.R; fi
