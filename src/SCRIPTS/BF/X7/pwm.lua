return {
    read              = 90, -- MSP_ADVANCED_CONFIG
    write             = 91, -- MSP_SET_ADVANCED_CONFIG
    reboot            = true,
    eepromWrite       = true,
    title             = "PWM",
    minBytes             = 9,
   text= {
      { t = "32K",         x = 3,  y = 14, to = SMLSIZE },
      { t = "Gyro Rt",     x = 3,  y = 24, to = SMLSIZE },
      { t = "PID Rt",      x = 3,  y = 34, to = SMLSIZE },
      { t = "Protocol",    x = 60, y = 14, to = SMLSIZE },
      { t = "Unsynced",    x = 60, y = 24, to = SMLSIZE },
      { t = "PWM Rate",    x = 60, y = 34, to = SMLSIZE },
      { t = "Idle Offset", x = 3,  y = 44, to = SMLSIZE }
   },
   fields = {
      { x = 40,  y = 14, i = 9, min = 0, max = 1, to = SMLSIZE, table = { [0] = "OFF", "ON" }, upd = updateRateTables },
      { x = 40,  y = 24, i = 1, min = 1, max = 32, to = SMLSIZE, upd = updatePidRateTable },
      { x = 40,  y = 34, i = 2, min = 1, max = 16, to = SMLSIZE, },
      { x = 105, y = 14, i = 4, min = 0, max = 9, to = SMLSIZE,
         table = { [0]="OFF", "ONESHOT125", "ONESHOT42", "MULTISHOT",
                       "BRUSHED", "DSHOT150", "DSHOT300", "DSHOT600",
                       "DSHOT1200", "PROSHOT1000" } },
      { x = 105, y = 24, i = 3, min = 0, max = 1, to = SMLSIZE, table = { [0] = "OFF", "ON" } },
      { x = 105,  y = 34, i = 5, min = 200, max = 32000, to = SMLSIZE },
      { x = 60, y = 44, i = 7, min = 2000, max = 32000, to = SMLSIZE },
   },
   calculateGyroRates = function(self, baseRate)
        self.gyroRates = {}
        self.fields[2].table = {}
        for i=1, 32 do
            self.gyroRates[i] = baseRate/i
            local fmt = nil
            self.fields[2].table[i] = string.format("%.2f",baseRate/i)
        end
    end,
    calculatePidRates = function(self, baseRate)
        self.fields[3].table = {}
        for i=1, 16 do
            self.fields[3].table[i] = string.format("%.2f",baseRate/i)
        end
    end,
    updateRateTables = function(self)
        if self.values[9] == 0 then
            self.calculateGyroRates(self, 8)
            self.calculatePidRates(self, 8)
        elseif self.values[9] == 1 then
            self.calculateGyroRates(self, 32)
            self.calculatePidRates(self, 32)
        end
    end,
    updatePidRateTable = function(self)
        local newRateIdx = self.values[1]
        local newRate = self.gyroRates[newRateIdx]
        self.calculatePidRates(self, newRate)
    end
}
