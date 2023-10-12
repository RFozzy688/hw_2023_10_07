using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.Common;

namespace hw_2023_10_07
{
    public partial class Form1 : Form
    {
        SqlConnection conn = null;
        SqlDataAdapter adapter = null;
        DataSet ds = null;
        SqlCommandBuilder cmdBuilder = null;
        string cs = "";
        public Form1()
        {
            InitializeComponent();

            conn = new SqlConnection();
            cs = ConfigurationManager.ConnectionStrings["ConnStrStore_2"].ConnectionString;
            conn.ConnectionString = cs;
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            string strQuery = "SELECT * FROM Buyers;" +
                              "SELECT * FROM Sellers;" +
                              "SELECT * FROM Sales";

            adapter = new SqlDataAdapter(strQuery, conn);
            cmdBuilder = new SqlCommandBuilder(adapter);

            ds = new DataSet();
            adapter.TableMappings.Add("Table", "Buyers");
            adapter.TableMappings.Add("Table1", "Sellers");
            adapter.TableMappings.Add("Table2", "Sales");
            adapter.Fill(ds);

            foreach (DataTable dt in ds.Tables)
            {
                comboBox1.Items.Add(dt.TableName);
            }
        }
    }
}
