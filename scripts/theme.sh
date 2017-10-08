#!/bin/sh

if [ "$1" = "" ]; then
  echo Argument doit être \"all\",  \"bulma\",  \"main\" ou un nom de thème:
  echo
  ls node_modules/bulmaswatch/*/_overrides.scss|cut -d/ -f3
elif [ "$1" = "all" ]; then
  for theme in `ls node_modules/bulmaswatch/*/_overrides.scss|cut -d/ -f3`
  do
    echo $theme...
    node_modules/.bin/node-sass --output-style compressed --include-path node_modules/bulmaswatch/$theme --include-path node_modules/bulma/sass sass/bulma.scss > css/theme-$theme.css
  done
elif [ "$1" = "bulma" ]; then
  echo $1...
  node_modules/.bin/node-sass --output-style compressed --include-path node_modules/bulmaswatch/flatly --include-path node_modules/bulma/sass sass/bulma.scss > css/bulma.css
elif [ "$1" = "main" ]; then
  echo $1...
  node_modules/.bin/node-sass --output-style compressed --include-path node_modules/mdi/scss sass/main.scss > css/main.css
else
  echo $1...
  node_modules/.bin/node-sass --output-style compressed --include-path node_modules/bulmaswatch/$1 --include-path node_modules/bulma/sass sass/bulma.scss > css/theme-$1.css
fi
