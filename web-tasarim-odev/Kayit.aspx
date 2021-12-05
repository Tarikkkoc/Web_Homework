<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Kayit.aspx.cs" Inherits="web_tasarim_odev._Kayit" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Öğrenci Sistemi</h1>
        <p class="lead">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OgrenciConnectionString %>" SelectCommand="SELECT [AD], [ID] FROM [OGRENCI_BILGI]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="OGRENCI_NO" HeaderText="OGRENCI_NO" SortExpression="OGRENCI_NO" />
                    <asp:BoundField DataField="AD" HeaderText="AD" SortExpression="AD" />
                    <asp:BoundField DataField="SOYAD" HeaderText="SOYAD" SortExpression="SOYAD" />
                    <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="Detay.aspx?id={0}" HeaderText="Seç" Text="Seç" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OgrenciConnectionString %>" SelectCommand="SELECT * FROM [OGRENCI_BILGI]"></asp:SqlDataSource>
        </p>
        <p class="lead">&nbsp;Öğrenci Numaranız: <br /><asp:TextBox ID="TXT_OGRENCI_NO" runat="server"></asp:TextBox></p>
        <p>ADINIZ:<br /><asp:TextBox ID="TXT_AD" runat="server"></asp:TextBox></p>
        <p>SOYADINIZ:<br /><asp:TextBox ID="TXT_SOYAD" runat="server"></asp:TextBox></p>
        
        <p>
            <asp:Button ID="Button1" CssClass="btn btn-primary btn-lg" runat="server" Text="Giriş" OnClick="Button1_Click" />
        </p>
    </div>

   <div class="footer">
       <h2 class="uni">ÜNİVERSİTE ÖĞRENCİ SİSTEMİ</h2>
   </div>

</asp:Content>
