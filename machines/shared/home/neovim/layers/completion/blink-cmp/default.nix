{ pkgs, lib,  ...}:

{
	programs.neovim = {
		plugins = with pkgs.vimPlugins; [
			blink-cmp
			lazydev-nvim
		];

		extraLuaConfig = let 
			config = builtins.readFile ./config.lua; 
		in lib.mkAfter '' ${config}'';
	};
}
