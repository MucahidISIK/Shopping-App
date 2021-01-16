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
    public partial class Form1 : Form
    {
        public static int satirim = 0;
        public static string kullaniciNo = "hata";
        public Form1()
        {
            InitializeComponent();
            DataDoldur();
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

            string sql = "SELECT * FROM public.\"Kullanici\"";

            NpgsqlDataAdapter add = new NpgsqlDataAdapter(sql, connection);
            add.Fill(dataSet);

            dataGridView1.DataSource = dataSet.Tables[0];
            connection.Close();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }



        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            
            string sifre = textBox2.Text;
            string kullaniciAdi = textBox1.Text;
            int kacinci = 0;

            int sifreDogruMu = 1;
            while (kacinci < dataGridView1.Rows.Count - 1)
            {
                if (kullaniciAdi == dataGridView1.Rows[kacinci].Cells[6].Value.ToString())
                {
                    kullaniciNo = dataGridView1.Rows[kacinci].Cells[0].Value.ToString();
                    satirim = kacinci;

                    if(sifre != dataGridView1.Rows[kacinci].Cells[1].Value.ToString())
                    {
                        MessageBox.Show("HATALI GIRIS", "HATA");
                        sifreDogruMu++;

                    }
                    else
                    {
                        sifreDogruMu = 0;
                    }
                }
                kacinci++;
            }
           
            
            if(sifreDogruMu == 0)
            {
                if (textBox1.Text == "admin")
                {
                    Form4 form4sec = new Form4();
                    form4sec.Show();
                    this.Hide();
                }
                else
                {
                    Form2 form2sec = new Form2();
                    form2sec.Show();
                    this.Hide();
                }
            }
            else
            {
                MessageBox.Show("HATALI GIRIS", "HATA");
            }
        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form3 form3sec = new Form3();
            form3sec.Show();
            this.Hide();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
