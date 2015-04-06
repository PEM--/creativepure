# Black list everything
BrowserPolicy.content.disallowInlineScripts()
BrowserPolicy.content.disallowConnect()
# Only allow necessary protocols
rootUrl = __meteor_runtime_config__.ROOT_URL
BrowserPolicy.content.allowConnectOrigin rootUrl
BrowserPolicy.content.allowConnectOrigin (rootUrl.replace 'http', 'ws')
# Allow origin for Meteor hosting
BrowserPolicy.content.allowConnectOrigin 'http://*.meteor.com'
BrowserPolicy.content.allowConnectOrigin 'ws://*.meteor.com'
BrowserPolicy.content.allowConnectOrigin 'https://*.meteor.com'
BrowserPolicy.content.allowConnectOrigin 'wss://*.meteor.com'
