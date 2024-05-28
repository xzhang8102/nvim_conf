--[[
// settings in vscode
{
  "extensions.experimental.affinity": {
    "asvetliakov.vscode-neovim": 2
  },
  "vscode-neovim.compositeKeys": {
    "jj": {
      "command": "vscode-neovim.escape"
    }
  },
  "vscode-neovim.compositeTimeout": 200
}
--]]
local code = require('vscode-neovim') 
vim.keymap.set('n', ']c', function()
  code.action('workbench.action.editor.nextChange')
end)
vim.keymap.set('n', '[c', function()
  code.action('workbench.action.editor.previousChange')
end)