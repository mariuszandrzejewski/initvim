local opts = { noremap = true, silent = true }

local mapkey = vim.api.nvim_set_keymap

-- mappings = { {mode, mapping, command, opts(optional)} }
function set_keymaps (mappings)
    for k, v in pairs(mappings) do
        local keybind_opts
        if v[4] then
            keybind_opts = v[4]
        else
            keybind_opts = opts
        end
        vim.api.nvim_set_keymap(v[1], v[2], v[3], keybind_opts)
    end

end

mapkey("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

if not vim.g.my_mappings then
    local mappings = {
    }
    set_keymaps(mappings)
    vim.g.my_mappings = true
end
