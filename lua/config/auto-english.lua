-- ~/.config/nvim/lua/config/auto-english.lua
local function set_english_input()
	vim.fn.system({ "im-select", "com.apple.keylayout.ABC" })
end

-- Insert mode 진입 전마다 영어로 강제 전환
vim.api.nvim_create_autocmd("InsertEnter", {
	callback = set_english_input,
})
