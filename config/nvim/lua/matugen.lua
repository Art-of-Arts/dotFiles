 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#11131b',
    base01 = '#1d1f27',
    base02 = '#282a32',
    base03 = '#8d90a0',
    base04 = '#c3c6d7',
    base05 = '#e1e2ed',
    base06 = '#e1e2ed',
    base07 = '#e1e2ed',
    base08 = '#ffb4ab',
    base09 = '#f0b0ff',
    base0A = '#b4c5ff',
    base0B = '#b4c5ff',
    base0C = '#f0b0ff',
    base0D = '#b4c5ff',
    base0E = '#b4c5ff',
    base0F = '#93000a',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi('TelescopeNormal',         { fg = '#e1e2ed',          bg = '#11131b' })
  hi('TelescopeBorder',         { fg = '#8d90a0',             bg = '#11131b' })
  hi('TelescopePromptNormal',   { fg = '#e1e2ed',          bg = '#11131b' })
  hi('TelescopePromptBorder',   { fg = '#8d90a0',             bg = '#11131b' })
  hi('TelescopePromptPrefix',   { fg = '#b4c5ff',             bg = '#11131b' })
  hi('TelescopePromptCounter',  { fg = '#c3c6d7',  bg = '#11131b' })
  hi('TelescopePromptTitle',    { fg = '#11131b',             bg = '#b4c5ff' })
  hi('TelescopePreviewTitle',   { fg = '#11131b',             bg = '#b4c5ff' })
  hi('TelescopeResultsTitle',   { fg = '#11131b',             bg = '#f0b0ff' })
  hi('TelescopeSelection',      { fg = '#e1e2ed',          bg = '#282a32' })
  hi('TelescopeSelectionCaret', { fg = '#b4c5ff',             bg = '#282a32' })
  hi('TelescopeMatching',       { fg = '#b4c5ff',             bold = true })
end

 -- Register a signal handler for SIGUSR1 (matugen updates)
 local signal = vim.uv.new_signal()
 signal:start(
   'sigusr1',
   vim.schedule_wrap(function()
     package.loaded['matugen'] = nil
     require('matugen').setup()
   end)
 )

 return M
