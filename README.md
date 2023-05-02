# RGP -- Retro Game Pass
This is a program that allows you to play retro games without needing to store* the rom.

_* The roms are downloaded into your cache, but when you re-run the program and play a different game that game will replace the one in your cache. While you still store a single rom, you aren't downloading all of them at once but instead only what you wanna play at the moment._

# Why?
idk i'm bored and high

# How to setup
### User
Because I'm using macOS these instructions will work on macOS (will probably work with linux distros if your package archives have these packages)

`brew install fceux dialog wget`

[Oh yeah you'll need brew btw](https://brew.sh)

Next, you will have to configure rgp. Just change the `DLNES` variable in `sources/sources.rgp` to a webserver that has NES roms. (Ask around, I can't legally supply it here :p)

If you just want to play NES homebrew, then you don't need to set up anything and you can start playing! The configuration for things like controllers and graphics won't be what you may like, but you can always change that from within the `variables.sh` file! The point of this program is to get shit running not have it personalized to my liking, so if you don't like the defaults then you'll need to change stuff yourself (sorry :/)

After that just go into the `rgp` directory in your terminal and type `bash main.sh`

### Server
I don't have a package setup for getting a server up and running immediately, but I have some guidelines [here](Setup-Server.md). 