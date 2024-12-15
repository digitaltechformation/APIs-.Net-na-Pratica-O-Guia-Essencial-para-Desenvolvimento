var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

List<Frase> frases = new();
AlimentarLista();

app.MapGet("/", ()=> DateTime.Now);
app.MapGet("/frase", RetornoFrase);
app.Run();


void AlimentarLista()
{
    frases.Add(new Frase { Id = 1, Conteudo = "Se expressarmos gratid�o pelo que temos, teremos mais pelo que expressar gratid�o." });
    frases.Add(new Frase { Id = 2, Conteudo = "A vida � 10% o que acontece com voc� e 90% como voc� reage a isso." });
    frases.Add(new Frase { Id = 3, Conteudo = "O sucesso � ir de fracasso em fracasso sem perder o entusiasmo." });
    frases.Add(new Frase { Id = 4, Conteudo = "Acredite que voc� pode, e voc� j� est� no meio do caminho." });
    frases.Add(new Frase { Id = 5, Conteudo = "A �nica maneira de fazer um �timo trabalho � amar o que voc� faz." });
    frases.Add(new Frase { Id = 6, Conteudo = "A coragem � a resist�ncia ao medo, o dom�nio do medo � n�o a aus�ncia do medo." });
    frases.Add(new Frase { Id = 7, Conteudo = "N�o importa o qu�o devagar voc� v�, desde que voc� n�o pare." });
    frases.Add(new Frase { Id = 8, Conteudo = "Voc� nunca � velho demais para estabelecer outra meta ou sonhar um novo sonho." });
    frases.Add(new Frase { Id = 9, Conteudo = "A persist�ncia � o caminho do �xito." });
    frases.Add(new Frase { Id = 10, Conteudo = "Foque no caminho, n�o no destino." });
    frases.Add(new Frase { Id = 11, Conteudo = "A �nica limita��o para o nosso crescimento � a nossa pr�pria mente." });
    frases.Add(new Frase { Id = 12, Conteudo = "Grandes realiza��es s�o poss�veis com pequenos passos consistentes." });
    frases.Add(new Frase { Id = 13, Conteudo = "N�o espere por oportunidades. Crie-as." });
    frases.Add(new Frase { Id = 14, Conteudo = "As dificuldades muitas vezes preparam pessoas comuns para destinos extraordin�rios." });
    frases.Add(new Frase { Id = 15, Conteudo = "A melhor maneira de prever o futuro � cri�-lo." });
    frases.Add(new Frase { Id = 16, Conteudo = "Aprenda com ontem, viva para hoje, tenha esperan�a para o amanh�." });
    frases.Add(new Frase { Id = 17, Conteudo = "A diferen�a entre quem voc� � e quem voc� quer ser � o que voc� faz." });
    frases.Add(new Frase { Id = 18, Conteudo = "Pequenos progressos todos os dias levam a grandes resultados." });
    frases.Add(new Frase { Id = 19, Conteudo = "O sucesso n�o � a chave para a felicidade. A felicidade � a chave para o sucesso." });
    frases.Add(new Frase { Id = 20, Conteudo = "A melhor maneira de fazer algo � come�ar." });
    frases.Add(new Frase { Id = 21, Conteudo = "Um dia ou o primeiro dia. Voc� decide." });
    frases.Add(new Frase { Id = 22, Conteudo = "Seja a mudan�a que voc� quer ver no mundo." });
    frases.Add(new Frase { Id = 23, Conteudo = "N�o conte os dias, fa�a os dias contarem." });
    frases.Add(new Frase { Id = 24, Conteudo = "O �nico lugar onde o sucesso vem antes do trabalho � no dicion�rio." });
    frases.Add(new Frase { Id = 25, Conteudo = "Os limites s� existem se voc� os deixar existir." });
    frases.Add(new Frase { Id = 26, Conteudo = "Uma jornada de mil milhas come�a com um �nico passo." });
    frases.Add(new Frase { Id = 27, Conteudo = "Confie no processo e continue em frente." });
    frases.Add(new Frase { Id = 28, Conteudo = "Acredite que voc� pode e voc� j� est� no meio do caminho." });
    frases.Add(new Frase { Id = 29, Conteudo = "A for�a de vontade � o m�sculo mais importante que voc� pode treinar." });
    frases.Add(new Frase { Id = 30, Conteudo = "A vida come�a onde termina a sua zona de conforto." });
    frases.Add(new Frase { Id = 31, Conteudo = "A adversidade � uma oportunidade para crescer mais forte." });
    frases.Add(new Frase { Id = 32, Conteudo = "Tudo parece imposs�vel at� que seja feito." });
    frases.Add(new Frase { Id = 33, Conteudo = "A verdadeira felicidade n�o � baseada em circunst�ncias externas." });
    frases.Add(new Frase { Id = 34, Conteudo = "Se voc� acredita que pode, voc� est� certo." });
    frases.Add(new Frase { Id = 35, Conteudo = "As melhores conquistas v�m dos maiores desafios." });
    frases.Add(new Frase { Id = 36, Conteudo = "Voc� � mais forte do que pensa." });
    frases.Add(new Frase { Id = 37, Conteudo = "A maior riqueza � a sa�de." });
    frases.Add(new Frase { Id = 38, Conteudo = "Voc� n�o precisa ser perfeito para ser incr�vel." });
    frases.Add(new Frase { Id = 39, Conteudo = "Hoje � um bom dia para tentar." });
    frases.Add(new Frase { Id = 40, Conteudo = "Todo dia � uma chance de ser melhor." });
    frases.Add(new Frase { Id = 41, Conteudo = "N�o subestime o poder de pequenos come�os." });
    frases.Add(new Frase { Id = 42, Conteudo = "A felicidade est� no caminho, n�o no destino." });
    frases.Add(new Frase { Id = 43, Conteudo = "A atitude � a chave para o sucesso." });
    frases.Add(new Frase { Id = 44, Conteudo = "Cada dia traz uma nova oportunidade." });
    frases.Add(new Frase { Id = 45, Conteudo = "Seja a luz na escurid�o." });
    frases.Add(new Frase { Id = 46, Conteudo = "Voc� � o autor da sua hist�ria." });
    frases.Add(new Frase { Id = 47, Conteudo = "N�o espere por milagres. Seja o milagre." });
    frases.Add(new Frase { Id = 48, Conteudo = "Cada fracasso � um passo mais perto do sucesso." });
    frases.Add(new Frase { Id = 49, Conteudo = "O primeiro passo � o mais importante." });
    frases.Add(new Frase { Id = 50, Conteudo = "Nunca subestime o poder de um pequeno h�bito di�rio." });

}
Frase RetornoFrase()
{
    Random random = new Random();
    int index = random.Next(0,frases.Count);
    return frases[index];
}
public record Frase()
{
    public int Id { get; set; }
    public string Conteudo { get; set; }
}