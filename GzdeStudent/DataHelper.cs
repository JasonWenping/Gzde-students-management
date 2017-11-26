using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using GzdeStudent.gzdeDataTableAdapters;
using System.Configuration;

namespace GzdeStudent
{
    public class DataHelper
    {
        public static string sqlStr = ConfigurationManager.ConnectionStrings["gzdeConnectionString"].ConnectionString;
        public static DataTable ExecuteDataTable(string sql, params SqlParameter[] paramers)
        {
            using (SqlConnection conn = new SqlConnection(sqlStr))
            {
                conn.Open();
                using (SqlCommand cmd = conn.CreateCommand()) 
                {
                    cmd.CommandText = sql;
                    foreach (SqlParameter paramer in paramers)
                    {
                        cmd.Parameters.Add(paramer);
                    }
                    DataSet ds = new DataSet();
                    SqlDataAdapter adpter = new SqlDataAdapter(cmd);
                    adpter.Fill(ds);
                    return ds.Tables[0];
                }
            }
        }
        public static int ExecuteSql(string sql)
        {
            using(SqlConnection conn  = new SqlConnection(sqlStr))
            {
                using (SqlCommand cmd = new SqlCommand(sql,conn))
                {
                    conn.Open();
                    int rows = cmd.ExecuteNonQuery();
                    return rows;
                }
            }
        }
    }
}