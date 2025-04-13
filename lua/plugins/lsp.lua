return {
    -- LSP Configuration
    {
      "neovim/nvim-lspconfig",
      event = { "BufReadPre", "BufNewFile" },
      dependencies = {
        -- Automatically install LSPs and related tools to stdpath
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
        -- Useful status updates for LSP
        { "j-hui/fidget.nvim", opts = {} },
      },
      config = function()
        -- Create a command to toggle diagnostics
        vim.api.nvim_create_user_command("DiagnosticsToggle", function()
          local diagnostics_enabled = vim.diagnostic.is_enabled()
          if diagnostics_enabled then
            vim.diagnostic.disable()
          else
            vim.diagnostic.enable()
          end
        end, {})
        
        -- Configure LSP settings
        local lspconfig = require("lspconfig")
        
        -- Configure diagnostic options
        vim.diagnostic.config({
          virtual_text = true,
          underline = true,
          update_in_insert = false,
          severity_sort = true,
          float = {
            border = "rounded",
            source = "always",
          },
        })
        
        -- Set up global key bindings for diagnostics
        vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
        vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
        vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Show diagnostic under cursor" })
        vim.keymap.set("n", "<leader>cD", "<cmd>DiagnosticsToggle<CR>", { desc = "Toggle diagnostics" })
        
        -- Set up key bindings when buffer is attached to LSP
        vim.api.nvim_create_autocmd("LspAttach", {
          group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
          callback = function(event)
            local opts = { buffer = event.buf }
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = event.buf, desc = "Go to definition" })
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = event.buf, desc = "Go to declaration" })
            vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = event.buf, desc = "Go to implementation" })
            vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = event.buf, desc = "Go to references" })
            vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = event.buf, desc = "Hover documentation" })
            vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { buffer = event.buf, desc = "Signature help" })
            vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { buffer = event.buf, desc = "Rename symbol" })
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = event.buf, desc = "Code actions" })
            vim.keymap.set("n", "<leader>cf", function() vim.lsp.buf.format({ async = true }) end, { buffer = event.buf, desc = "Format code" })
          end,
        })
        
        -- Set up mason-lspconfig
        local mason_lspconfig = require("mason-lspconfig")
        
        mason_lspconfig.setup({
          -- Servers that should be automatically installed if they're not already installed
          ensure_installed = {
            "jdtls", 
            "cucumber_language_server",
          },
          -- Auto-install configured servers (with lspconfig)
          automatic_installation = true,
        })
        
        -- Set up each LSP server
        mason_lspconfig.setup_handlers({
          function(server_name)
            lspconfig[server_name].setup({})
          end,
          
          -- Custom server configurations
          ["lua_ls"] = function()
            lspconfig.lua_ls.setup({
              settings = {
                Lua = {
                  diagnostics = {
                    globals = { "vim" },
                  },
                  workspace = {
                    library = vim.api.nvim_get_runtime_file("", true),
                    checkThirdParty = false,
                  },
                  telemetry = { enable = false },
                },
              },
            })
          end,
        })
      end,
    },
  
    -- Autocompletion
    {
      "hrsh7th/nvim-cmp",
      event = "InsertEnter",
      dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets",
      },
      config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")
        
        require("luasnip.loaders.from_vscode").lazy_load()
        
        cmp.setup({
          snippet = {
            expand = function(args)
              luasnip.lsp_expand(args.body)
            end,
          },
          mapping = cmp.mapping.preset.insert({
            ["<C-Space>"] = cmp.mapping.complete(),
            ["<C-e>"] = cmp.mapping.abort(),
            ["<CR>"] = cmp.mapping.confirm({ select = true }),
            ["<Tab>"] = cmp.mapping(function(fallback)
              if cmp.visible() then
                cmp.select_next_item()
              elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
              else
                fallback()
              end
            end, { "i", "s" }),
            ["<S-Tab>"] = cmp.mapping(function(fallback)
              if cmp.visible() then
                cmp.select_prev_item()
              elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
              else
                fallback()
              end
            end, { "i", "s" }),
          }),
          sources = cmp.config.sources({
            { name = "nvim_lsp" },
            { name = "luasnip" },
            { name = "buffer" },
            { name = "path" },
          }),
          window = {
            completion = cmp.config.window.bordered(),
            documentation = cmp.config.window.bordered(),
          },
        })
      end,
    },
  }