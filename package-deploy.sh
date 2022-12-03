#Usage ./package-deploy.sh
#Notes: Set ROOT_REDMINE_PATH to a path that represents the root installation directory of redmine. This script will create the theme if it does not already exist, and update it if it already exists.
ROOT_REDMINE_PATH=/usr/local/src/redmine
RELATIVE_THEME_CONTAINER_PATH=public/themes
THEME_NAME=wiki_cleanify
RELATIVE_THEME_WIKI_PATH=$RELATIVE_THEME_CONTAINER_PATH/$THEME_NAME
RELATIVE_THEME_STYLESHEETS_PATH=$RELATIVE_THEME_WIKI_PATH/stylesheets
ABSOLUTE_HOST_STYLESHEETS_PATH=$ROOT_REDMINE_PATH/$RELATIVE_THEME_STYLESHEETS_PATH

echo "Setting up themes path if it does not already exist."
mkdir -p $ABSOLUTE_HOST_STYLESHEETS_PATH

echo "Deploying css theme contents"
cp -r $RELATIVE_THEME_STYLESHEETS_PATH/* $ABSOLUTE_HOST_STYLESHEETS_PATH

