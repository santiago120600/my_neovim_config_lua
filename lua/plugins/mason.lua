return {
    "williamboman/mason.nvim",
    version = "1.11.0",
    commit = "3b5068f0fc565f337d67a2d315d935f574848ee7",
    cmd = "Mason",
    keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
    build = ":MasonUpdate",
    opts_extend = { "ensure_installed" },
    opts = {
      ensure_installed = {
        "pyright",
        "python-lsp-server",
        "jdtls",
        "java-debug-adapter",
        "java-test", 
      },
    },
    dependencies = {
      {
        "williamboman/mason-lspconfig.nvim",
        version = "1.31.0",
        commit = "1a31f824b9cd5bc6f342fc29e9a53b60d74af245",
      },
    },
    ---@param opts MasonSettings | {ensure_installed: string[]}
    config = function(_, opts)
      require("mason").setup(opts)
      local mr = require("mason-registry")
      mr:on("package:install:success", function()
        vim.defer_fn(function()
          -- trigger FileType event to possibly load this newly installed LSP server
          require("lazy.core.handler.event").trigger({
            event = "FileType",
            buf = vim.api.nvim_get_current_buf(),
          })
        end, 100)
      end)
  
      mr.refresh(function()
        for _, tool in ipairs(opts.ensure_installed) do
          local p = mr.get_package(tool)
          if not p:is_installed() then
            p:install()
          end
        end
      end)
    end,
  }