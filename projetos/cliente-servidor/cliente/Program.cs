using System.Net.Sockets;
using System.Text;

try
{
    // Conectando ao servidor 
    TcpClient cliente = new TcpClient("192.168.1.105", 12345);
    Console.WriteLine("Conectado ao servidor!");

    // Enviando os números para somar
    NetworkStream stream = cliente.GetStream();
    Console.Write("Digite o primeiro número: ");
    string num1 = Console.ReadLine();
    Console.Write("Digite o segundo número: ");
    string num2 = Console.ReadLine();
    string dadosEnviar = $"{num1},{num2}";

    byte[] dados = Encoding.UTF8.GetBytes(dadosEnviar);
    stream.Write(dados, 0, dados.Length);

    // Recebendo o resultado do servidor
    byte[] buffer = new byte[1024];
    int bytesLidos = stream.Read(buffer, 0, buffer.Length);
    string resultado = Encoding.UTF8.GetString(buffer, 0, bytesLidos);
    Console.WriteLine($"Resultado da soma: {resultado}");
    Console.ReadLine();

    // Fechando a conexão
    cliente.Close();
}
catch (Exception ex)
{
    Console.WriteLine($"Erro: {ex.Message}");
}
    