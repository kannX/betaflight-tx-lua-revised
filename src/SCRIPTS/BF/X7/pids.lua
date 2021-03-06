
return {
   read           = 112, -- MSP_PID
   write          = 202, -- MSP_SET_PID
   title          = "PIDs",
   reboot         = false,
   eepromWrite    = true,
   minBytes       = 8,
   text = {
      { t = "P",      x =  48,  y = 14 },
      { t = "I",      x = 76,   y = 14 },
      { t = "D",      x = 104,  y = 14 },
      { t = "ROLL",   x =  1,   y = 26 },
      { t = "PITCH",  x =  1,   y = 36 },
      { t = "YAW",    x =  1,   y = 46 },
   },
   fields = {
      -- P
      { x =  42, y = 26, min = 0, max = 200, vals = { 1 } },
      { x =  42, y = 36, min = 0, max = 200, vals = { 4 } },
      { x =  42, y = 46, min = 0, max = 200, vals = { 7 } },
      -- I
      { x =  70, y = 26, min = 0, max = 200, vals = { 2 } },
      { x =  70, y = 36, min = 0, max = 200, vals = { 5 } },
      { x =  70, y = 46, min = 0, max = 200, vals = { 8 } },
      -- D
      { x = 98, y = 26, min = 0, max = 200, vals = { 3 } },
      { x = 98, y = 36, min = 0, max = 200, vals = { 6 } },
      --{ x = 122, y = 46, i =  9 },
   },
}