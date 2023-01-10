local status_ok, todo = pcall(require, "todo")
if not status_ok then
  return
end

todo.setup {
  opts = {
    --file_path = "/Users/acker/todo.txt",
    upload_to_reminder = true,
  },
}
