using System;
using LEDServer.ArduinoController;
using LEDServer.GrpcServer;
namespace LEDServer
{
    class Program
    {
        static void Main(string[] args)
        {
            

            
       
            ArduinoCommunication com = new ArduinoCommunication("COM3");

            
            
            new GrpcServerHost(com);
        }

    }
}
