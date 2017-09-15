return {
   read           = 111, -- MSP_RC_TUNING
   write          = 204, -- MSP_SET_RC_TUNING
   title          = "Rates (1/2)",
   reboot         = false,
   eepromWrite    = true,
   postRead       = postReadRates,
   getWriteValues = getWriteValuesRates,
   text = {
      { t = "RC",       x = 27,  y = 11, to = SMLSIZE },
      { t = "Rate",     x = 24,  y = 18, to = SMLSIZE },
      { t = "Super",    x = 45,  y = 11, to = SMLSIZE },
      { t = "Rate",     x = 48,  y = 18, to = SMLSIZE },
      { t = "RC",       x = 72,  y = 11, to = SMLSIZE },
      { t = "Expo",     x = 70,  y = 18, to = SMLSIZE },
      { t = "Thr",      x = 92,  y = 11, to = SMLSIZE },
      { t = "Mid",      x = 92,  y = 18, to = SMLSIZE },
      { t = "Exp",      x = 92,  y = 36, to = SMLSIZE },
      { t = "TPA",      x = 112, y = 11, to = SMLSIZE },
      { t = "Thr",      x = 112, y = 18, to = SMLSIZE },
      { t = "Brk",      x = 112, y = 36, to = SMLSIZE },         
      { t = "ROLL",     x = 1,   y = 26, to = SMLSIZE },
      { t = "PITCH",    x = 1,   y = 36, to = SMLSIZE },
      { t = "YAW",      x = 1,   y = 46, to = SMLSIZE },
   },
   fields = {
      -- RC Rate
      { x = 27,   y = 31,  i = 1 }, 
      { x = 27,   y = 46,  i = 12 },
      -- Super Rate
      { x = 50,   y = 26,  i = 3 },
      { x = 50,   y = 36,  i = 4 },
      { x = 50,   y = 46,  i = 5 },
      -- RC Expo
      { x = 70,   y = 31,  i = 2 },
      { x = 70,   y = 46,  i = 11 },
      -- Throttle Expo
      { x = 92,  y = 26,  i = 7 },
      { x = 92,  y = 46,  i = 8 },  
      -- TPA
      { x = 112,  y = 26,  i = 6, min = 0, max = 100 },
      { x = 108,  y = 46,  i = 9, min = 1000, max = 2000 },                  
   },
}