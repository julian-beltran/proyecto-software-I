<%@ Page Title="Registro aspirante" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/RegistroAspirante.aspx.cs" Inherits="Vista_RegistroAspirante" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="Estilos/StyleSheet.css" rel="stylesheet" type="text/css" />
     <link rel="shortcut icon" type="image/x-icon" href="../Imagenes/headhunting.png" />
    <style type="text/css">
        .auto-style15 {
            width: 50%;
            
        }
        .auto-style16 {
            Font-family: Consolas, monaco, monospace;
            font-weight: bolder;
            font-size: 18px;
            position: relative;
            left: 5%;
            color: #FF0000;
        }
        .auto-style17 {
        text-align: center;
    }
        .auto-style23 {
            color: #FF3300;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tabla">
        <tr>
            <td class="fuente">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TB_Nombre" CssClass="auto-style23" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:Label ID="Label1" runat="server" CssClass="label" Text="Nombres:"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox CssClass="caja" ID ="TB_Nombre" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="fuente">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TB_Apellido" CssClass="auto-style23" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:Label ID="Label2" runat="server" CssClass="label" Text="Apellidos:"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="TB_Apellido" runat="server" CssClass="caja"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="fuente">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TB_Identificacion" CssClass="auto-style23" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:Label ID="Label3" runat="server" CssClass="label" Text="Identificacion:"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="TB_Identificacion" runat="server" CssClass="caja" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="fuente">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TB_Correo" CssClass="auto-style23" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:Label ID="Label4" runat="server" CssClass="label" Text="Correo:"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="TB_Correo" runat="server" CssClass="caja" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="fuente">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TB_Identificacion" CssClass="auto-style23" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:Label ID="Label5" runat="server" CssClass="label" Text="Usuario:"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="TB_Usuario" runat="server" CssClass="caja"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="fuente">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TB_Contraseña" CssClass="auto-style23" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:Label ID="Label6" runat="server" CssClass="label" Text="Contraseña:"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="TB_Contraseña" runat="server" CssClass="caja" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17" colspan="2">
                <asp:Button CssClass="btn" ID="B_Registrar" runat="server" Text="Registrarme" OnClick="B_Registrar_Click" />
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17" colspan="2">
                <input type="button" onclick="history.back()" name="volver atrás" value="volver atrás" class="btn"></td>
        </tr>
        <tr>
            <td class="auto-style17" colspan="2">
                <asp:Label ID="L_Mensaje" runat="server" CssClass="auto-style16"></asp:Label>
            </td>
        </tr>
        </table>
</asp:Content>

