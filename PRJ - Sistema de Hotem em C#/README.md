# Bootcamp Dio - Coding The Future Avanade .NET Developer

## Desafio de projeto
Um projeto simples que visa demostrar toda aplicabilidade dos conhecimentos adquiridos no módulo explorando a linguagem C#, da trilha .NET.

## 🎯 Contexto
Construir um sistema de hospedagem, que será usado para realizar uma reserva em um hotel com a seguinte estrutura:
  classe Pessoa -  Para representa o hóspede.
  classe Suíte  -  Para reprsentar  a estrutura do "quarto" a ser reservado.
  classe Reserva - Classe que tem como função neste projeto de fazer um relacionamento entre ambos.

O programa  calcula os valores dos métodos da classe Reserva, que traz a quantidade de hóspedes e o valor da diária, concedendo um desconto de 10% para caso a reserva seja para um período maior que 10 dias.

## 🎯Regras e validações
1. Não deve ser possível realizar uma reserva de uma suíte com capacidade menor do que a quantidade de hóspedes. Exemplo: Se é uma suíte capaz de hospedar 2 pessoas, então ao passar 3 hóspedes deverá retornar uma exception.
2. O método ObterQuantidadeHospedes da classe Reserva retorna a quantidade total de hóspedes, enquanto que o método CalcularValorDiaria retorna o valor da diária (Dias reservados x valor da diária).
3. Caso seja feita uma reserva igual ou maior que 10 dias, deverá ser concedido um desconto de 10% no valor da diária.


![Diagrama de classe estacionamento](diagrama_classe_hotel.png)

 ℹ️ **Note**
   Foi implementado algumas funcionalidades a mais do que o solicitado, assim como o sistema de forma geral.Essas implementações extras não solicitadas, tiveram por objetivo fazer com que eu fosse pesquisar mais sobre o que me propus a implementar.Como sempre resultou em mais aprendizado e mais conhecimento para somar com os adquiridos no módulo. Um projeto bem simples mais que resultou em outros conhecimentos adquiridos no decorrer de sua implementação!
