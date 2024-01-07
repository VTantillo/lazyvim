local ls = require("luasnip")

ls.add_snippets("typescriptreact", {
  ls.snippet("clx", {
    ls.text_node("className={cn('"),
    ls.insert_node(1),
    ls.text_node("')}"),
  }),
})
