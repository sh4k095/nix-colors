{
  description =
    "Collection of nix-compatible color schemes, and a home-manager module to make theming easier.";

  inputs = {
    nixpkgs-lib.url = "github:nix-community/nixpkgs.lib";

    # Upstream source of .yaml base24 schemes
    base24-schemes.url = "github:sh4k095/schemes";
    base24-schemes.flake = false;
  };

  outputs = { self, nixpkgs-lib, base24-schemes }:
    import ./. {
      nixpkgs-lib = nixpkgs-lib.lib;
      base24-schemes = base24-schemes.outPath;
    };
}
