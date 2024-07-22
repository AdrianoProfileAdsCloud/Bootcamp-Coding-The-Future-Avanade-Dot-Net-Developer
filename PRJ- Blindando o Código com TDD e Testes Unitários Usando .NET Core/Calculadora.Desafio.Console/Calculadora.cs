using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using System.Security.Cryptography.X509Certificates;

public class Calculadora
{

    private List<string> listHistorico;
    private DateTime date;

    public Calculadora(DateTime data)
    {
        listHistorico = new List<string>();
        this.date = data;
    }


    public int somar(int val1, int val2)
    {
        int res = val1 + val2;
        listHistorico.Insert(0, "Resultado:" + res + "Data:" + date);
        return res;
    }

    public int subtrair(int val1, int val2)
    {
        int res = val1 - val2;
        listHistorico.Insert(0, "Resultado:" + res + "Data:" + date);
        return res;
    }
    public int multiplicar(int val1, int val2)
    {
        int res = val1 * val2;
        listHistorico.Insert(0, "Resultado:" + res + "Data:" + date );
        return res;

    }
    public int dividir(int val1, int val2)
    {
        int res = val1 / val2;
        listHistorico.Insert(0, "Resultado:" + res + "Data:" + date);
        return res;
    }

    public List<string> historico()
    {
        List<string> res;
        listHistorico.RemoveRange(3, listHistorico.Count - 3);

        return listHistorico;
    }

}
