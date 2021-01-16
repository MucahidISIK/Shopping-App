using Npgsql;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace vtys_proje
{
    public partial class Form4 : Form
    {
        public Form4()
        {
            InitializeComponent();
        }

        public void DataDoldur()
        {
            NpgsqlConnection connection = new NpgsqlConnection("Server=localhost; Port=5432; Database=vtys_proje; User Id=postgres; Password=saves545;");
            DataSet dataSet = new DataSet();

            try
            {
                connection.Open();
            }
            catch (Exception ex)
            {
                throw;
            }

            string sql = "SELECT * FROM public.\"UrunAdi\"";

            NpgsqlDataAdapter add = new NpgsqlDataAdapter(sql, connection);
            add.Fill(dataSet);

            dataGridView1.DataSource = dataSet.Tables[0];
            connection.Close();
        }

        private void Form4_Load(object sender, EventArgs e)
        {
            DataDoldur();
            label2.Text = dataGridView1.Rows[0].Cells[3].Value.ToString();
            label5.Text = dataGridView1.Rows[1].Cells[3].Value.ToString();
            label7.Text = dataGridView1.Rows[2].Cells[3].Value.ToString();
            label9.Text = dataGridView1.Rows[3].Cells[3].Value.ToString();
        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox1_KeyPress(object sender, KeyPressEventArgs e)
        {
            int basilantus = Convert.ToInt32(e.KeyChar);
            if (!(basilantus >= 48 && basilantus <= 57 || basilantus == 8 || basilantus == 022))
            {
                e.Handled = true;
                MessageBox.Show("LUTFEN SAYI GIRINIZ", "HATA");
            }
        }

        private void textBox2_KeyPress(object sender, KeyPressEventArgs e)
        {
            int basilantus = Convert.ToInt32(e.KeyChar);
            if (!(basilantus >= 48 && basilantus <= 57 || basilantus == 8 || basilantus == 022))
            {
                e.Handled = true;
                MessageBox.Show("LUTFEN SAYI GIRINIZ", "HATA");
            }
        }

        private void textBox3_KeyPress(object sender, KeyPressEventArgs e)
        {
            int basilantus = Convert.ToInt32(e.KeyChar);
            if (!(basilantus >= 48 && basilantus <= 57 || basilantus == 8 || basilantus == 022))
            {
                e.Handled = true;
                MessageBox.Show("LUTFEN SAYI GIRINIZ", "HATA");
            }
        }

        private void textBox4_KeyPress(object sender, KeyPressEventArgs e)
        {
            int basilantus = Convert.ToInt32(e.KeyChar);
            if (!(basilantus >= 48 && basilantus <= 57 || basilantus == 8 || basilantus == 022))
            {
                e.Handled = true;
                MessageBox.Show("LUTFEN SAYI GIRINIZ", "HATA");
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Form1 form1sec = new Form1();
            form1sec.Show();
            this.Hide();
        }

        private void label10_Click(object sender, EventArgs e)
        {

        }
    }
}
