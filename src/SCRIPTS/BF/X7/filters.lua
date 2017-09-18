
return {
   read              = 92, -- MSP_FILTER_CONFIG
   write             = 93, -- MSP_SET_FILTER_CONFIG
   eepromWrite       = true,
   reboot            = false,
   postRead          = postReadFilters,
   getWriteValues    = getWriteValuesFilters,
   title 
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
      { x = 22, y = 24, i = 1, min = 0, max = 255, to = SMLSIZE },
      { x = 22, y = 34, i = 2, min = 0, max = 16000, to = SMLSIZE },
      { x = 22, y = 44, i = 3, min = 0, max = 500, to = SMLSIZE },
      { x = 52, y = 24, i = 4, min = 0, max = 16000, to = SMLSIZE },
      { x = 52, y = 34, i = 5, min = 0, max = 16000, to = SMLSIZE },
      { x = 82, y = 24, i = 6, min = 0, max = 16000, to = SMLSIZE },
      { x = 82, y = 34, i = 7, min = 0, max = 16000, to = SMLSIZE },
      { x = 112, y = 24, i = 8, min = 0, max = 16000, to = SMLSIZE },
      { x = 112, y = 34, i = 9, min = 0, max = 16000, to = SMLSIZE },
      { x = 102, y = 44, i = 10, to = SMLSIZE, min = 0, max = 2, table = { [0] = "PT1", [1] = "BIQUAD", [2] = "FIR" } },
   },
}