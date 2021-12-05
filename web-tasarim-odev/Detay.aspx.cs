using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace web_tasarim_odev
{
    public partial class _Detay : Page
    {
        string connectionString = "Server=DESKTOP-BPOPPOV\\SQLEXPRESS;Database=Ogrenci;Integrated Security=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                SqlConnection connection = new SqlConnection(connectionString);

                string id = Request.QueryString["id"];

                string OgrenciSec = "select * from OGRENCI_BILGI where ID=" + id;
                SqlCommand command = new SqlCommand(OgrenciSec, connection);
                connection.Open();

                SqlDataReader oReader = command.ExecuteReader();
                while (oReader.Read())
                {
                    TXT_OGRENCI_NO.Text = oReader["OGRENCI_NO"].ToString();
                    TXT_AD.Text = oReader["AD"].ToString();
                    TXT_SOYAD.Text = oReader["SOYAD"].ToString();
                }

                connection.Close();



            }


        }


        protected void BTN_SIL_Click(object sender, EventArgs e)
        {

            SqlConnection connection = new SqlConnection(connectionString);
            string id = Request.QueryString["id"];

            string OgrenciSil = "DELETE FROM OGRENCI_BILGI where ID=" + id;
            SqlCommand command = new SqlCommand(OgrenciSil, connection);
            command.Connection.Open();
            command.ExecuteNonQuery();

            Response.Redirect("Kayit.aspx");

        }

        protected void BTN_GUNCELLE_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string id = Request.QueryString["id"];


            string no = TXT_OGRENCI_NO.Text;
            string ad = TXT_AD.Text;
            string soyad = TXT_SOYAD.Text;



            string OgrenciSil = "UPDATE OGRENCI_BILGI SET OGRENCI_NO='" + no + "', AD='" + ad + "', SOYAD='" + soyad + "' where ID=" + id;
            SqlCommand command = new SqlCommand(OgrenciSil, connection);
            command.Connection.Open();
            command.ExecuteNonQuery();

            Response.Redirect("Kayit.aspx");
        }
    }
}