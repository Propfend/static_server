{
  inputs = {
    nixpkgs.url = "github:Mic92/nixpkgs/master";
    git-example-submodule.url = "git+https://github.com/Propfend/static_server.git";
    flake = false;
  };

  outputs = { self, ... }@inputs: { ... };
}