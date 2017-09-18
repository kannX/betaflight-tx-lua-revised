
return {
    read              = 92, -- MSP_FILTER_CONFIG
    write             = 93, -- MSP_SET_FILTER_CONFIG
    eepromWrite       = true,
    reboot            = false,
    title             = "Filters",
    minBytes          = 18, 
   text= {
      { t = "LPF",    x = 1, y = 14, to = SMLSIZE },
      { t = "Gyro",   x = 1, y = 24, to = SMLSIZE },
      { t = "DTer",   x = 1, y = 34, to = SMLSIZE },
      { t = "Yaw",    x = 1, y = 44, to = SMLSIZE },
      { t = "Gyro1",  x = 40, y = 14, to = SMLSIZE },
      { t = "Hz",     x = 40, y = 24, to = SMLSIZE },
      { t = "CO",     x = 40, y = 34, to = SMLSIZE },
      { t = "Gyro2",  x = 70, y = 14, to = SMLSIZE },
      { t = "Hz",     x = 70, y = 24, to = SMLSIZE },
      { t = "CO",     x = 70, y = 34, to = SMLSIZE },
      { t = "DTerm",  x = 100, y = 14, to = SMLSIZE },
      { t = "Hz",     x = 100, y = 24, to = SMLSIZE },
      { t = "CO",     x = 100, y = 34, to = SMLSIZE },
      { t = "DTerm LP Type", x = 40, y = 44, to = SMLSIZE },
   },
   fields = {
      { x = 22, y = 24, min = 0, max = 255,   to = SMLSIZE, vals = { 1 } },
      { x = 22, y = 34, min = 0, max = 16000, to = SMLSIZE, vals = { 2, 3 } },
      { x = 22, y = 44, min = 0, max = 500,   to = SMLSIZE, vals = { 4, 5 } },
      { x = 52, y = 24, min = 0, max = 16000, to = SMLSIZE, vals = { 6, 7 } },
      { x = 52, y = 34, min = 0, max = 16000, to = SMLSIZE, vals = { 8, 9 } },
      { x = 82, y = 24, min = 0, max = 16000, to = SMLSIZE, vals = { 14, 15 } },
      { x = 82, y = 34, min = 0, max = 16000, to = SMLSIZE, vals = { 16, 17 } },
      { x = 112, y = 24, min = 0, max = 16000, to = SMLSIZE, vals = { 10, 11 } },
      { x = 112, y = 34, min = 0, max = 16000, to = SMLSIZE, vals = { 12, 13 } },
      { x = 102, y = 44, min = 0, max = 2,     to = SMLSIZE, vals = { 18 }, table = { [0] = "PT1", [1] = "BIQUAD", [2] = "FIR" } },
   },
}