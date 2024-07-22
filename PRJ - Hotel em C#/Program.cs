using System.Text;
using DesafioProjetoHospedagem.Models;

Console.OutputEncoding = Encoding.UTF8;

   List<Pessoa> hospedes = new();
   Reserva reserva = new();
   Suite suite = new();

   while(true)
   {
    Console.WriteLine("Selecione uma opção:");
            Console.WriteLine("1. Cadastrar Hóspede");
            Console.WriteLine("2. Cadastrar Suite");
            Console.WriteLine("3. Realizar Reserva");
            Console.WriteLine("4. Realizar Checkout");
            Console.WriteLine("5. Sair");

            Console.Write("Opção: ");
            string selecaoDoMenu = Console.ReadLine();

            switch (selecaoDoMenu)
            {
                case "1":
                    // Cadastrar Hóspede
                    Console.WriteLine("Informe o nome do Hospede");
                    string nomeHospede = Console.ReadLine();
                    
                    try
                    { 
                    // Adicionar hóspede à lista temporária 
                         Pessoa pessoa = new Pessoa();
                         pessoa.Nome = nomeHospede;
                         hospedes.Add(pessoa);
                        reserva.CadastrarHospedes(hospedes );
                        Console.WriteLine("Hóspede cadastrado com sucesso!");
                        Console.WriteLine($"Hóspedes: {reserva.ObterQuantidadeHospedes()}");
                    }
                    catch (InvalidOperationException ex)
                    {
                        Console.WriteLine($"Erro: {ex.Message}");
                    }
                    break;
                
                case "2":
                    // Cadastrar Suite
                    Console.WriteLine("Cadastrar Suite");
                    Console.WriteLine("Por favor, informe os dados da suite a seguir:");
                    Console.WriteLine("Informe o tipo de suite"); 
                    string tipoSuite = Console.ReadLine();
                    Console.WriteLine("Informe a capacidade da suite");
                    string capacidadeSuite = Console.ReadLine();
                    Console.WriteLine("Informe  o valor da diária:");
                    string valorDiaria = Console.ReadLine();
                    
                    try
                     {
                     // Adicionar suite                                    
                           suite.TipoSuite = tipoSuite;
                           suite.Capacidade = int.Parse(capacidadeSuite);
                           suite.ValorDiaria = decimal.Parse(valorDiaria);                   
                                                       
                  
                        reserva.CadastrarSuite(suite);
                        Console.WriteLine("Suite cadastrada com sucesso!");
                    }
                    catch (InvalidOperationException ex)
                    {
                        Console.WriteLine($"Erro: {ex.Message}");
                    }
                    break;

                case "3":
                    // Realizar Reserva
                    Console.WriteLine("Realizar Reserva");
                    Console.WriteLine("Por favor, informe os dados da reserva a seguir:");
                    Console.WriteLine("Informe a quantidade de dias a ser reservado"); 
                    string realizarReserva = Console.ReadLine();                                 
                                                      
                    try
                    {
                        reserva.DiasReservados = int.Parse(realizarReserva);
                        Console.WriteLine("Reserva realizada com Sucesso");
                        Console.WriteLine($"Valor diária: {reserva.CalcularValorDiaria()}"); 
                    }
                    catch (InvalidOperationException ex)
                    {
                        Console.WriteLine($"Erro: {ex.Message}");
                    }
                    break;    

                    case "4":
                    // Realizar Checkout
                   
                    foreach(Pessoa hop in hospedes )
                    {
                       
                        Console.WriteLine(hop.Nome);
                    }
                     Console.WriteLine("Selecione o Hospede");
                     string hospSelecinado = Console.ReadLine();
                       hospedes.RemoveAll(h => h.Nome == hospSelecinado);
                       Console.WriteLine("Checkout realizado com sucesso!");
                    break;    

                case "5":
                    // Sair
                    Console.WriteLine("Saindo...");
                    return; // Sai do programa
                
                default:
                    Console.WriteLine("Opção inválida. Tente novamente.");
                    break;
             
            }
            
         
        }
        

 




