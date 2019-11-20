import time
import adi
import matplotlib.pyplot as plt
import numpy as np
from scipy import signal
import time
import threading


class ADI:
    def __init__(self):
        self.sdr = adi.FMComms5(uri='ip:analog.local')

    def set_rf_frequency(self, frequency):
        self.sdr.rx_lo = frequency
        self.sdr.rx_lo_chip_b = frequency
    
    def set_tx_frequency(self, frequency):
        self.sdr.tx_lo = frequency
        self.sdr.tx_lo_chip_b = frequency
        self.sdr.tx_cyclic_buffer = True

    def set_gain_tx(self, gain):
        self.sdr.tx_hardwaregain = gain
        self.sdr.tx_hardwaregain_chip_b = gain
        self.sdr.gain_control_mode = "slow_attack"
        self.sdr.gain_control_mode_chip_b = "slow_attack"

    def set_samplerate(self, samplerate):
        self.sdr.sample_rate = samplerate
    
    def receive(self, port):
        x = self.sdr.rx()
        if(port == 0):
            data = x[0]
        elif (port == 1):
            data = x[1]
        elif(port == 2):
            data = x[2]
        elif(port == 3):
            data = x[3]
        return data
    
    def rx_receive(self, port):
        thread = threading.Thread(target=self.receive, args=(port))
        thread.start()
        

    def createSignal(self):
        N = 1024
        fs = int(self.sdr.sample_rate)
        fc = 40000000
        ts = 1 / float(fs)
        t = np.arange(0, N * ts, ts)
        i = np.cos(2 * np.pi * t * fc) * 2 ** 14
        q = np.sin(2 * np.pi * t * fc) * 2 ** 14
        self.iq = i + 1j * q

        fc = -30000000
        i = np.cos(2 * np.pi * t * fc) * 2 ** 14
        q = np.sin(2 * np.pi * t * fc) * 2 ** 14
        self.iq2 = i + 1j * q
    
    def transmit(self, port, Time):
        
        if(port == 0 or port == 1):
            self.sdr.tx_enabled_channels = [0, 1]
        elif(port == 2 or port == 3):
            self.sdr.tx_enabled_channels = [2, 3]

        self.sdr.tx([self.iq, self.iq2])

        time.sleep(Time)
    
    def tx_transmit(self, port, Time):
        thread = threading.Thread(target=self.transmit, args=(port, Time))
        thread.start()
        # thread.join()

    def transmit_and_receive(self, portRX, portTX):
        self.tx_transmit(portTX, 2)
        time.sleep(0.7)
        data = self.rx_receive(portRX)
        return data

    def plot_revieved(self, data):
        f, Pxx_den = signal.periodogram(data, self.sdr.sample_rate)
        plt.semilogy(f, Pxx_den)
        plt.ylim([1e-7, 1e2])
        plt.xlabel("frequency [Hz]")
        plt.ylabel("PSD [V**2/Hz]")
        plt.draw()
        plt.show()
 

        

        

