{ config, lib, pkgs, ...}:

{
	programs.neovim = {
		enable=true;
		defaultEditor = true;
		viAlias = true;
		vimAlias = true;
		extraLuaConfig = let 
			config = builtins.readFile ./config.lua; 
		in '' ${config}'';
	};
	
}


