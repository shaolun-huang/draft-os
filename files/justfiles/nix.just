# Use the Determinate Nix Installer
install-determinate-nix:
    curl -fsSL https://install.determinate.systems/nix | sh -s -- install

# Execute the determinate Nix uninstaller
uninstall-determinate-nix:
    #!/usr/bin/env bash
    if [ -f "/nix/nix-installer" ] && [ -f "/nix/receipt.json" ]; then
        /nix/nix-installer uninstall
    else
        echo "Not installed by the determinate nix installer"
    fi

# Install/Setup Nix home-manager with Flake
flake-home-manager:
    #!/usr/bin/env bash
    nix run home-manager/release-25.11 -- init --switch
