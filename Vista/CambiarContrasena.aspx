<%@ Page Title="Recuperar contraseña" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/CambiarContrasena.aspx.cs" Inherits="Vista_CambiarContrasena" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="shortcut icon" type="image/x-icon" href="../Imagenes/headhunting.png" />
    <style type="text/css">
        .auto-style18 {
            text-align: left;
            height: 31px;
        }
        .auto-style19 {
            width: 25%;
            height: 31px;
        }
        .auto-style22 {
            Font-family: Consolas, monaco, monospace;
            font-weight: bolder;
            font-size: 18px;
            position: relative;
            left: 5%;
            color: #FF0000;
        }
        .auto-style24 {
        height: 26px;
        text-align: center;
    }
        .auto-style25 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tabla">
        <tr>
            <td class="auto-style19">
                <asp:Label ID="Label1" runat="server" CssClass="label" Text="Correo:"></asp:Label>
            </td>
            <td class="auto-style18">
                <asp:TextBox ID="TB_CorreoCambioContraseña" runat="server" CssClass="caja" TextMode="Email" Width="100%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25" colspan="2">
                <asp:Label ID="L_Mensaje" runat="server" CssClass="auto-style22"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style24" colspan="2">
                <asp:Button ID="B_EnviarCorreo" runat="server" CssClass="btn" Text="Enviar" OnClick="B_EnviarCorreo_Click" />
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24" colspan="2">
                <input type="button" onclick="history.back()" name="volver atrás" value="volver atrás" class="btn"></td>
        </tr>
        </table>
</asp:Content>

