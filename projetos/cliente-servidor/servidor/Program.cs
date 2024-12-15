// Configurando o socket do servidor para escutar conexões
using System.Net.Sockets;
using System.Net;
using System.Text;

TcpListener servidor = new TcpListener(IPAddress.Any, 12345);
servidor.Start();
Console.WriteLine("Servidor aguardando conexões...");

while (true)
{
    // Aceitando a conexão do cliente
    TcpClient cliente = servidor.AcceptTcpClient();
    Console.WriteLine("Cliente conectado!");

    // Lendo os dados enviados pelo cliente
    NetworkStream stream = cliente.GetStream();
    byte[] buffer = new byte[1024];
    int bytesLidos = stream.Read(buffer, 0, buffer.Length);
    string dadosRecebidos = Encoding.UTF8.GetString(buffer, 0, bytesLidos);
    Console.WriteLine($"Dados recebidos: {dadosRecebidos}");

    // Processando a soma de dois números
    string[] numeros = dadosRecebidos.Split(",");
    int num1 = int.Parse(numeros[0]);
    int num2 = int.Parse(numeros[1]);
    int resultado = num1 + num2;

    // Enviando o resultado de volta para o cliente
    byte[] dadosResposta = Encoding.UTF8.GetBytes(resultado.ToString());
    stream.Write(dadosResposta, 0, dadosResposta.Length);

    // Fechando a conexão
    cliente.Close();
}