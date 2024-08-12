return {
  "folke/flash.nvim",
  vscode = true, -- Normal vscode sucks dick
  keys = {
    { "s", false },
    { "S", false },
    {
      "s",
      mode = { "n", "x", "o" },
      function()
        -- Forward search
        require("flash").jump({ search = { forward = true, wrap = false, muli_window = false } })
      end,
      desc = "Flash forward",
    },
    {
      "S",
      mode = { "n", "x", "o" },
      function()
        -- Backward search
        require("flash").jump({ search = { forward = false, wrap = false, muli_window = false } })
      end,
      desc = "Flash backward",
    },
  },
}
