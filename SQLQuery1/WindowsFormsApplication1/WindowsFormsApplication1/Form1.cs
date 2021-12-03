using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace WindowsFormsApplication1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = "Data Source=.;User ID=sa;Password=1234;Initial Catalog=Northwind";

            SqlCommand cmd = cn.CreateCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "usp_ProductList";
            cmd.Parameters.AddWithValue("@CategoryID", Convert.ToInt32(txtCategoryID.Text));

            cn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            //string record;
            //while (dr.Read())
            //{
            //    record = dr[0].ToString() + " " + dr["ProductName"].ToString() + " " + dr[2].ToString() + " " + dr["UnitPrice"].ToString();
            //    listBox1.Items.Add(record);
            //}

            DataTable T = new DataTable();
            T.Load(dr);

            dataGridView1.DataSource = T;

            dr.Close();
            cn.Close();
            
        }
    }
}
