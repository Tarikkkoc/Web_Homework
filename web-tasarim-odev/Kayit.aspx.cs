using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace web_tasarim_odev
{
    public partial class _Kayit : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = "Server=DESKTOP-BPOPPOV\\SQLEXPRESS;Database=Ogrenci;Integrated Security=True;";
            SqlConnection connection = new SqlConnection(connectionString);

            //connection.Open();

            string no = TXT_OGRENCI_NO.Text;
            string ad = TXT_AD.Text;
            string soyad = TXT_SOYAD.Text;

            string OgrenciEkle = "INSERT INTO OGRENCI_BILGI(OGRENCI_NO, AD, SOYAD)  VALUES('" + no + "', '" + ad + "', '" + soyad + "')";
            SqlCommand command = new SqlCommand(OgrenciEkle, connection);
            command.Connection.Open();
            command.ExecuteNonQuery();

            Response.Redirect("Kayit.aspx");

        }
    }
}