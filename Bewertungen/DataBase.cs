using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Odbc;
using System.Data;

namespace DataBaseWrapper
{
    public class DataBase
    {
        OdbcConnection connection;
        public bool IsOpen
        {
            get
            {
                return connection.State == ConnectionState.Open;
            }
        }
        public DataBase(string connectionString)
        {
            connection = new OdbcConnection(connectionString);
        }

        public void Open()
        {
            connection?.Open();
        }

        public void Close()
        {
            connection?.Close();
        }

        public DataTable RunQuery(string query)
        {
            DataTable dataTable = new DataTable();
            OdbcDataAdapter da = new OdbcDataAdapter(query, connection);

            //Open();
            da.Fill(dataTable); // DataAdapter öffnet und schließt verbindung von selber
            //Close();

            return dataTable;
        }

        public object RunQueryScalar(string sqlCmd)
        {
            bool wasOpen = IsOpen;
            try
            {

                if (!wasOpen) Open();
                OdbcCommand cmd = new OdbcCommand(sqlCmd, connection);
                object output = cmd.ExecuteScalar();
                return output;
            }
            finally
            {
                if (!wasOpen) Close();
            }

        }
        /// <summary>
        /// Für Insert, Update, Delete Befehle
        /// auch: CREATE, DROP, GRANT
        /// verhalten wie DataAdapter
        /// verwendet die ExecuteNonQuery Methode des Command-Objekts
        /// </summary>
        /// <param name="sqlCmd"></param>

        public int RunNonQuery(string sqlCmd)
        {
            bool wasOpen = IsOpen;
            try
            {
                if (!wasOpen) Open();
                OdbcCommand cmd = new OdbcCommand(sqlCmd, connection);
                int output = cmd.ExecuteNonQuery();
                return output;

            }
            finally
            {
                if (!wasOpen) Close();
            }

        }

    }
}
