var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

List<Frase> frases = new();
AlimentarLista();

app.MapGet("/", ()=> DateTime.Now);
app.MapGet("/frase", RetornoFrase);
app.Run();


void AlimentarLista()
{
    frases.Add(new Frase { Id = 1, Conteudo = "Se expressarmos gratidão pelo que temos, teremos mais pelo que expressar gratidão." });
    frases.Add(new Frase { Id = 2, Conteudo = "A vida é 10% o que acontece com você e 90% como você reage a isso." });
    frases.Add(new Frase { Id = 3, Conteudo = "O sucesso é ir de fracasso em fracasso sem perder o entusiasmo." });
    frases.Add(new Frase { Id = 4, Conteudo = "Acredite que você pode, e você já está no meio do caminho." });
    frases.Add(new Frase { Id = 5, Conteudo = "A única maneira de fazer um ótimo trabalho é amar o que você faz." });
    frases.Add(new Frase { Id = 6, Conteudo = "A coragem é a resistência ao medo, o domínio do medo – não a ausência do medo." });
    frases.Add(new Frase { Id = 7, Conteudo = "Não importa o quão devagar você vá, desde que você não pare." });
    frases.Add(new Frase { Id = 8, Conteudo = "Você nunca é velho demais para estabelecer outra meta ou sonhar um novo sonho." });
    frases.Add(new Frase { Id = 9, Conteudo = "A persistência é o caminho do êxito." });
    frases.Add(new Frase { Id = 10, Conteudo = "Foque no caminho, não no destino." });
    frases.Add(new Frase { Id = 11, Conteudo = "A única limitação para o nosso crescimento é a nossa própria mente." });
    frases.Add(new Frase { Id = 12, Conteudo = "Grandes realizações são possíveis com pequenos passos consistentes." });
    frases.Add(new Frase { Id = 13, Conteudo = "Não espere por oportunidades. Crie-as." });
    frases.Add(new Frase { Id = 14, Conteudo = "As dificuldades muitas vezes preparam pessoas comuns para destinos extraordinários." });
    frases.Add(new Frase { Id = 15, Conteudo = "A melhor maneira de prever o futuro é criá-lo." });
    frases.Add(new Frase { Id = 16, Conteudo = "Aprenda com ontem, viva para hoje, tenha esperança para o amanhã." });
    frases.Add(new Frase { Id = 17, Conteudo = "A diferença entre quem você é e quem você quer ser é o que você faz." });
    frases.Add(new Frase { Id = 18, Conteudo = "Pequenos progressos todos os dias levam a grandes resultados." });
    frases.Add(new Frase { Id = 19, Conteudo = "O sucesso não é a chave para a felicidade. A felicidade é a chave para o sucesso." });
    frases.Add(new Frase { Id = 20, Conteudo = "A melhor maneira de fazer algo é começar." });
    frases.Add(new Frase { Id = 21, Conteudo = "Um dia ou o primeiro dia. Você decide." });
    frases.Add(new Frase { Id = 22, Conteudo = "Seja a mudança que você quer ver no mundo." });
    frases.Add(new Frase { Id = 23, Conteudo = "Não conte os dias, faça os dias contarem." });
    frases.Add(new Frase { Id = 24, Conteudo = "O único lugar onde o sucesso vem antes do trabalho é no dicionário." });
    frases.Add(new Frase { Id = 25, Conteudo = "Os limites só existem se você os deixar existir." });
    frases.Add(new Frase { Id = 26, Conteudo = "Uma jornada de mil milhas começa com um único passo." });
    frases.Add(new Frase { Id = 27, Conteudo = "Confie no processo e continue em frente." });
    frases.Add(new Frase { Id = 28, Conteudo = "Acredite que você pode e você já está no meio do caminho." });
    frases.Add(new Frase { Id = 29, Conteudo = "A força de vontade é o músculo mais importante que você pode treinar." });
    frases.Add(new Frase { Id = 30, Conteudo = "A vida começa onde termina a sua zona de conforto." });
    frases.Add(new Frase { Id = 31, Conteudo = "A adversidade é uma oportunidade para crescer mais forte." });
    frases.Add(new Frase { Id = 32, Conteudo = "Tudo parece impossível até que seja feito." });
    frases.Add(new Frase { Id = 33, Conteudo = "A verdadeira felicidade não é baseada em circunstâncias externas." });
    frases.Add(new Frase { Id = 34, Conteudo = "Se você acredita que pode, você está certo." });
    frases.Add(new Frase { Id = 35, Conteudo = "As melhores conquistas vêm dos maiores desafios." });
    frases.Add(new Frase { Id = 36, Conteudo = "Você é mais forte do que pensa." });
    frases.Add(new Frase { Id = 37, Conteudo = "A maior riqueza é a saúde." });
    frases.Add(new Frase { Id = 38, Conteudo = "Você não precisa ser perfeito para ser incrível." });
    frases.Add(new Frase { Id = 39, Conteudo = "Hoje é um bom dia para tentar." });
    frases.Add(new Frase { Id = 40, Conteudo = "Todo dia é uma chance de ser melhor." });
    frases.Add(new Frase { Id = 41, Conteudo = "Não subestime o poder de pequenos começos." });
    frases.Add(new Frase { Id = 42, Conteudo = "A felicidade está no caminho, não no destino." });
    frases.Add(new Frase { Id = 43, Conteudo = "A atitude é a chave para o sucesso." });
    frases.Add(new Frase { Id = 44, Conteudo = "Cada dia traz uma nova oportunidade." });
    frases.Add(new Frase { Id = 45, Conteudo = "Seja a luz na escuridão." });
    frases.Add(new Frase { Id = 46, Conteudo = "Você é o autor da sua história." });
    frases.Add(new Frase { Id = 47, Conteudo = "Não espere por milagres. Seja o milagre." });
    frases.Add(new Frase { Id = 48, Conteudo = "Cada fracasso é um passo mais perto do sucesso." });
    frases.Add(new Frase { Id = 49, Conteudo = "O primeiro passo é o mais importante." });
    frases.Add(new Frase { Id = 50, Conteudo = "Nunca subestime o poder de um pequeno hábito diário." });

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