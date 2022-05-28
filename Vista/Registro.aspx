<%@ Page Title="Registro empresa" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/Registro.aspx.cs" Inherits="Vista_Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <link rel="shortcut icon" type="image/x-icon" href="../Imagenes/headhunting.png" />
    <style type="text/css">
        .auto-style14 {
            text-align: center;
        }
        .auto-style15 {
            width: 25%;
            height: 23px;
        }
        .botones {}
    .auto-style17 {
        text-align: center;
        height: 29px;
    }
        .auto-style19 {
        display: block;
        margin: 0 0 10px;
        font-size: 18px;
        line-height: 1;
        text-transform: uppercase;
        letter-spacing: .2em;
        color: #FF3300;
    }
    .auto-style20 {
        height: 30px;
            width: 168px;
        }
    .auto-style21 {
        width: 25%;
        height: 30px;
    }
        .auto-style22 {
            width: 168px;
        }
        .auto-style23 {
            color: #FF3300;
        }
        .auto-style24 {
            width: 168px;
            height: 23px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tabla">
        <tr>
            <td class="auto-style22">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_Nombre" CssClass="auto-style23" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:Label ID="Label3" runat="server" CssClass="label" Text="Razon social:"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox CssClass="caja" ID ="TB_Nombre" runat="server" MaxLength="30"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">
                <asp:Label ID="Label4" runat="server" CssClass="label" Text="Direccion:"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox CssClass="caja" ID ="TB_Direccion" runat="server" MaxLength="30"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TB_Email" CssClass="auto-style23" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:Label ID="Label5" runat="server" CssClass="label" Text="Correo:"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox CssClass="caja" ID ="TB_Email" runat="server" MaxLength="30" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TB_Telefono" CssClass="auto-style23" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:Label ID="Label6" runat="server" CssClass="label" Text="Telefono:"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="TB_Telefono" runat="server" CssClass="caja" TextMode="Phone"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TB_Usuario" CssClass="auto-style23" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:Label ID="Label7" runat="server" CssClass="label" Text="Usuario:"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="TB_Usuario" runat="server" CssClass="caja" MaxLength="30"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TB_Contraseña" CssClass="auto-style23" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:Label ID="Label8" runat="server" CssClass="label" Text="Contraseña:"></asp:Label>
            </td>
            <td class="auto-style21">
                <asp:TextBox ID="TB_Contraseña" runat="server" CssClass="caja" MaxLength="30" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17" colspan="2">
                <asp:Button CssClass="btn" ID="B_Registrar" runat="server" Text="Registrarme" OnClick="B_Registrar_Click" />
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14" colspan="2">
                <input type="button" onclick="history.back()" name="volver atrás" value="volver atrás" class="btn"></td>
        </tr>
        <tr>
            <td class="auto-style14" colspan="2">
                <strong>
                <asp:Label ID="L_Mensaje" runat="server" CssClass="auto-style19"></asp:Label>
                </strong>
            </td>
        </tr>
        </table>
</asp:Content>

