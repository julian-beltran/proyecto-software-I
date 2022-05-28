<%@ Page Title="Asprirante" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/Aspirante.aspx.cs" Inherits="Vista_Aspirante" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="shortcut icon" type="image/x-icon" href="../Imagenes/headhunting.png" />
     <style type="text/css">
         .auto-style12 {
             width: 100%;
             height: 100%;
         }
         .auto-style13 {
             width: 50%;
         }
         .auto-style14 {
             width: 50%;
         }
        .auto-style21 {
            color: #0000FF;
            font-size: xx-small;
        }
    .auto-style22 {
        text-align: center;
    }
         .auto-style25 {
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
    <table class="auto-style12">
        <tr>
            <td class="auto-style22" colspan="2">
                <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/Imagenes/graduado.png" Width="100px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style22" colspan="2"><em>&nbsp;</em>Hola, bienvenido: <asp:Label ID="L_Mensaje" runat="server" CssClass="auto-style25"></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14"><em>
                <asp:Label ID="L_Id" runat="server" CssClass="auto-style21" Visible="False"></asp:Label>
                </em></td>
        </tr>
        <tr>
            <td class="auto-style22" colspan="2">
                <asp:Button ID="Button1" runat="server" CssClass="btn" OnClick="Button1_Click" Text="Crear curriculum" />
            </td>
        </tr>
        <tr>
            <td class="auto-style22" colspan="2">
                <asp:Button ID="Button2" runat="server" CssClass="btn" OnClick="Button2_Click" Text="Ver Curriculum" />
            </td>
        </tr>
        <tr>
            <td class="auto-style22" colspan="2">
                <asp:Button ID="B_VerOfertasAspirante" runat="server" CssClass="btn" Text="Ver ofertas" PostBackUrl="~/Vista/VerOfertasRegistrado.aspx" />
            </td>
        </tr>
        <tr>
            <td class="auto-style22" colspan="2">
                <asp:Button ID="B_MiCuenta" runat="server" CssClass="btn" Text="Mi cuenta" PostBackUrl="~/Vista/CRUD_CuentaAspirante.aspx"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style22" colspan="2">
                <asp:Button ID="B_CerrarSesion" runat="server" CssClass="btn" Text="Cerrar sesion" OnClick="B_CerrarSesion_Click" />
            </td>
        </tr>
        </table>
</asp:Content>

