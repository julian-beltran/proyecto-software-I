<%@ Page Title="Empleador" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/Reclutador.aspx.cs" Inherits="Vista_Reclutador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="shortcut icon" type="image/x-icon" href="../Imagenes/headhunting.png" />
    <style type="text/css">
        .auto-style22 {
            width: 100%;
            height: 100%;
        }
        .auto-style26 {
        text-align: center;
    }
        .auto-style27 {
            display: block;
            margin: 0 0 10px;
            font-size: 18px;
            line-height: 1;
            text-transform: uppercase;
            letter-spacing: .2em;
            color: #FF3300;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style22">
        <tr>
            <td class="auto-style26">
                <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/Imagenes/empresa.png" Width="100px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">Hola, bienvenido:</td>
        </tr>
        <tr>
            <td class="auto-style26">
                <asp:Label ID="L_Mensaje" runat="server" CssClass="auto-style27"></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">
                <asp:Button ID="B_CrearOferta" runat="server" CssClass="btn" Text="Crear oferta" OnClick="B_CrearOferta_Click" PostBackUrl="~/Vista/CrearOferta.aspx" />
            </td>
        </tr>
        <tr>
            <td class="auto-style26">
                <asp:Button ID="B_VerOferta" runat="server" CssClass="btn" Text="Sus ofertas" OnClick="B_VerOferta_Click" PostBackUrl="~/Vista/CRUD_OfertasReclutador.aspx" />
            </td>
        </tr>
        <tr>
            <td class="auto-style26">
                <asp:Button ID="B_EditarCuenta" runat="server" CssClass="btn" Text="Mi cuenta" OnClick="B_EditarCuenta_Click" PostBackUrl="~/Vista/CRUD_PerfilReclutador.aspx" />
            </td>
        </tr>
        <tr>
            <td class="auto-style26">
                <asp:Button ID="B_CerrarSesion" runat="server" CssClass="btn" Text="Cerrar sesion" OnClick="B_CerrarSesion_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

