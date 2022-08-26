require("nvim-surround").setup({
  surrounds = {
        ["F"] =  {
          add = function()
            return {{"<>"}, {"</>"}}
          end
        },
    },
})
