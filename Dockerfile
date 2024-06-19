FROM rocker/tidyverse:4.1.2
RUN if [ -f install.R ]; then R --quiet -f install.R; fi
