local devicons = require "nvim-web-devicons"

devicons.setup {
  override = {
    css = {
      icon = "",
      color = "#029ae6",
      name = "css",
    },
    [".env"] = {
      icon = "",
      color = "#f7df1e",
      name = "env",
    },
    html = {
      icon = "",
      color = "#e34c26",
      cterm_color = "166",
      name = "Html",
    },
    js = {
      icon = "",
      color = "#f7df1e",
      cterm_color = "185",
      name = "js",
    },
    ts = {
      icon = "ﯤ",
      color = "#3178c6",
      cterm_color = "67",
      name = "ts",
    },
    tsx = {
      icon = "",
      color = "#3178c6",
      cterm_color = "67",
      name = "tsx",
    },
    txt = {
      icon = "",
      color = "#05a8fa",
      cterm_color = "67",
      name = "txt",
    },

    vue = {
      icon = "﵂",
      cterm_color = "67",
      color = "#42B883",
      name = "vue",
    },
    ["component.ts"] = {
      icon = "",
      color = "#3178c6",
      name = "componentts",
    },
    ["test.tsx"] = {
      icon = "",
      color = "#3178c6",
      name = "testTSX",
    },
    ["module.ts"] = {
      icon = "",
      color = "#dd1b16",
      name = "angularjson",
    },
    ["angular.json"] = {
      icon = "",
      color = "#dd1b16",
      name = "angularjson",
    },
    ["package.json"] = {
      icon = "",
      color = "#75bb39",
      name = "PackageJson",
    },
    ["package-lock.json"] = {
      icon = "",
      color = "#75bb39",
      name = "PackageLockJson",
    },
    [".gitignore"] = {
      icon = "",
      color = "#fc3404",
      name = "GitIgnore",
    },
  },
}
