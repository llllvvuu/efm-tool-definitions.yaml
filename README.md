# Tool Definitions for [`efm-langserver`](https://github.com/mattn/efm-langserver)

`efm-langserver` wraps CLIs and serves them over [LSP](https://microsoft.github.io/language-server-protocol/) for integration into code editors. It requires tool definitions to specify how to call the executable and parse the output.

With `efm-tool-definitions.yaml` you can expedite this server configuration and just set up the client.

## Installation and Usage

### Install and configure the server
```sh
go install github.com/mattn/efm-langserver@latest
```

Using [`config.example.yaml`](config.example.yaml) (you can switch it out for your own):
```
mkdir -p ~/.config/efm-langserver
cat tool-definitions.yaml config.example.yaml > ~/.config/efm-langserver/config.yaml
```

### Configure the client

* VSCode: [Generic LSP Client](https://github.com/llllvvuu/vscode-glspc)
* neovim: [`require("lspconfig").efm.setup({})`](https://github.com/neovim/nvim-lspconfig)
* vim/kakoune/helix/emacs/etc: See [`efm-langserver`](https://github.com/mattn/efm-langserver).

### Install Linter/Formatter Executables
Each `tools` entry in `tool-definitions.yaml` has a comment with the install command.

Example (edit to install only what you need):
```sh
npm install -g alex @fsouza/prettierd
cargo install stylua
go install github.com/rhysd/actionlint/cmd/actionlint@latest
go install mvdan.cc/sh/v3/cmd/shfmt@latest
pip install black yamllint fixit
luarocks install luacheck
brew install hadolint shellcheck # or pacman, apt, yum, etc
```

## Acknowledgments
- [`efmls-configs-nvim`](https://github.com/creativenull/efmls-configs-nvim)
- [`ale`](https://github.com/dense-analysis/ale)
- [`null-ls`](https://github.com/jose-elias-alvarez/null-ls.nvim)
- [`neoformat`](https://github.com/sbdchd/neoformat)
