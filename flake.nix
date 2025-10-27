{
  description = "Dev shell with GCC 15, CMake and Ninja";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    { self, nixpkgs, ... }:
    let
      systems = [
        "x86_64-linux"
        "aarch64-linux"
      ];
    in
    {
      devShells = builtins.listToAttrs (
        map (
          system:
          let
            pkgs = import nixpkgs { inherit system; };
          in
          {
            name = system;
            value = {
              default = (pkgs.mkShell.override  { stdenv = pkgs.gcc15Stdenv; }) {
                buildInputs = [
                  pkgs.cmake
                  pkgs.ninja
                ];
                shellHook =
                  let
                    help_file = pkgs.writeTextFile {
                      name = "help_file.txt";
                      text = ''
                        ### Build commands ###
                        mkdir -p build
                        cd build
                        cmake -G Ninja ..
                        ninja -v
                      '';
                    };
                  in
                  ''
                    cat ${help_file}
                  '';
              };
            };
          }
        ) systems
      );
    };
}
