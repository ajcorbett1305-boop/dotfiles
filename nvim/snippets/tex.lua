local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local rep = require("luasnip.extras").rep
local fmta = require("luasnip.extras.fmt").fmta

return {
  s("im", fmta("$<>$", { i(1) })),

  s("dm", fmta("\\[\n  <>\n\\]", { i(1) })),

  s(
    "beg",
    fmta("\\begin{<>}\n  <>\n\\end{<>}", {
      i(1, "environment"),
      i(2),
      rep(1),
    })
  ),

  s("def", fmta("\\begin{definition}\n  <>\n\\end{definition}", { i(1) })),

  s("thm", fmta("\\begin{theorem}\n  <>\n\\end{theorem}", { i(1) })),

  s("prp", fmta("\\begin{proposition}\n  <>\n\\end{proposition}", { i(1) })),

  s("lma", fmta("\\begin{lemma}\n  <>\n\\end{lemma}", { i(1) })),

  s("cry", fmta("\\begin{corollary}\n  <>\n\\end{corollary}", { i(1) })),

  s("pf", fmta("\\begin{proof}\n  <>\n\\end{proof}", { i(1) })),

  s("ex", fmta("\\begin{example}\n  <>\n\\end{example}", { i(1) })),

  s("num", fmta("\\begin{enumerate}\n  \\item <>\n\\end{enumerate}", { i(1) })),

  s("bb", fmta("\\mathbb{<>}", { i(1, "R") })),

  s("cal", fmta("\\mathcal{<>}", { i(1) })),

  s("var", fmta("\\mathcal{V}\\left(<>\\right)", { i(1, "I") })),

  s("ide", fmta("\\left\\langle <>\\right\\rangle", { i(1) })),
}
