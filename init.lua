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

-- window hint
hs.hotkey.bind({'shift'}, 'F1', hs.hints.windowHints)

-- change window hints shortcut - left hand
hs.hints.hintChars = {'1', '2', '3', '4', 'Q', 'W', 'E', 'R'}
hs.hotkey.bind({'shift'}, 'F1', hs.hints.windowHints)

-- move window
local function move_win_to_left()
  local win = hs.window.focusedWindow() -- activated app window
  local frame = win:frame()
  local screen = win:screen():frame() -- current window
  frame.x = screen.x
  frame.y = screen.y
  frame.w = screen.w / 2 -- make width 1/2
  frame.h = screen.h
  win:setFrame(frame)
end

local function move_win_to_right()
  local win = hs.window.focusedWindow()
  local frame = win:frame()
  local screen = win:screen():frame()
  frame.x = screen.x + (screen.w / 2) -- make 1/2 x coordinate of window width 
  frame.y = screen.y
  frame.w = screen.w / 2 -- make 1/2 width of window
  frame.h = screen.h
  win:setFrame(frame)
end

hs.hotkey.bind({'option', 'shift'}, 'left', move_win_to_left)
hs.hotkey.bind({'option', 'shift'}, 'right', move_win_to_right)

