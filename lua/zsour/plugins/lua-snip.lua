return {
	"L3MON4D3/LuaSnip",
	version = "v2.*",
	build = "make install_jsregexp",
	config = function()
		local cmp = require("cmp")
		local ls = require("luasnip")
		local s = ls.snippet
		local sn = ls.snippet_node
		local t = ls.text_node
		local i = ls.insert_node
		local f = ls.function_node
		local c = ls.choice_node
		local d = ls.dynamic_node
		local r = ls.restore_node
		local extras = require("luasnip.extras")
		local rep = extras.rep
		local fmt = require("luasnip.extras.fmt").fmt
		ls.setup({
			keep_roots = true,
			link_roots = true,
			link_children = true,
			update_events = "TextChanged,TextChangedI",
		})

		vim.keymap.set({ "i", "s" }, "<A-l>", function()
			if ls.expand_or_jumpable() then
				ls.expand_or_jump()
			end
		end, { silent = true })

		vim.keymap.set({ "i", "s" }, "<A-h>", function()
			if ls.jumpable(-1) then
				ls.jump(-1)
			end
		end, { silent = true })

		ls.add_snippets("cpp", {
			s(
				"dp",
				fmt(
					[[
        #include<iostream>
        #include<vector>
        #include<string>
        #include<algorithm>
        #include<unordered_map>
        using namespace std;

        int solve([startPos]){

        }

        int main(){
          int ans = solve();
          cout << ans << endl;
          return 0;
        }
          ]],
					{
						startPos = i(1),
					},
					{ delimiters = "[]" }
				)
			),
		})
	end,
}
