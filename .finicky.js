module.exports = {
  defaultBrowser: "Firefox Nightly",
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
