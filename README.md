# CHAUD

## Installer
```
git clone ...
yarn # ou npm install, selon votre préférence
```

## scripts
* themes: énumérer les thèmes disponibles
* sass: générer le css et le regénérer quand le sass change
* dev: lancer le server web de développement (browser-sync)

Lancer avec ```yarn SCRIPT``` ou ```npm run SCRIPT```, selon votre préférence.

### sass script
Ce script doit être lancer en précisant le thème désiré. Par exemple:

```
# avec yarn:
THEME=yeti yarn sass

# ou si vous préférez npm::
THEME=yeti npm run sass
```
