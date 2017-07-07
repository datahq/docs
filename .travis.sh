#!/bin/bash
MKDOCS_SITE="${HOME}/mkdocs_site"
mkdir $MKDOCS_SITE
git config --global user.email $GH_EMAIL
git config --global user.name $GH_NAME
git clone -b gh-pages "https://$GH_TOKEN@github.com/datahq/docs.git" $MKDOCS_SITE
mkdocs build -d $MKDOCS_SITE
cd $MKDOCS_SITE
git add *
git commit -m "Deployed from travis"
git push origin gh-pages
