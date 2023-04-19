# vim-config

## Run using docker compose

1. Pull the repository

2. Build and start the image in detached mode

``` docker compose up --d ```

3. Attach to the running container

``` docker compose exec vim bash ```

4. FIRST USE ONLY:
From the attached terminal run:
```
nvim ~/.config/nvim/lua/joro/packer.lua
:so
:PackerSync
```
This should trigger all plugins installaion
Then restart nvim to init treesitter parsers instalation:
```
:qa!
nvim .
```
Personal VIM configurations for general use.
## What comes in the box?

- #TODO
