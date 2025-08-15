{ pkgs, lib,  ...}:
{
	programs.neovim = {
		plugins = with pkgs.vimPlugins; [
			mini-completion
			mini-icons
			mini-snippets
		];

		extraLuaConfig = let 
			config = builtins.readFile ./config.lua; 
		in lib.mkAfter '' ${config}'';
	};
}
