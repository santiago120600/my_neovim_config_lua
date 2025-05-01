local jdtls = require('jdtls')
local mason_registry = require("mason-registry")
local jdtls_pkg = mason_registry.get_package("jdtls")
local jdtls_path = jdtls_pkg:get_install_path()
local java_dbg_pkg = mason_registry.get_package("java-debug-adapter")
local java_dbg_path = java_dbg_pkg:get_install_path()
local java_test_pkg = mason_registry.get_package("java-test")
local java_test_path = java_test_pkg:get_install_path()
local config_dir = vim.fn.glob(jdtls_path .. '/config_win')
local path_to_jar = vim.fn.glob(jdtls_path .. '/plugins/org.eclipse.equinox.launcher_*.jar')
local workspace_dir = vim.fn.stdpath("data") .. "/jdtls-workspace/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ':t')

local bundles = {
    vim.fn.glob(java_dbg_path .. "/extension/server/com.microsoft.java.debug.plugin-*.jar", true),
}
vim.list_extend(bundles, vim.split(vim.fn.glob(java_test_path .. "/extension/server/*.jar", true), "\n"))

local config = {
    cmd = {
        "java",
        "-Declipse.application=org.eclipse.jdt.ls.core.id1",
        "-Dosgi.bundles.defaultStartLevel=4",
        "-Declipse.product=org.eclipse.jdt.ls.core.product",
        "-Dlog.protocol=true",
        "-Dlog.level=ALL",
        "-Xmx1g",
        "--add-modules=ALL-SYSTEM",
        "--add-opens", "java.base/java.util=ALL-UNNAMED",
        "--add-opens", "java.base/java.lang=ALL-UNNAMED",
        "-jar", path_to_jar,
        "-configuration", config_dir,
        "-data", workspace_dir,
    },
    root_dir = vim.fs.root(0, { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }),
    settings = {
        java = {
            configuration = {
                runtimes = {
                    {
                        name = "JavaSE-21",
                        path = "C:/Users/santi/.version-fox/cache/java/v-21.0.2+13/java-21.0.2+13",
                    },
                },
            },
        },
    },
    on_attach = function(client, bufnr)
        jdtls.setup_dap({ hotcodereplace = "auto" })
        -- Add any additional on_attach logic here
        vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>co", "<Cmd>lua require'jdtls'.organize_imports()<CR>",
            { desc = "Organize Imports" })
        vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>ce", "<Cmd>lua require'jdtls'.extract_variable()<CR>",
            { desc = "Extract Variable" })
    end,
    init_options = {
        bundles = bundles,
    }
}
-- Start or attach JDTLS
jdtls.start_or_attach(config)
require('jdtls.dap').setup_dap_main_class_configs()
