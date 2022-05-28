<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/principal.master" AutoEventWireup="true" CodeFile="~/Controlador/login1.aspx.cs" Inherits="Vista_login1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <link href="../Estilos/estilos.css" rel="stylesheet" type="text/css">
    <style type="text/css">
        .auto-style4 {
            width: 25%;
        }
        .auto-style5 {
            width: 25%;
        }
    .auto-style8 {
        height: 22px;
        text-align: center;
    }
        .auto-style12 {
            color: #FF3300;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label1" runat="server" CssClass="label" Text="Usuario:"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="UserName" runat="server" CssClass="caja" Width="50%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName" CssClass="auto-style12" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label2" runat="server" CssClass="label" Text="Contraseña:"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="Password" runat="server" CssClass="caja" Width="50%" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" CssClass="auto-style12" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8" colspan="2">
                <asp:Button ID="logIn" runat="server" Text="Log In" CssClass="btn" OnClick="logIn_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8" colspan="2">
                <asp:HyperLink ID="HyperLink2" runat="server" CssClass="label" NavigateUrl="~/Vista/EleccionDeRol.aspx">No tengo una cuenta</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style8" colspan="2">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Vista/CambiarContrasena.aspx" CssClass="label">Recuperar contraseña</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style8" colspan="2">
                <asp:Button ID="Regresar" runat="server" Text="Regresar" CssClass="btn" OnClick="Regresar_Click" />
            </td>
        </tr>
        </table>
</asp:Content>

