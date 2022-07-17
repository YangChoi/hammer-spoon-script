hs.alert.show('하이용!')

hs.hotkey.bind({'shift', 'cmd'}, 'H', function() hs.alert.show('하이용!') end)

function hello()
  hs.alert.show('하이용!')
end

hs.hotkey.bind({'shift', 'cmd'}, 'H', hello)


-- hammerSpoon reload shortcut
hs.hotkey.bind({'option', 'cmd'}, 'r', hs.reload)

-- open Notes
hs.hotkey.bind({'shift', 'option'}, 'N', function()
  hs.application.launchOrFocus('Notes')
end)

-- open chrome
hs.hotkey.bind({'shift', 'option'}, 'C', function ()
  hs.application.launchOrFocus('Google Chrome')
end)