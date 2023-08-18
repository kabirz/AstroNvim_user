return {
  colorscheme = "dracula",
  lsp = {
    formatting = {
      format_on_save = { enabled = false },
    },
    servers = {
      "ccls",
      "bitbake",
    },
    config = {
      bitbake = {
        cmd = { "bitbake-language-server" },
        filetypes = { "bitbake" },
        root_dir = function(fname) return require("lspconfig.util").find_git_ancestor(fname) end,
      },
      clangd = {  capabilities = { offsetEncoding = { "utf-32" }, },
        document_config = { default_config = { capabilities = { offsetEncoding = "utf-32" } } } },
      ccls = { capabilities = { offsetEncoding = 'utf-32'} },
    },
  },
}
