from ADI import ADI
import time


sdr = ADI()

sdr.set_rf_frequency(2400000000)
sdr.set_samplerate(30e6)
sdr.set_tx_frequency(2400000000)
sdr.set_gain_tx(-40)
sdr.createSignal()

data = sdr.transmit_and_receive(0, 0)

sdr.plot_revieved(data)
