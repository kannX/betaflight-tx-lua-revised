
return {
   read           = 88, -- MSP_VTX_CONFIG
   write          = 89, -- MSP_VTX_SET_CONFIG
   eepromWrite    = false,
   reboot         = false,
   postRead       = postReadVTX,
   getWriteValues = getWriteValuesVTX,
   saveMaxRetries = 0,
   saveTimeout    = 300, -- 3s
   title          = "VTX", 
   text = {},
   fields = {
      -- Super Rate
      { t = "Band",    x = 3,  y = 14, sp = 34, i=2, min=1, max=5, table = { "A", "B", "E", "F", "R" }, upd = updateVTXFreq },
      { t = "Chan.",   x = 3,  y = 24, sp = 34, i=3, min=1, max=8, upd = updateVTXFreq },
      { t = "Power",   x = 3,  y = 34, sp = 34, i=4, min=1 },
      { t = "Pit",     x = 3,  y = 44, sp = 34, i=5, min=0, max=1, table = { [0]="OFF", "ON" } },
      { t = "Dev",     x = 70, y = 14, sp = 32, i=1, ro=true, table = {[3]="SmartAudio",[4]="Tramp",[255]="None"} },
      { t = "Freq",    x = 70, y = 24, sp = 32, i="f", ro=true },
   },
}