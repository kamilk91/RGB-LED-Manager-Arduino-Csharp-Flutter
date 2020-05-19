using System;
using System.Collections.Generic;
using System.Text;
using System.IO.Ports;


namespace LEDServer.ArduinoController
{
    class ArduinoCommunication
    {
        private string arduinoPort;
        private SerialPort serial;
        private int BaudVal;
        public ArduinoCommunication(string port, int portValue = 9600)
        {
            this.arduinoPort = port;
            this.BaudVal = portValue;
            openPort();
        }

        private void openPort()
        {
            this.serial = new SerialPort(arduinoPort);
            this.serial.BaudRate = this.BaudVal;

            this.serial.Open();
        }

        public void SendMessage(string msg)
        {
            if (serial.IsOpen)
            {
                
                this.serial.WriteLine(msg);
            }
            else
            {
                Console.WriteLine("Serial is closed. ill try to open it again");
                serial.Open();

            }

        }

        public void SendBytesMessage(byte[] msg)
        {

            if (serial.IsOpen)
            {
                this.serial.Write(msg, 0, msg.Length);
                
            }
            else
            {
                Console.WriteLine("Serial is closed. ill try to open it again");
                serial.Open();
            }


        }

    }
}
