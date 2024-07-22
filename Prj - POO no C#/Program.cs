using DesafioPOO.Models;

Console.WriteLine("Smartphone Iphone:");
Smartphone iphone = new Iphone("87910325","Iphone 13","20248791",8);
iphone.Ligar();
iphone.InstalarAplicativo("Discord");

Console.WriteLine("\n");

Console.WriteLine("Smartphone Nokia:");
Smartphone nokia = new Nokia("8791000","Nokia 7","20243591", 4);
nokia.Ligar();
nokia.InstalarAplicativo("Evernote");