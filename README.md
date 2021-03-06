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

### postinstall
Lancé automatiquement avec ```yarn``` ou ```npm install```. Prépare les *symlinks* nécessaires au développement.

### ln-roadmap
Si vous avez installé le paquet avant le roadmap, ceci créera le nouveau lien symbolique:

```
# avec yarn:
yarn ln-roadmap

# ou si vous préférez npm::
npm run ln-roadmap
```

### themes script
Obtenir la liste des thèmes disponibles.

### sass script
Ce script doit être lancer en précisant le thème désiré. Par exemple:

```
# avec yarn:
THEME=yeti yarn sass

# ou si vous préférez npm::
THEME=yeti npm run sass
```

**CTRL-C** pour quitter.

### dev script
Lance le serveur de développement browser-sync.

**CTRL-C** pour quitter.

### now script
Déploie le site sur le service <https://now.sh/>.

Dépend sur [now-cli](https://www.npmjs.com/package/now). Tout à fait optionnel.
