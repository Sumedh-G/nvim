-- Catppuccin
local catppuccin_options = {
  compile_path = vim.fn.stdpath "cache" .. "/catpuccin",
  flavour = "mocha", -- latte, frappe, macchiato, mocha
  transparent_background = true,
  show_end_of_buffer = true,
  dim_inactive = {
    enabled = false,
    shade = "dark",
    percentage = 0.15,
  },
  color_overrides = {
    mocha = {
      rosewater = "#efc9c2",
      flamingo = "#ebb2b2",
      pink = "#f2a7de",
      mauve = "#b889f4",
      red = "#ea7183",
      maroon = "#ea838c",
      peach = "#f39967",
      yellow = "#eaca89",
      green = "#96d382",
      teal = "#78cec1",
      sky = "#91d7e3",
      sapphire = "#68bae0",
      blue = "#739df2",
      lavender = "#a0a8f6",
      text = "#b5c1f1",
      subtext1 = "#a6b0d8",
      subtext0 = "#959ec2",
      overlay2 = "#848cad",
      overlay1 = "#717997",
      overlay0 = "#63677f",
      surface2 = "#505469",
      surface1 = "#3e4255",
      surface0 = "#2c2f40",
      base = "#1a1c2a",
      mantle = "#141620",
      crust = "#0e0f16",
    },
  },
  styles = {
    comments = { "italic", "bold" },
    conditionals = { "italic" },
    loops = {},
    functions = { "bold" },
    keywords = {},
    strings = {},
    variables = { "italic" },
    numbers = {},
    booleans = { "italic" },
    properties = {},
    types = { "italic" },
    operators = {},
  },
  custom_highlights = function(colors)
    return {
      NonText = { fg=colors.surface2 },
      MatchParen = { fg=colors.blue },
      TreesitterContextLineNumber = { fg=colors.sapphire },
      -- Lualine
      LuaLineDiffAdd = { fg=colors.green },
      LuaLineDiffChange = { fg=colors.blue },
      LuaLineDiffDelete = { fg=colors.red }
    }
  end,
  default_integrations = false,
  integrations = {
    mason = true,
    dap = true,
    dap_ui = true,
    lsp_trouble = true,
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = { "italic" },
        hints = { "italic" },
        warnings = { "italic" },
        information = { "italic" },
        ok = { "italic" },
      },
      underlines = {
        errors = { "undercurl" },
        hints = { "underline" },
        warnings = { "underline" },
        information = { "underline" },
        ok = { "underline" },
      },
      inlay_hints = {
        background = true,
      },
    },
    cmp = true,
    markdown = true,
    render_markdown = true,
    treesitter = true,
    treesitter_context = true,
    semantic_tokens = true,
    telescope = {
      enabled = true,
    },
    rainbow_delimiters = true,
    beacon = true,
    indent_blankline = {
      enabled = true,
      colored_indent_levels = true,
      scope_color = "lavender",
    },
    nvim_surround = true,
    gitsigns = true,
    overseer = true,
    fidget = true,
    which_key = true,
    snacks = {
      enabled = true,
    }
  },
}

return catppuccin_options
