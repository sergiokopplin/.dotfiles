module.exports = {
    config: {
        fontSize: 14,
        fontFamily: "Fira Code, Ubuntu Mono, Menlo",
        cursorBlink: true,
        hyperTabs: {
            trafficButtons: false
        },
        showHamburgerMenu: false,
        showWindowControls: false
    },

    keymaps: {
        "editor:copy": "ctrl+c",
        "editor:paste": "ctrl+v",
        "editor:break": "alt+c",
        "pane:close": "ctrl+w",
        "pane:splitVertical": "ctrl+d",
        "pane:splitHorizontal": "ctrl+shift+d",
        "tab:new": "ctrl+t",
        "pane:next": "ctrl+2",
        "pane:prev": "ctrl+1",
        "tab:next": "ctrl+alt+2",
        "tab:prev": "ctrl+alt+1"
    },

    plugins: [
        "hyper-horizon-theme",
        "hypercwd",
        "hyper-tabs-enhanced",
        "hyper-hover-header"
    ]
};
