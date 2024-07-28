local setup, vimBlade = pcall(require, "vim-blade")

if not setup then
   return
end

vimBlade.setup()
