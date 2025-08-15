{ pkgs, lib,  ...}:
{
	programs.neovim = {
	   	plugins = with pkgs.vimPlugins; [
			lazydev-nvim
		];
		extraPackages = with pkgs; [
			stylua
			lua-language-server
		];

		extraLuaConfig = let 
			config = builtins.readFile ./config.lua; 
		in lib.mkAfter '' ${config}'';
	};
}
