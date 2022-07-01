module.exports = {
  defaultBrowser: "Firefox Nightly",
  options: {
    hideIcon: true
  },
  handlers: [
    {
      match: [
        "meet.google.com/*",
      ],
      browser: "Google Chrome"
    },
    {
      match: [
        "*.youtube.com/*",
      ],
      browser: "Brave Browser"
    }
  ]
};
