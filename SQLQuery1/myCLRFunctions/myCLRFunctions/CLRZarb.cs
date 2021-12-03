using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;

public partial class UserDefinedFunctions
{
    [Microsoft.SqlServer.Server.SqlFunction]
    public static SqlMoney CLRZarb(SqlInt32 x , SqlMoney y)
    {
        // Put your code here
        return x*y;
    }
}
