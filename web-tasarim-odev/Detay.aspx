<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detay.aspx.cs" Inherits="web_tasarim_odev._Detay" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
    
        <p class="lead">
            &nbsp;
        </p>
        <p class="lead">
            Öğrenci No
            <asp:TextBox ID="TXT_OGRENCI_NO" runat="server"></asp:TextBox>
        </p>
        <p class="lead">
            Ad
            <asp:TextBox ID="TXT_AD" runat="server" Height="23px" Width="260px"></asp:TextBox>
        </p>
        <p class="lead">
            Soyad
            <asp:TextBox ID="TXT_SOYAD" runat="server" Width="222px"></asp:TextBox>
        </p>
        <p>

            <asp:Button ID="BTN_GUNCELLE" runat="server" OnClick="BTN_GUNCELLE_Click" Text="Güncelle" Width="171px" />

            <asp:Button ID="BTN_SIL" runat="server" OnClick="BTN_SIL_Click" Text="Sil" Width="126px" />
        </p>
    </div>

</asp:Content>
