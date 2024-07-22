namespace DesafioProjetoHospedagem.Models
{
    public class Reserva
    {
        public List<Pessoa> Hospedes { get; set; }
        public Suite Suite { get; set; }
        public int DiasReservados { get; set; }

        public Reserva() { }

        public Reserva(int diasReservados)
        {
            DiasReservados = diasReservados;
        }

        public void CadastrarHospedes(List<Pessoa> hospedes)
        {
          
            if (hospedes.Count <= Suite.Capacidade)
            {
                Hospedes = hospedes;
            }
            else
            {
                throw new InvalidOperationException("O número de hóspedes excede a capacidade da Suite.");
            }
        }

        public void CadastrarSuite(Suite suite)
        {
            Suite = suite;
        }

        public int ObterQuantidadeHospedes()
        {

            int quantideHospedes = Hospedes.Count();
            return quantideHospedes;
        }

        public decimal CalcularValorDiaria()
        {
           
            decimal valor = 0;
            decimal valorTotalSemDesconto = DiasReservados * Suite.ValorDiaria ;
          

            // Regra: Caso os dias reservados forem maior ou igual a 10, conceder um desconto de 10%
     
            if (DiasReservados >= 10)
            {                
                valor = valorTotalSemDesconto  - ( 0.10M * valorTotalSemDesconto) ;
                return valor;
            }
            else 
            {
                return valorTotalSemDesconto;
            }

           
        }
    }
}