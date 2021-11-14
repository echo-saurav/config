import os
## This is here so configs done via the GUI are still loaded.
## Remove it to not load settings done via the GUI.
config.load_autoconfig(False)
c.auto_save.interval = 15000
c.auto_save.session = True
c.colors.completion.category.bg = '#000000'
c.colors.statusbar.url.fg = 'white'
c.colors.statusbar.url.success.http.fg = 'white'
c.colors.statusbar.url.success.https.fg = 'grey'
c.colors.tabs.bar.bg = 'black'
c.colors.tabs.even.bg = 'grey'
c.colors.tabs.odd.bg = 'grey'
c.colors.tabs.selected.even.bg = 'black'
c.colors.tabs.selected.odd.bg = 'black'
c.completion.show = 'always'
c.completion.shrink = True
c.content.cache.maximum_pages = 20
c.content.dns_prefetch = True
c.content.blocking.enabled =False
c.downloads.remove_finished = 1
c.fonts.completion.category = 'bold 10pt Victor Mono'
c.hints.auto_follow_timeout = 0
c.hints.chars = 'abcdefghijklmnopqrstuvwxyz'
c.hints.find_implementation = 'javascript'
c.hints.mode = 'letter'    
c.input.insert_mode.auto_load = True
c.statusbar.widgets = ['keypress', 'url', 'progress']
c.tabs.close_mouse_button = 'right'
c.tabs.last_close = 'close'
c.tabs.max_width = 200
c.tabs.new_position.related = 'last'
c.tabs.position = 'bottom'
c.tabs.select_on_remove = 'last-used'
c.tabs.show = 'multiple'
c.colors.webpage.darkmode.enabled=True
c.colors.webpage.darkmode.algorithm="lightness-cielab"
c.colors.webpage.darkmode.contrast=0.0
c.colors.webpage.darkmode.policy.images="never"


c.scrolling.smooth=True


c.hints.leave_on_load = False

c.url.default_page = 'file:///home/ironman/packages/root-startpage/index.html'
c.url.start_pages = ['file:///home/ironman/packages/root-startpage/index.html']
c.url.searchengines = {'DEFAULT': 'https://google.com/search?q={}'}

# my shortcut
# youtube video loop
config.bind('yl', 'jseval document.getElementsByClassName("video-stream html5-main-video")[0].loop=!document.getElementsByClassName("video-stream html5-main-video")[0].loop')
# site shortcut
config.bind('ay', 'open -t youtube.com')
config.bind('ai', 'open -t instagram.com')
# config.bind('aw', 'open -t alpha.wallhaven.cc/')
config.bind('aw', 'open -t https://web.whatsapp.com/')
config.bind('ar', 'open -t reddit.com')
config.bind('ap', 'open -t pinterest.com')
config.bind('ag', 'open -t github.com/')
config.bind('au', 'open -t reddit.com/r/unixporn')
config.bind('at', 'open -t https://twitter.com/home')
config.bind('am', 'open -t https://medium.com/')
config.bind('ad', 'open -t https://discord.com/channels/@me')

# userscript shortcut
config.bind('sv', 'spawn --userscript downloadVideo {url}')
config.bind('sa', 'spawn --userscript downloadAudio {url}')
config.bind('sw', 'spawn --userscript saveWebPages  {url}')
config.bind('sb', 'spawn --userscript bookmark      {url}')
config.bind('h' , 'open -t file:///home/ironman/packages/root-startpage/index.html')

os.environ['QT_QPA_PLATFORMTHEME'] = 'kde'

# pywal colorshema
# https://github.com/andreyvpng/qutewal
config.source('qutewal.py')
