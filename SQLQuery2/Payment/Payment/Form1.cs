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

namespace Payment
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
            try
            {
                
                cn.ConnectionString = "Data Source=.;User ID=sa;Password=1234;Initial Catalog=Northwind";
                SqlCommand cmd = cn.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "usp_Payment";
                cmd.Parameters.AddWithValue("@CustomerID", txtCustomerID.Text);
                cmd.Parameters.AddWithValue("@PaymentDate", dtPaymentDate.Value);
                cmd.Parameters.AddWithValue("@Amount", Convert.ToDecimal(txtAmount.Text));
                cmd.Parameters.AddWithValue("@Result", "                                                   ").Direction = ParameterDirection.InputOutput;

                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();

                lblResult.Text = cmd.Parameters["@Result"].Value.ToString();
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                cn.Close();
            }
        }
    }
}
