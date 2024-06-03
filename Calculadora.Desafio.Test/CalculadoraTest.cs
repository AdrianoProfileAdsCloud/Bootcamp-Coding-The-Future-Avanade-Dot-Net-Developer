using System;
using Xunit;

namespace TestPrjFinal
{
    public class CalculadoraTest
    {
        public Calculadora construirClasse()
        {
            DateTime data = DateTime.Now;
            Calculadora calc = new Calculadora(data);
            return calc;
        }

        [Theory]
        [InlineData(1, 2, 3)]
        [InlineData(4, 5, 9)]
        public void Somar(int val1, int val2, int resultado)
        {
            Calculadora calc = construirClasse();
            int resultadoCalculadora = calc.somar(val1, val2);

            Assert.Equal(resultado, resultadoCalculadora);
        }

        [Theory]
        [InlineData(1, 2, 2)]
        [InlineData(4, 5, 20)]
        public void Multiplicar(int val1, int val2, int resultado)
        {
            Calculadora calc = construirClasse();
            int resultadoCalculadora = calc.multiplicar(val1, val2);

            Assert.Equal(resultado, resultadoCalculadora);
        }

        [Theory]
        [InlineData(6, 2, 3)]
        [InlineData(5, 5, 1)]
        public void Dividir(int val1, int val2, int resultado)
        {
            Calculadora calc = construirClasse();
            int resultadoCalculadora = calc.dividir(val1, val2);

            Assert.Equal(resultado, resultadoCalculadora);
        }
        [Theory]
        [InlineData(6, 2, 4)]
        [InlineData(5, 5, 0)]
        public void Subtrair(int val1, int val2, int resultado)
        {
            Calculadora calc = construirClasse();
            int resultadoCalculadora = calc.subtrair(val1, val2);

            Assert.Equal(resultado, resultadoCalculadora);
        }

        [Fact]
        public void TestarCaslculadoraPOrZero()
        {
            Calculadora calc = construirClasse();
            Assert.Throws<DivideByZeroException>(
              () => calc.dividir(3, 0)
           );
        }

        [Fact]
        public void TestarHistorico()
        {
            Calculadora calc = construirClasse();

            calc.somar(1, 2);
            calc.somar(2, 8);
            calc.somar(3, 1);
            calc.somar(4, 1);

            var lista = calc.historico();

            Assert.NotEmpty(calc.historico());
            Assert.Equal(3, lista.Count);
        }
    }
}

