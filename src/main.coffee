# Alan Smith
# MIT License
# Updated 23-10-2016
# github.com/smithalan92 

# URL patterns we want the context menu to appear for
targetUrls = [
  "http://reddit.com/r/*"
  "http://www.reddit.com/r/*"
  "https://reddit.com/r/*"
  "https://www.reddit.com/r/*"
]
# Context Menu Title
contextMenuTitle = 'Open on Imagoid'
# Context menu context targets
contexts = ['link']

# Handle click of context menu
OnClick = (info) ->
  # We just want the subreddit name
  subreddit = info.linkUrl.split("/")[4]
  # Open imagoid in a new tab
  chrome.tabs.create
    url: "http://imagoid.com/r/#{subreddit}"

# Create the context menu
chrome.contextMenus.create
  title: contextMenuTitle
  contexts: contexts
  targetUrlPatterns: targetUrls
  onclick: OnClick
