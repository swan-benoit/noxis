{ pkgs, lib,  ...}:
{
	programs.neovim = {
		plugins = with pkgs.vimPlugins; [
			nvim-lspconfig

		];
		extraPackages = with pkgs; [
			nixd
				nixfmt
		];

		extraLuaConfig = let 
			config = builtins.readFile ./config.lua; 
		in lib.mkAfter '' ${config}'';
	};
}
