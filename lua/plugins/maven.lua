return {
    "eatgrass/maven.nvim",
    cmd = { "Maven", "MavenExec" },
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require('maven').setup({
            executable = "C:/Users/santi/.version-fox/cache/maven/current/bin/mvn.cmd",
            cwd = vim.fn.getcwd(),
            settings = nil, -- specify the settings file or use the default settings
            commands = {    -- add custom goals to the command list
                { cmd = { "clean", "install" }, desc = "clean then install" },
            },
        })
    end
}
