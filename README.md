## Bootcamp Dio - Coding The Future Avanade .NET Developer - Blindando Seu Código com TDD e Testes Unitários Usando .NET Core.


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

> ℹ️ **Teste para o Método subtrair, multiplicar, dividir**<br>

Os testes para os métodos subtrair, multiplicar e dividir seguem a mesma estrutura do teste para o método somar, com a única diferença sendo os valores passados e o resultado esperado. Cada teste cria uma instância da Calculadora, chama o método correspondente e verifica se o resultado está correto.

# Teste para o Método historico
<br>

```c#
[Fact]
public void DeveRetornarHistoricoLimitado()
{
    // Arrange
    var calculadora = new Calculadora(DateTime.Now);
    calculadora.somar(2, 3);
    calculadora.subtrair(5, 3);
    calculadora.multiplicar(2, 3);
    calculadora.dividir(6, 3);

    // Act
    var historico = calculadora.historico();

    // Assert
    Assert.Equal(3, historico.Count);
}
```
<br>

**Arrange (Preparação):**<br>
Cria-se uma instância da Calculadora e a inicializamos com a data atual. Em seguida, são chamados os métodos somar, subtrair, multiplicar e dividir para adicionar operações ao histórico.<br>

**Act (Ação):**<br>

Chamamos o método historico para obter o histórico das operações realizadas.>br>

**Assert (Afirmação):**<br>
Usamos Assert.Equal para verificar se o tamanho do histórico retornado é igual a 3. Isso verifica se a Calculadora está mantendo um histórico limitado de operações.<br>
Esses testes garantem que cada método da classe Calculadora funcione conforme o esperado e que o histórico seja mantido corretamente.

> ℹ️ **Ao seguir o TDD**<br>
>  Esta forma de desenvolvimento(TDD) de escrever os testes antes de implementar a lógica,ajuda a garantir que o código seja testável, robusto e confiável.







