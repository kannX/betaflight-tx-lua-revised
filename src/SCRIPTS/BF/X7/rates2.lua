
return {
   read           = 94, -- MSP_PID_ADVANCED
   write          = 95, -- MSP_SET_PID_ADVANCED
   title          = "Rates (2/2)",
   reboot         = false,
   eepromWrite    = true,
   minBytes       = 23,
   text = {
      { t = "Anti-Grav.", x = 3, y = 13, to = SMLSIZE },
      { t = "Gain", x = 3, y = 23, to = SMLSIZE },
      { t = "Thr",  x = 3, y = 33, to = SMLSIZE },
      { t = "Dterm Setp.", x = 70, y = 13, to = SMLSIZE },
      { t = "Wgt", x = 70, y = 23, to = SMLSIZE },
      { t = "Trn", x = 70, y = 33, to = SMLSIZE },
      { t = "VBAT Comp.", x = 3, y = 44, to = SMLSIZE }
   },
   fields = {
      { x = 28,  y = 23, min = 1000, max = 30000, vals = { 22, 23 }, scale = 1000, mult = 1000 },
      { x = 28,  y = 33, min = 20, max = 1000, vals = { 20, 21 } },
      { x = 90,  y = 23, min = 0, max = 254, vals = { 10 }, scale = 100 },
      { x = 90,  y = 33, min = 0, max = 100, vals = { 9 }, scale = 100 },
      { x = 70,  y = 44, min = 0, max = 1, vals = { 8 }, table = { [0]="OFF", "ON" } },
   }
}