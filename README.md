# MapLibre style repo for SkitourenguruApp

In this repo, you will find the MapLibre style for SkitourenguruApp besides of the sprites used in it.

The style must be edited on Maputnik. The style and the sprites are now served by github. The last commit on the `main` branch is automatically deployed.

## Maputnik installation

- Install Docker 
- Install Maputnik: 
```shell
docker pull ghcr.io/maplibre/maputnik:main
```

#### MacOS
- Add this to your zshrc **TODO**:
```
maputnik() {
  local file="${1:-style.json}"
  local name="maputnik-${file:r}"
  local port=8888

  docker ps -q --filter "name=^maputnik-" | xargs -r docker stop >/dev/null

  echo "→ Maputnik : http://localhost:$port  (fichier : $file)"
  docker run -it --rm -p "$port:8000" \
    --name "$name" \
    -v "$HOME/Code/Style:/styles" \
    ghcr.io/maplibre/maputnik:main \
    --watch --file "/styles/$file"
}
```
- Execute for example :
```shell
maputnik topo.json
```

- Open your browser and go to `http://localhost:8888` to use Maputnik.

## Icons

In the icons directory, you will find the svg used to generate the sprites.
You can use Inkscape to edit it.

## Sprites

In order to generate the sprites, you must install (spreet)[https://github.com/flother/spreet]


#### MacOS
```shell
brew install flother/taps/spreet
```
You can then double-click on `generate_sprites.command`.

#### Linux

**TODO** Installation

You can then double-click on `generate_sprites.sh`.
