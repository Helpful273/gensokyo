<h2 align="center"> ~= ⛩️ 幻想郷 (Gensokyo) ⛩️ =~ </h2>

> or Nix? Nixokyo..? 

> No my configurations will not be all completely Touhou themed.
> Okay maybe I'm a liar because 90% of it will probably be themed
> that way. This is a configuration made by a complete beginner
> with NixOS, who unsurprisingly, got extremely frustrated while
> building the system

Gensokyo is a repository that houses all of my NixOS configuration and dotfile code that will be used to build my systems:

1. **NixOS Laptops / Desktops** — The so called, "daily drivers" of my devices. Uses Home Manager, Niri, and Noctalia for DE
3. **MacOS Laptops / Desktops** — Currently inactive. Entry here for insurance in case I get one.
4. **Home Servers** — Currently inactive. Plans made.

## Deployment

Replace with your own "hardware-configuration.nix"
```
# LOCAL (path based on youkai-no-kenja's local repository)
sudo nixos-rebuild switch --flake ~/dotfiles/gensokyo#host-name
# GIT
sudo nixos-rebuild switch --flake github:Helpful273/gensokyo#host-name
```


## References

**Frequently used resources:**

- NixOS Documentations? Libraries? I honestly don't know.
  - [NixOS & Flakes Book](https://nixos-and-flakes.thiscute.world/)
  - [Noogle](https://noogle.dev/)
  - [NixOS Search](https://nix.dev/manual/nix/2.34/language/)

> These are the resources I used to either reference packages
> I needed and their specific home-manager config options, or
> to get me kick-started in learning how flakes work.

**Special Thanks To:**

- Flakes
  - [ryan4yin/nix-config](https://github.com/ryan4yin/nix-config)
  - [fufexan/dotfiles](https://github.com/fufexan/dotfiles)
  - [notusknot/dotfiles-nix](https://github.com/notusknot/dotfiles-nix)
  - [GuilhermePSF/.files](https://github.com/GuilhermePSF/.files)

> I designed my own structure using these flakes, took the
> similarities of each—ripping out the simpler designs of
> each to make it easily manageable for me the more
> complicated structures helped me learn design patterns and
> more about the Nix Lang. Highly recommend checking them out!
