return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()

    vim.keymap.set('n', '<leader>ha', function()
      harpoon:list():add()
    end, { desc = 'Add to harpoon list' })
    vim.keymap.set('n', '<leader>hl', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Show harpoon list' })

    for idx = 1, 9 do
      vim.keymap.set('n', '<leader>' .. idx, function()
        harpoon:list():select(idx)
      end, { desc = 'which_key_ignore' })
    end
  end,
}
