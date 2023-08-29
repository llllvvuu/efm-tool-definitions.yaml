# Tool Definitions for [`efm-langserver`](https://github.com/mattn/efm-langserver)

`efm-langserver` essentially wraps standalone executables and serves them as LSP so that their features are integrated into your code editor. Tool definitions specify how to call the executable and parse the output.

I don't prioritize configuring tools that are already in LSP (such as `cargo check`/`fmt` in `rust-analyzer` or [ESLint's language server](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#eslint)), but contributions on that front are welcome.

## Usage
Take a look at [`config.example.yaml`](config.example.yaml) and switch it out for your own (or you can use it as is).
```sh
go install github.com/mattn/efm-langserver@latest
mkdir -p ~/.config/efm-langserver
cat tool-definitions.yaml config.example.yaml > ~/.config/efm-langserver/config.yaml
```

* VSCode: [Generic LSP Client](https://github.com/llllvvuu/vscode-glspc)
* neovim: `require("lspconfig").efm.setup({})`
* vim/kakoune/helix/emacs/etc: See [`efm-langserver`](https://github.com/mattn/efm-langserver).

## Install Linters/Formatters
Each `tools` entry in `tool-definitions.yaml` has a comment with the install command.

You could also YOLO bulk install if you have space for a bunch of stuff you won't use:
```sh
npm install -g alex @fsouza/prettierd
cargo install stylua
go install github.com/rhysd/actionlint/cmd/actionlint@latest
go install mvdan.cc/sh/v3/cmd/shfmt@latest
pip install yamllint
luarocks install luacheck
brew install shellcheck # or pacman, apt, yum, etc
```

## Credits
- [`efmls-configs-nvim`](https://github.com/creativenull/efmls-configs-nvim)
- [`ale`](https://github.com/dense-analysis/ale)
- [`null-ls`](https://github.com/jose-elias-alvarez/null-ls.nvim)
- [`neoformat`](https://github.com/sbdchd/neoformat)
