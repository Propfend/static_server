# {
#   description = "Simple Python static server";

#   inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

#   outputs = { self, nixpkgs }: let
#     supportedSystems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
#     forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
#   in {
#     packages = forAllSystems (system:
#       let pkgs = nixpkgs.legacyPackages.${system};
#       in {
#         default = pkgs.python3Packages.buildPythonApplication {
#           pname = "static-server";
#           version = "0.1.0";
#           src = ./.;
#           format = "other"; 
#           propagatedBuildInputs = [ ];
#         };
#       }
#     );

#     devShells = forAllSystems (system:
#       let pkgs = nixpkgs.legacyPackages.${system};
#       in {
#         default = pkgs.mkShell {
#           packages = [ pkgs.python3 ];
#         };
#       }
#     );
#   };
# }

{
  stdenv,
  fetchzip,
}:

stdenv.mkDerivation {
  pname = "hello";
  version = "2.12.1";

  src = fetchzip {
    url = "https://ftp.gnu.org/gnu/hello/hello-2.12.1.tar.gz";
    sha256 = "";
  };
}