return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()

    vim.keymap.set('n', '<C-h><C-m>', function()
      harpoon:list():add()
    end)
    vim.keymap.set('n', '<C-h><C-l>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    -- Set <space>1..<space>5 be my shortcuts to moving to the files
    for _, idx in ipairs { 1, 2, 3, 4, 5 } do
      vim.keymap.set('n', string.format('<C-%d>', idx), function()
        harpoon:list():select(idx)
      end)
    end
  end,
}
