## Blindando Seu Código com TDD e Testes Unitários Usando .NET Core


<p>O desenvolvimento orientado por testes (TDD - Test-Driven Development) é uma prática de desenvolvimento de software em que o código é desenvolvido em pequenos incrementos, começando com a escrita de testes automatizados antes de escrever o código de produção. O ciclo do TDD geralmente segue três etapas:</p><br>

**Red (Vermelho)**:<br>
Escreva um teste automatizado que falha porque a funcionalidade ainda não foi implementada ou está incorreta.<br>

**Green (Verde)**:<br>
Escreva o código de produção mínimo necessário para que o teste automatizado passe.<br>

**Refactor (Refatoração)**:<br>
Refatore o código para torná-lo mais limpo, mais eficiente e mais legível, mantendo todos os testes automatizados passando.<br>

Essas etapas são repetidas iterativamente, com novos testes sendo adicionados para novos requisitos ou alterações de funcionalidade.

# Benefícios do TDD:<br>

** Feedback Rápido:<br>
Os testes automatizados fornecem feedback instantâneo sobre a integridade do código.<br>
** Código Mais Confiável:<br>
Os testes automatizados ajudam a garantir que o código funcione conforme o esperado.<br>
** Design Melhorado:<br> O TDD promove um design de código mais modular e desacoplado.<br>
** Refatoração Segura:<br> Com um conjunto abrangente de testes automatizados, é mais seguro realizar refatorações no código.<br>
** Maior Produtividade:<br> Embora o TDD possa parecer mais lento no início, ele geralmente resulta em um desenvolvimento mais rápido e menos erros a longo prazo.<br>

Exemplo de TDD:<br>
Para exemplo simples de TDD foi criada uma classe Calculadora que possui os seguintes métodos:<br>

```c#
public int somar(int val1, int val2);
public int subtrair(int val1, int val2);
public int multiplicar(int val1, int val2);
public int dividir(int val1, int val2);
public List<string> historico();

```
   

Red (Vermelho): Escreva um teste automatizado que falha porque a funcionalidade ainda não foi implementada.
Green (Verde): Escreva o código mínimo necessário para fazer o teste automatizado passar.
Refactor (Refatoração): Refatore o código, se necessário.
Exemplo de Código:
csharp
Copiar código
using System;
using Xunit;

public class CalculadoraTests
{
    [Fact]
    public void DeveSomarDoisNumerosCorretamente()
    {
        // Arrange
        var calculadora = new Calculadora();

        // Act
        var resultado = calculadora.Somar(2, 3);

        // Assert
        Assert.Equal(5, resultado);
    }
}

public class Calculadora
{
    public int Somar(int a, int b)
    {
        return a + b;
    }
}
Neste exemplo:

Red (Vermelho): Começamos escrevendo um teste (DeveSomarDoisNumerosCorretamente) que espera que a soma de 2 e 3 seja igual a 5.
Green (Verde): Implementamos o método Somar na classe Calculadora para retornar a soma dos dois números.
Refactor (Refatoração): Não há refatoração necessária neste exemplo simples, mas você pode refatorar o código conforme necessário para torná-lo mais limpo e legível.
Este é apenas um exemplo básico de TDD. Na prática, você escreveria testes mais abrangentes, cobrindo diferentes casos e cenários. O objetivo é garantir que todas as partes importantes do código sejam testadas e que o código seja robusto e confiável.
