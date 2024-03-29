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

if not vim.g.my_mappings then
    mapkey('', '<Space>', '<Nop>', opts)
    vim.g.mapleader = ' '
    local mappings = {
        -- telescope
        {'n', '<leader>p', '<cmd>Telescope find_files<cr>'},
        {'n', '<leader>ff', '<cmd>Telescopes find_files<cr>'},
        {'n', '<leader>fi', '<cmd>Telescope git_files<cr>'},
        {'n', '<leader>fg', '<cmd>Telescope live_grep<cr>'},
        {'n', '<leader>fs', '<cmd>Telescope grep_string<cr>'},
        {'n', '<leader>fb', '<cmd>Telescope buffers<cr>'},
        {'n', '<leader>fh', '<cmd>Telescope help_tags<cr>'},

        {"n", "<leader>xx", "<cmd>TroubleToggle<cr>"},
        {"n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>"},
        {"n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>"},
        {"n", "<leader>xl", "<cmd>Trouble loclist<cr>"},
        {"n", "<leader>xq", "<cmd>Trouble quickfix<cr>"},
        {"n", "gR", "<cmd>Trouble lsp_references<cr>"},
        --{"n", "gD", "<cmd>Trouble lsp_definitions<cr>"},

        --sane terminal insert mode exit
        {'t', '<Esc>', '<C-\\><C-n>'}
    }
    set_keymaps(mappings)
    vim.g.my_mappings = true
end
