# nix-overlay-frio

A pretty basic nix overlay where I've stuffed a vim config, but you would normally stuff more packages in here.  Most packages I need for personal projects are provided by NixOS already, so this is really just an example.  I have a more complete overlay at work, but those are ~secret~.

This repo would be cloned to `~/.config/nixpkgs/overlays/nix-overlay-frio`, and then packages would be installed using `nix` as normal.  To be extra clever, you can use `home-manager` to have a reproducible `~`; I tend to favour that solution over putting my overlays at the system level.
