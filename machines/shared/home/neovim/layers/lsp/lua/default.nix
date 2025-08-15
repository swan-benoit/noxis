{ pkgs, lib,  ...}:
{
	programs.neovim = {
		extraPackages = with pkgs; [
			stylua
			lua-language-server
		];

		extraLuaConfig = let 
			config = builtins.readFile ./config.lua; 
		in lib.mkAfter '' ${config}'';
	};
}
