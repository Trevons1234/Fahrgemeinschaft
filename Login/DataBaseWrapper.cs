using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Odbc;

namespace DataBaseWrapper
{
    public class DataBase
    {
        OdbcConnection connection;

        public DataBase(string connectionString)
        {
            connection = new OdbcConnection(connectionString);
        }

        public bool IsOpen
        {
            get { return connection.State == ConnectionState.Open; }
        }

        public void Open()
        {
            connection.Open();
        }

        public void Close()
        {
            connection.Close();
        }

        public DataTable RunQuery(string sqlStrg)
        {
            DataTable dt = new DataTable();
            OdbcDataAdapter adapter = new OdbcDataAdapter(sqlStrg, connection);
            adapter.Fill(dt);
            return dt;
        }

        public object RunQueryScalar(string sqlCmd)
        {
            object obj;
            OdbcCommand cmd = new OdbcCommand(sqlCmd, connection);

            if (IsOpen)
            {
                obj = cmd.ExecuteScalar();
            }
            else
            {
                try
                {
                    connection.Open();
                    obj = cmd.ExecuteScalar();
                }
                catch (Exception ex)
                {
                    throw new ApplicationException(ex.Message);
                }
                finally
                {
                    connection.Close();
                }
            }
            return obj;
        }

        //Für Insert, Update, Delete 
        //auch: Create, Drop, Grant 
        //verhalten wie DataAdapter 
        //verwendet die ExecuteNonQuery Methode des Command-Objekts 
        public int RunNonQuery(string sqlCmd)
        {
            int value;
            OdbcCommand cmd = new OdbcCommand(sqlCmd, connection);
            if (IsOpen)
            {
                value = cmd.ExecuteNonQuery();
                return value;
            }
            else
            {
                try
                {
                    connection.Open();
                    value = cmd.ExecuteNonQuery();
                    connection.Close();
                    return value;
                }
                finally
                {
                    connection.Close();
                }
            }
        }

        public DataTable RunQuery(string sqlCmd, params OdbcParameter[] parameters)
        {
            OdbcCommand command = new OdbcCommand(sqlCmd, connection);

            foreach (OdbcParameter item in parameters)
            {
                command.Parameters.Add(item);
            }

            DataTable dt = new DataTable();
            OdbcDataAdapter da = new OdbcDataAdapter(command);
            da.Fill(dt);
            return dt;
        }
    }
}

