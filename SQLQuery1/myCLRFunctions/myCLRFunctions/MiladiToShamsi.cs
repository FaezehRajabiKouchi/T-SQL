using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;

public partial class UserDefinedFunctions
{
    [Microsoft.SqlServer.Server.SqlFunction]
    public static SqlString MiladiToShamsi(SqlDateTime sqlmiladi)
    {
        System.Globalization.PersianCalendar pc = new System.Globalization.PersianCalendar();

        DateTime miladi = (DateTime)sqlmiladi;

        int year = pc.GetYear(miladi);
        int month = pc.GetMonth(miladi);
        int day = pc.GetDayOfMonth(miladi);

        string shamsi = year.ToString() + "/" + month.ToString().PadLeft(2, '0') + "/" + day.ToString().PadLeft(2, '0');

        return shamsi;
    }
}
