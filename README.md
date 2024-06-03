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

 Feedback Rápido:<br>
Os testes automatizados fornecem feedback instantâneo sobre a integridade do código.<br>
 Código Mais Confiável:<br>
Os testes automatizados ajudam a garantir que o código funcione conforme o esperado.<br>
 Design Melhorado:<br> O TDD promove um design de código mais modular e desacoplado.<br>
 Refatoração Segura:<br> Com um conjunto abrangente de testes automatizados, é mais seguro realizar refatorações no código.<br>
 Maior Produtividade:<br> Embora o TDD possa parecer mais lento no início, ele geralmente resulta em um desenvolvimento mais rápido e menos erros a longo prazo.<br>

Exemplo de TDD:<br>
Para exemplo simples de TDD foi criada uma classe Calculadora que possui os seguintes métodos:<br>

```c#
public int somar(int val1, int val2);
public int subtrair(int val1, int val2);
public int multiplicar(int val1, int val2);
public int dividir(int val1, int val2);
public List<string> historico();
```   

**Red (Vermelho)**:<br>
Escreva um teste automatizado que falha porque a funcionalidade ainda não foi implementada.<br>
**Green (Verde)**:<br> Escreva o código mínimo necessário para fazer o teste automatizado passar.<br>
**Refactor (Refatoração)**:<br> Refatore o código, se necessário.


# Teste para o Método somar.
<br>

```c#
[Fact]
public void DeveSomarDoisNumerosCorretamente()
{
    // Arrange
    var calculadora = new Calculadora(DateTime.Now);

    // Act
    var resultado = calculadora.somar(2, 3);

    // Assert
    Assert.Equal(5, resultado);
}
```
<br>

**Arrange (Preparação):**<br>

Foi criada uma instância da classe Calculadora e a inicializada com a data atual (DateTime.Now). Isso prepara o ambiente para o teste.<br>

**Act (Ação):**<br>
É realizada a chamada do método somar da instância da Calculadora, passando os valores 2 e 3 como argumentos. <br>

**Assert (Afirmação):**<br>
O uso do Assert.Equal para verificar se o resultado retornado pelo método somar é igual a 5. Se o resultado for diferente de 5, o teste falhará.

#Teste para o Método subtrair, multiplicar, dividir
Os testes para os métodos subtrair, multiplicar e dividir seguem a mesma estrutura do teste para o método somar, com a única diferença sendo os valores passados e o resultado esperado. Cada teste cria uma instância da Calculadora, chama o método correspondente e verifica se o resultado está correto.
