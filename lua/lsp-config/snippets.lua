local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local n = require("luasnip.extras").nonempty
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local types = require("luasnip.util.types")
local conds = require("luasnip.extras.expand_conditions")

local capitalizeString = function(arg)
  return (arg[1][1]:gsub("^%l", string.upper))
end

local returnFileName = function(_, snip)
  return snip.env.TM_FILENAME:match("(.+)%..+")
end

ls.add_snippets(nil, {
  typescriptreact = {
    s("us", {
      t("const ["), i(1, "name"), t(", set"), f(capitalizeString, 1), t("] = useState("), i(2, "defaultValue"), t(")")
    }),
    s({
      trig = "rfc",
      name = "React func component",
      dscr = "Create a React Functional Component",
      docstring = "Create a React Functional Component"
    }, fmt([[
import React, {{FC}} from 'react' 

type {}Props = {{
  {}
}}

const {}:FC<{}Props> = ({}) => {{
  return {}
}}

export default {};
    ]], {
      f(returnFileName), i(1, ""), f(returnFileName), f(returnFileName), i(2, "props"), i(0, "<div/>"), f(returnFileName)
    })),
    s("ue", fmt([[
    useEffect(() => {{
      {}
    }}, [{}])
    ]], {
    i(1, "effect"), i(0, "deps")
    }))
  },
  all = {
    s('func', fmt([[const {} = () => {{
      {}
    }}]], { i(1, "funcName"), i(0, "body") })),
    s('log', {t("console.log("), i(0), t(")")})
  }
})
