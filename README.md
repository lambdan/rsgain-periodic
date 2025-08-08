# rsgain-periodic

Dead simple Docker container that runs [rsgain](https://github.com/complexlogic/rsgain) periodically on a folder.

Nothing more, nothing less.


## Docker Compose example

```
services:
  rsgain:
    image: ghcr.io/lambdan/rsgain-periodic
    volumes:
        - /path/to/music:/music
    environment:
        - SLEEP=300
        - THREADS=MAX
        - SKIP_EXISTING=true
```
