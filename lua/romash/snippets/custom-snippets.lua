local luasnip = require("luasnip")
local s = luasnip.snippet
local t = luasnip.text_node

luasnip.add_snippets("vue", {
  s("vbase-setup", {
    t({"<script setup lang=\"ts\">", ""}),
    t("</script>"),
    t({"", "", "<template>", "  <div>", "", "  </div>", "</template>", "", ""}),
    t({"<style scoped>", "", "</style>"})
  }),
})
