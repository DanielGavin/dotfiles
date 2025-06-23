return {
    "stevearc/conform.nvim",
    cmd = "ConformInfo",
    event = function()
      return require("internal.events").lazyFile
    end,
    opts = {
      notify_on_error = false,
      formatters_by_ft = {
        ["*"] = { "trim_whitespace", "trim_newlines" },
      },
      format_on_save = { timeout_ms = 500, lsp_fallback = "never" },
    },
    config = function(_, opts)
      require("conform").setup(opts)
    end,
}
