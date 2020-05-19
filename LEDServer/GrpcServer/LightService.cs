using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Grpc.Core;
using Ledmanager;
using LEDServer.ArduinoController;

namespace LEDServer.GrpcServer
{
    class LightService : LedManager.LedManagerBase
    {

        public LightService()
        {

        }

        public LightService(ArduinoCommunication ardInstance)
        {
            this.com = ardInstance;
        }

        ArduinoCommunication com;
        public override Task<Empty> ChangeLightState(State request, ServerCallContext context)
        {
            com.SendBytesMessage(prepareColor(new ColorValue { R = 0, G = 0, B = 0 }));
            return Task.FromResult(new Empty());
        }



        public override async Task<Empty> SetColor(IAsyncStreamReader<ColorValue> requestStream, ServerCallContext context)
        {

            while (await requestStream.MoveNext())
            {
                string strMsg = requestStream.Current.ToString();
                //Console.WriteLine(strMsg);
                if (com != null)
                {


                    com.SendBytesMessage(prepareColor(requestStream.Current));
                }


                // Console.WriteLine($"Color {requestStream.Current.R}{requestStream.Current.G}{requestStream.Current.B} opacity: {requestStream.Current.Opacity} ");
            }

            return new Empty();
        }

        private byte[] prepareColor(ColorValue colorValue)
        {
            string startByteHex = "0859";
            byte[] startByte = Convert.FromBase64String(startByteHex);

            int redC = colorValue.R;
            int greenC = colorValue.G;
            int blueC = colorValue.B;
            byte[] color = new byte[3];

            color[0] = (byte)redC;
            color[1] = (byte)greenC;
            color[2] = (byte)blueC;

            byte[] fullMessage = new byte[6];
            startByte.CopyTo(fullMessage, 0);
            color.CopyTo(fullMessage, 3);
            return fullMessage;
        }

        public override async Task<Empty> SetColorString(IAsyncStreamReader<ColorValueString> requestStream, ServerCallContext context)
        {
            while (await requestStream.MoveNext())
            {

                Console.WriteLine($"Color {requestStream.Current.R}{requestStream.Current.G}{requestStream.Current.B} opacity: {requestStream.Current.Opacity} ");
            }

            return new Empty();
        }



    }
    class GrpcServerHost
    {
        const string host = "0.0.0.0";
        const int port = 50055;

        public GrpcServerHost(ArduinoCommunication ard)
        {
            Server server = new Server
            {
                Services = { Ledmanager.LedManager.BindService(new LightService(ard)) },
                Ports = { { host, port, ServerCredentials.Insecure } }
            };
            server.Start();
            Console.ReadLine();
        }
        public GrpcServerHost()
        {
            Server server = new Server
            {
                Services = { Ledmanager.LedManager.BindService(new LightService()) },
                Ports = { { host, port, ServerCredentials.Insecure } }
            };
            server.Start();
            Console.ReadLine();
        }
    }
}
