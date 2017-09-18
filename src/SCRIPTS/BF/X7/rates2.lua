
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
      { i = 22, x = 28, y = 23, min = 1, max = 30 },
      { i = 20, x = 28, y = 33, min = 20, max = 1000 },
      { i = 10, x = 90, y = 23, min = 0, max = 254 },
      { i = 9, x = 90, y = 33, min = 0, max = 100 },
      { i = 8, x = 70, y = 44, min = 0, max = 1, table = { [0]="OFF", "ON" } },
   }
}