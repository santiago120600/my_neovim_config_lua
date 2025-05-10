return {
    "mfussenegger/nvim-dap",
    dependencies = {
      -- Creates a beautiful debugger UI
      "rcarriga/nvim-dap-ui",
      
      -- Required for virtual text
      "theHamsta/nvim-dap-virtual-text",
      
      -- Mason DAP installer
      "jay-babu/mason-nvim-dap.nvim",

      "nvim-neotest/nvim-nio",

      "mfussenegger/nvim-dap-python",

      "mfussenegger/nvim-jdtls",

    },
    keys = {
      -- DAP keybindings
      { "<leader>db", "<cmd>DapToggleBreakpoint<CR>", desc = "Toggle Breakpoint" },
      { "<leader>dc", "<cmd>DapContinue<CR>", desc = "Start/Continue Debugging" },
      { "<leader>dt", "<cmd>DapTerminate<CR>", desc = "Terminate Debugging" },
      { "<leader>do", "<cmd>DapStepOver<CR>", desc = "Step Over" },
      { "<leader>di", "<cmd>DapStepInto<CR>", desc = "Step Into" },
      { "<leader>dO", "<cmd>DapStepOut<CR>", desc = "Step Out" },
      { "<leader>du", function() require("dapui").toggle() end, desc = "Toggle DAP UI" },
      { "<leader>dB", function() require("dap").set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, desc = "Conditional Breakpoint" },
      { "<leader>dl", function() require("dap").run_last() end, desc = "Run Last Debug Configuration" },
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      local mason_nvim_dap = require("mason-nvim-dap")
      require("dap-python").setup("python3")

      -- Configure DAP UI
      dapui.setup({
        icons = { expanded = "▾", collapsed = "▸", current_frame = "▸" },
        controls = {
          icons = {
            pause = "⏸",
            play = "▶",
            step_into = "⏎",
            step_over = "⏭",
            step_out = "⏮",
            step_back = "b",
            run_last = "▶▶",
            terminate = "⏹",
            disconnect = "⏏",
          },
        },
      })
      
      -- Auto-open and close UI when debugging starts/ends
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
      
      -- Configure virtual text
      require("nvim-dap-virtual-text").setup({
        enabled = true,
        enabled_commands = true,
        highlight_changed_variables = true,
        highlight_new_as_changed = false,
        commented = false,
        virt_text_pos = 'eol',
        all_frames = false,
      })
      
    end,
  }