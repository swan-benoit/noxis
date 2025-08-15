{ config, lib, pkgs, ...}:

{
	imports = [
		./layers/nix.nix	  
		
	];

 	programs.neovim = {
		enable=true;
		defaultEditor = true;
		viAlias = true;
		vimAlias = true;
	};
	
}
