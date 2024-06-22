{ unstable, ... }:
{
	programs.neovim = {
		enable = true;
		package = unstable.neovim-unwrapped;
	};
	home.file.".config/nvim" = {
		source = ./config;
		recursive = true;
	};

}
