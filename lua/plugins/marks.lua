local status_ok, marks = pcall(require, "marks")
if not status_ok then
  return
end
marks.setup {
  default_mappings = true,
  builtin_marks = { ".", "<", ">", "^" },
  cyclic = true,
  force_write_shada = false,
  refresh_interval = 250,
  sign_priority = { lower = 10, upper = 15, builtin = 8, bookmark = 20 },
  excluded_filetypes = {},
  bookmark_1 = {
    sign = "⚑",
    virt_text = "bookmark",
    annotate = false,

  },
  mappings = {}
}
