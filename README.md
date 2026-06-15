# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Markdown preview test

Use this section to verify that `render-markdown.nvim` works in your buffer.

### Text formatting

This paragraph has **bold text**, *italic text*, ~~strikethrough~~, and `inline code`.
You can also combine them: ***bold and italic***, or a [link to Neovim](https://neovim.io).

### Lists

Unordered:

- Neovim config lives in `~/.config/nvim`
- Plugins are managed by [lazy.nvim](https://github.com/folke/lazy.nvim)
- Markdown extra is enabled in `lua/plugins/markdown.lua`

Ordered:

1. Open this file in Neovim
2. Confirm headings and code blocks look rendered
3. Press `<leader>um` to toggle rendering on/off
4. Press `<leader>cp` to open browser preview

### Blockquote

> Markdown rendering should make this block stand out from normal text.
> If you only see `>` characters, the plugin is probably not active yet.

### Code block

```lua
-- lua/plugins/markdown.lua
return {
  { import = "lazyvim.plugins.extras.lang.markdown" },
}
```

```bash
nvim README.md
# inside Neovim: :Lazy sync
```

### Table

| Keymap       | Action                          |
| ------------ | ------------------------------- |
| `<leader>um` | Toggle in-buffer markdown render |
| `<leader>cp` | Toggle browser markdown preview  |

---

If everything looks good, delete this test section or keep it as a quick reference.

