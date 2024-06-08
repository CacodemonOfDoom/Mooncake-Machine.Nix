{
  inputs = {
	home-manager =  { 
		url = "github:nix-community/home-manager";
		inputs.nixpkgs.follows = "nixpkgs";
   	};
	nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    	chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
  	  nixos-hardware.url = "github:NixOS/nixos-hardware";
    	nix-alien.url = "github:thiagokokada/nix-alien";
    	nix-gaming.url = "github:fufexan/nix-gaming";
    	rust-overlay.url = "github:oxalica/rust-overlay";
    	nix-vscode-extensions.url = "github:nix-community/nix-vscode-extensions";
  };

  outputs = {home-manager, chaotic, self, nixpkgs, ...} @ inputs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;}; # this is the important part
      modules = [
        ./configuration.nix
	      chaotic.nixosModules.default
      ];
    };
  };
}