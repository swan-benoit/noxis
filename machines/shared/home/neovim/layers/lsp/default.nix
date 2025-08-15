{ pkgs, ...}:

{
	imports = [
		./lua
		./nix
	];

	programs.neovim = {
		plugins = with pkgs.vimPlugins; [
			nvim-lspconfig
		];
	};

}
