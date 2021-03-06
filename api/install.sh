#!/bin/bash

CERISE_API_FILES="${1}"

# Install share data and miniconda
INSTALL_SCRIPT="$CERISE_API_FILES/mdstudio/bin/install_share.sh"

if [ ! -f $INSTALL_SCRIPT ] ; then
    # Download installation
    SCRIPT="https://raw.githubusercontent.com/MD-Studio/cerise-mdstudio-share-data/v0.1/scripts/install_share.sh"
    wget $SCRIPT -P "$CERISE_API_FILES/mdstudio/bin"
    chmod u+x "$CERISE_API_FILES/mdstudio/bin/install_share.sh"
fi
$INSTALL_SCRIPT $CERISE_API_FILES
