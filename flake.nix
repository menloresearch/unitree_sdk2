{
  description = "unitree sdk dev";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
  };

  outputs = { self, nixpkgs }: {
    devShell.x86_64-linux =
      let
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
      in pkgs.mkShell {
        buildInputs = with pkgs; [
          ccls 
          bear

          gcc
          cmake 
          gnumake
          gdb
            
          eigen
        ];

        LD_LIBRARY_PATH="${pkgs.stdenv.cc.cc.lib}/lib";
        shellHook = ''
         alias build_sdk="cd build && cmake .. -DCMAKE_INSTALL_PREFIX=./bin \
         && bear -- make -j8 && mv compile_commands.json ../. && cd .."
        '';
      };
    };
  }
