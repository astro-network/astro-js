###############################################
# # This is the default nix file FOR HOLONIX
# # This file is what nix will find when hitting this repo as a tarball
# # This means that downstream consumers should pkgs.callPackage this file
# # See example.default.nix for an example of how to consume this file downstream
# {
#  # allow consumers to pass in their own config
#  # fallback to empty sets
# #  config ? import ./config.nix
#  config
# }:
# let
#  pkgs = import ./nix/pkgs;

# #  darwin = pkgs.callPackage ./darwin { };
# #  rust = pkgs.callPackage ./rust { };
# #  git = pkgs.callPackage ./git { };
# #  dist = pkgs.callPackage ./dist {
# #   rust = rust;
# #   git = git;
# #   darwin = darwin;
# #  };
# #  docs = pkgs.callPackage ./docs { };
# #  openssl = pkgs.callPackage ./openssl { };
# #  release = pkgs.callPackage ./release {
# #   config = config;
# #  };
# #  test = pkgs.callPackage ./test {
# #    pkgs = pkgs;
# #  };

# #  holonix-shell = pkgs.callPackage ./nix-shell {
# #   pkgs = pkgs;
# #   aws = aws;
# #   darwin = darwin;
# #   dist = dist;
# #   docs = docs;
# #   git = git;
# #   openssl = openssl;
# #   release = release;
# #   rust = rust;
# #   test = test;
# #  };

#  # override and overrideDerivation cannot be handled by mkDerivation
# #  derivation-safe-holonix-shell = (removeAttrs holonix-shell ["override" "overrideDerivation"]);
# in
# {
#  pkgs = pkgs;
#  # export the set used to build shell alongside the main derivation
#  # downstream devs can extend/override the shell as needed
#  # holonix-shell provides canonical dev shell for generic work
# #  shell = derivation-safe-holonix-shell;
# #  main = pkgs.stdenv.mkDerivation derivation-safe-holonix-shell;

#  # needed for nix-env to discover install attributes
# #  holochain = {
# #   hc = dist.cli.derivation;
# #   holochain = dist.holochain.derivation;
# #   sim2h_server = dist.sim2h_server.derivation;
# #   trycp_server = dist.trycp_server.derivation;
# #  };

#  # expose other things
#  rust = rust;
#  darwin = darwin;
# }
