from ADI import ADI
import time
import numpy as np

sdr = ADI()

sdr.set_rf_frequency(3095000000)

sdr.set_samplerate(30e6)

sdr.set_tx_frequency(3095000000)

sdr.set_gain_tx(-50)

sdr.createSignal()

sdr.tx_transmit(0, 1)

time.sleep(0.2)

data = sdr.receive([0, 1, 2, 3])

sdr.plot_revieved(data)