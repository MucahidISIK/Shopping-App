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
    
    public partial class Form2 : Form
    {
        int x = Form1.satirim;
        public Form2()
        {
            InitializeComponent();
            
        }

        public void DataDoldur9()
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

            string sql = "SELECT * FROM public.\"Urunler\"";

            NpgsqlDataAdapter add = new NpgsqlDataAdapter(sql, connection);
            add.Fill(dataSet);

            dataGridView9.DataSource = dataSet.Tables[0];
            connection.Close();
        }
        public void DataDoldur8()
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

            string sql = "SELECT * FROM public.\"Sepet\"";

            NpgsqlDataAdapter add = new NpgsqlDataAdapter(sql, connection);
            add.Fill(dataSet);

            dataGridView8.DataSource = dataSet.Tables[0];
            connection.Close();
        }
        public void DataDoldur7()
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

            string sql = "SELECT * FROM public.\"Rozet\"";

            NpgsqlDataAdapter add = new NpgsqlDataAdapter(sql, connection);
            add.Fill(dataSet);

            dataGridView7.DataSource = dataSet.Tables[0];
            connection.Close();
        }
        public void DataDoldur6()
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

            string sql = "SELECT * FROM public.\"KullaniciRozeti\"";

            NpgsqlDataAdapter add = new NpgsqlDataAdapter(sql, connection);
            add.Fill(dataSet);

            dataGridView6.DataSource = dataSet.Tables[0];
            connection.Close();
        }
        public void DataDoldur5()
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

            dataGridView5.DataSource = dataSet.Tables[0];
            connection.Close();
        }
        public void DataDoldur4()
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

            string sql = "SELECT * FROM public.\"Cesit\"";

            NpgsqlDataAdapter add = new NpgsqlDataAdapter(sql, connection);
            add.Fill(dataSet);

            dataGridView4.DataSource = dataSet.Tables[0];
            connection.Close();
        }
        public void DataDoldur3()
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

            string sql = "SELECT * FROM public.\"Adres\"";

            NpgsqlDataAdapter add = new NpgsqlDataAdapter(sql, connection);
            add.Fill(dataSet);

            dataGridView3.DataSource = dataSet.Tables[0];
            connection.Close();
        }
        public void DataDoldur2()
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

            string sql = "SELECT * FROM public.\"Iletisim\"";

            NpgsqlDataAdapter add = new NpgsqlDataAdapter(sql, connection);
            add.Fill(dataSet);

            dataGridView2.DataSource = dataSet.Tables[0];
            connection.Close();
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

        private void Form2_Load(object sender, EventArgs e)
        {
           
            DataDoldur();
            DataDoldur2();
            DataDoldur3();
            DataDoldur4();
            DataDoldur5();
            DataDoldur6();
            DataDoldur7();
            DataDoldur8();
            DataDoldur9();

            label24.Text = dataGridView1.Rows[x].Cells[2].Value.ToString();
            label25.Text = dataGridView1.Rows[x].Cells[3].Value.ToString();

            string iletisimNo = dataGridView1.Rows[x].Cells[4].Value.ToString();
            int kacinci = 0;
            int kacinci2 = 0;
            int degerim = 0;
            while (kacinci < dataGridView2.Rows.Count - 1)
            {
                if (iletisimNo == dataGridView2.Rows[kacinci].Cells[0].Value.ToString())
                {
                    label29.Text = dataGridView2.Rows[kacinci].Cells[1].Value.ToString();
                    label31.Text = dataGridView2.Rows[kacinci].Cells[3].Value.ToString();
                    degerim = kacinci;
                }
                kacinci++;
            }

            string adresNo = dataGridView2.Rows[degerim].Cells[2].Value.ToString();

            while (kacinci2 < dataGridView3.Rows.Count - 1)
            {
                if (adresNo == dataGridView3.Rows[kacinci2].Cells[0].Value.ToString())
                {
                    label27.Text = dataGridView3.Rows[kacinci2].Cells[1].Value.ToString();
                }
                kacinci2++;
            }

            label36.Text = dataGridView4.Rows[0].Cells[1].Value.ToString();
            label37.Text = dataGridView4.Rows[1].Cells[1].Value.ToString();

            label3.Text = dataGridView5.Rows[0].Cells[2].Value.ToString();
            label13.Text = dataGridView5.Rows[1].Cells[2].Value.ToString();
            label8.Text = dataGridView5.Rows[2].Cells[2].Value.ToString();
            label18.Text = dataGridView5.Rows[3].Cells[2].Value.ToString();

            label4.Text = dataGridView5.Rows[0].Cells[3].Value.ToString();
            label11.Text = dataGridView5.Rows[1].Cells[3].Value.ToString();
            label6.Text = dataGridView5.Rows[2].Cells[3].Value.ToString();
            label16.Text = dataGridView5.Rows[3].Cells[3].Value.ToString();

            int sayac = 0;
            string rozetNo = " ";
            while (sayac < dataGridView6.Rows.Count - 1)
            {
                if (Form1.kullaniciNo == dataGridView6.Rows[sayac].Cells[0].Value.ToString())
                {
                    rozetNo = dataGridView6.Rows[sayac].Cells[1].Value.ToString();
                }
                sayac++;
            }

            int sayac2 = 0;
            while (sayac2 < dataGridView7.Rows.Count - 1)
            {
                if (rozetNo == dataGridView7.Rows[sayac2].Cells[0].Value.ToString())
                {
                    label38.Text = dataGridView7.Rows[sayac2].Cells[1].Value.ToString();
                    label40.Text = dataGridView7.Rows[sayac2].Cells[2].Value.ToString();
                }
                sayac2++;
            }

            string alinanUrun = " ";
            int sayacim = 0;
            while (sayacim < dataGridView8.Rows.Count - 1)
            {
                if (Form1.kullaniciNo == dataGridView8.Rows[sayacim].Cells[1].Value.ToString())
                {
                    alinanUrun = dataGridView8.Rows[sayacim].Cells[2].Value.ToString();
                }
                sayacim++;
            }

            string urunAdi = " ";
            int sayacim2 = 0;
            while (sayacim2 < dataGridView9.Rows.Count - 1)
            {
                if (Form1.kullaniciNo == dataGridView9.Rows[sayacim2].Cells[0].Value.ToString())
                {
                    urunAdi = dataGridView9.Rows[sayacim2].Cells[1].Value.ToString();
                }
                sayacim2++;
            }

            int sayacim3 = 0;
            while (sayacim3 < dataGridView5.Rows.Count - 1)
            {
                if (urunAdi == dataGridView5.Rows[sayacim3].Cells[0].Value.ToString())
                {
                    richTextBox1.Text = dataGridView5.Rows[sayacim3].Cells[1].Value.ToString() + " " + dataGridView5.Rows[sayacim3].Cells[3].Value.ToString() + " TL";
                }
                sayacim3++;
            }

        }

        private void button1_Click(object sender, EventArgs e)
        {
            Form1 form1sec = new Form1();
            form1sec.Show();
            this.Hide();
        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void label20_Click(object sender, EventArgs e)
        {

        }

        private void label31_Click(object sender, EventArgs e)
        {

        }

        private void label10_Click(object sender, EventArgs e)
        {

        }

        private void label24_Click(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void label25_Click(object sender, EventArgs e)
        {

        }

        private void label29_Click(object sender, EventArgs e)
        {

        }

        private void richTextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void dataGridView2_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void label27_Click(object sender, EventArgs e)
        {

        }

        private void dataGridView3_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void dataGridView4_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void label36_Click(object sender, EventArgs e)
        {

        }

        private void label37_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void richTextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
