return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        depedencies = { "nvim-lua/planery.nvim" },
    },
    {
        "smartpde/telescope-recent-files"
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                    recent_files = {
                        only_cwd = true,
                    },
                },
            })

            require("telescope").load_extension("ui-select")
            require("telescope").load_extension("recent_files")
        end,
    },
}
