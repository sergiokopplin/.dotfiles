module.exports = {
    config: {
      fontSize: 14,
      fontFamily: "Ubuntu Mono, Menlo",
      cursorBlink: true
    },
  
    keymaps: {
      "editor:copy": "ctrl+c",
      "editor:paste": "ctrl+v",
      "editor:break": "alt+c",
      "pane:close": "ctrl+w",
      "pane:splitVertical": "ctrl+d",
      "pane:splitHorizontal": "ctrl+shift+d",
      "tab:new": "ctrl+t",
    },
  
    plugins: ["hyper-horizon-theme", "hypercwd"]
};