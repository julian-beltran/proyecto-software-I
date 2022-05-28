<%@ Page Title="Crear oferta laboral" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/CrearOferta.aspx.cs" Inherits="Vista_CrearOferta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="shortcut icon" type="image/x-icon" href="../Imagenes/headhunting.png" />
    <style type="text/css">
        .auto-style14 {
            width: 25%;
        }
        .auto-style25 {
        text-align: center;
    }
        .auto-style23 {
            color: #FF3300;
        }
        .auto-style26 {
            height: 44px;
        }
        .auto-style27 {
            width: 25%;
            height: 44px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tabla">
        <tr>
            <td class="fuente">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TB_TituloEmpleo" CssClass="auto-style23" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:Label ID="Label2" runat="server" CssClass="label" Text="Titulo:"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="TB_TituloEmpleo" runat="server" CssClass="caja" Width="198px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="fuente">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DDL_Municipio" CssClass="auto-style23" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:Label ID="Label3" runat="server" CssClass="label" Text="Municipio:"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:DropDownList ID="DDL_Municipio" runat="server" CssClass="caja" DataSourceID="ObjectDataSource_Lugares" DataTextField="Nombre" DataValueField="Nombre" Width="247px">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource_Lugares" runat="server" SelectMethod="obtenerMunicipios" TypeName="DAO_Municipios"></asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style26">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TB_Descripcion" CssClass="auto-style23" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:Label ID="Label4" runat="server" CssClass="label" Text="Descripcion:"></asp:Label>
            </td>
            <td class="auto-style27">
                <asp:TextBox ID="TB_Descripcion" runat="server" CssClass="caja" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="fuente">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TB_Salario" CssClass="auto-style23" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:Label ID="Label5" runat="server" CssClass="label" Text="Salario:"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="TB_Salario" runat="server" CssClass="caja" OnTextChanged="TB_Salario_TextChanged" TextMode="Number" Width="201px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="fuente">&nbsp;</td>
            <td class="auto-style14">
                <asp:Label ID="L_codigo" runat="server" CssClass="FUENTE" style="color: #FF0000; font-size: xx-small;" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style25" colspan="2">
                <asp:Button ID="B_CrearOferta" runat="server" CssClass="btn" Text="Crear" OnClick="B_CrearOferta_Click" />
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25" colspan="2">
                <input type="button" onclick="history.back()" name="volver atrás" value="volver atrás" class="btn"></td>
        </tr>
    </table>
</asp:Content>

