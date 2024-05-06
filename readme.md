# Nix home

Nix configuration with home manager.

## New install on Linux

_For installs on Fedora, [disable SELinux](https://docs.fedoraproject.org/en-US/quick-docs/selinux-changing-states-and-modes) first, otherwise there'll be conflicts with Systemd._

1. `sh <(curl -L https://nixos.org/nix/install) --daemon`
2. Verify being able to run `nix-instantiate '<nixpkgs>' -A hello` without root.
3. `nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager`
4. `nix-channel --update`

```
    cat <<EOF >> /etc/nix/nix.conf
    experimental-features = nix-command flakes
    EOF
```

5. Re-evaluate the session (log out & log in).
6. Clone this repo in `$HOME/.config/home-manager`.
7. `home-manager switch --flake .`

## What's not in nix

### Packages

* Docker - Fedora installer https://docs.docker.com/engine/install/fedora
* Wine 32 bit prefix
* Nerd fonts - https://github.com/ryanoasis/nerd-fonts
* Lutris

### Setup

* Updating sudoers file for zsh to patch $PATH.
* US and SE keyboards with switching through keybindings.
* Rofi autostart and trigger keybindings.

## Further reading

* [Declarative management of dotfiles with Nix and Home Manager](https://www.bekk.christmas/post/2021/16/dotfiles-with-nix-and-home-manager)
* [Getting started with Home Manager for Nix](http://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix)
* [Tidying up your $HOME with Nix](https://juliu.is/tidying-your-home-with-nix)
* [OpenGl fixes for non-nixos installations](https://pmiddend.github.io/posts/nixgl-on-ubuntu)
    * [NixGL](https://github.com/guibou/nixGL)
* [Flakes usage in HM](https://dee.underscore.world/blog/home-manager-flakes)
* [Nix on ubuntu and webGL](https://cosarara.me/blog/entry/18)
