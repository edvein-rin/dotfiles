local init_modules = {
   "core",
}

for _, module in ipairs(init_modules) do
   local ok, err = pcall(require, module)
   if not ok then
      error("Error loading " .. module .. "\n\n" .. err)
   end
end

local autocmds = {
  kitty_mp = {
    {"autocmd!"};
    {"au VimLeave * :silent !kitty @ set-spacing padding=20 margin=10"};
    {"au VimEnter * :silent !kitty @ set-spacing padding=0 margin=0"};
  }
}

-- nvim_create_augroups(autocmds)

