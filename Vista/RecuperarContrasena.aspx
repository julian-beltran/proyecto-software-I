<%@ Page Title="Recuperar contraseña" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/RecuperarContrasena.aspx.cs" Inherits="Vista_RecuperarContrasena" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="shortcut icon" type="image/x-icon" href="../Imagenes/headhunting.png" />
    <style type="text/css">
        .auto-style12 {
            width: 25%;
        }
        .auto-style14 {
            width: 25%;
        }
        .auto-style19 {
            width: 25%;
            height: 37px;
        }
        .auto-style21 {
            height: 26px;
            text-align: center;
        }
        .auto-style22 {
            color: #FF3300;
        }
        .auto-style23 {
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
    <table class="tabla">
        <tr>
            <td class="auto-style19">
                <asp:Label ID="Label2" runat="server" CssClass="label" Text="Nueva contraseña:"></asp:Label>
                &nbsp;</td>
            <td class="auto-style19">
                <asp:TextBox ID="TB_Nueva" runat="server" CssClass="caja" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_NC" runat="server" ControlToValidate="TB_Nueva" CssClass="auto-style22" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label1" runat="server" CssClass="label" Text="Confirmar contraseña:"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="TB_ConfirmarNueva" runat="server" CssClass="caja" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_CNC" runat="server" ControlToValidate="TB_ConfirmarNueva" CssClass="auto-style22" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21" colspan="2">
                <asp:CompareValidator ID="CV_Contraseña" runat="server" ControlToCompare="TB_Nueva" ControlToValidate="TB_ConfirmarNueva" CssClass="auto-style23" ErrorMessage="Las contraseñas no coinciden"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style21" colspan="2">
                <asp:Button ID="B_Cambiar" runat="server" CssClass="btn" Text="Cambiar" OnClick="B_Cambiar_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style21" colspan="2">
                <asp:Button ID="B_Login" runat="server" CssClass="btn" Text="Login"  />
            </td>
        </tr>
        </table>
</asp:Content>

