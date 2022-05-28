<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/curriculum.aspx.cs" Inherits="Vista_curriculum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 25%;
        }
        .auto-style6 {
            width: 25%;
        }
        .auto-style7 {
            width: 126px;
            height: 23px;
        }
        .auto-style8 {
            width: 161px;
            height: 23px;
            text-align: center;
        }
        .auto-style9 {
            display: block;
            margin: 0 0 10px;
            font-size: small;
            line-height: 1;
            text-transform: uppercase;
            letter-spacing: .2em;
            color: #FF0000;
        }
        .auto-style10 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label1" runat="server" CssClass="label" Text="Nombre y apellido:"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:Label ID="L_nombreApellido" runat="server" CssClass="auto-style9"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label6" runat="server" CssClass="label" Text="Contacto:"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TB_telefonoAsp" runat="server" CssClass="caja" MaxLength="10" TextMode="Phone"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label3" runat="server" CssClass="label" Text="Fecha nacimiento:"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="Tb_fecha" runat="server" CssClass="caja" OnTextChanged="Tb_fecha_TextChanged" TextMode="Date"></asp:TextBox>
                <asp:Label ID="L_suEdad" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label4" runat="server" CssClass="label" Text="Cedula:"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TB__Cedula" runat="server" CssClass="caja" MaxLength="10" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label5" runat="server" CssClass="label" Text="Carrera:"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:DropDownList ID="DDL_carrera" runat="server" CssClass="caja" DataSourceID="ObjectDataSourceC" DataTextField="Carrera" DataValueField="Carrera">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSourceC" runat="server" SelectMethod="carreras" TypeName="DAO_Carreras"></asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label7" runat="server" CssClass="label" Text="Experiencia:"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:DropDownList ID="DDL_xp" runat="server" CssClass="caja" DataSourceID="ObjectDataSourceEX" DataTextField="Dato" DataValueField="Dato">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSourceEX" runat="server" SelectMethod="experiencia" TypeName="DAO_Experiencia"></asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label8" runat="server" CssClass="label" Text="Competencias:"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:DropDownList ID="DDL_competencias" runat="server" CssClass="caja" DataSourceID="ObjectDataSourceCom" DataTextField="Dato" DataValueField="Dato">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSourceCom" runat="server" SelectMethod="competencias" TypeName="DAO_Competencias"></asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style10" colspan="2">
                <asp:Button ID="BTN_guardarDatos" runat="server" CssClass="btn" OnClick="BTN_guardarDatos_Click" Text="guardar" />
            </td>
        </tr>
        <tr>
            <td class="auto-style10" colspan="2">
                <asp:Button ID="Button1" runat="server" CssClass="btn" OnClick="Button1_Click" Text="Atras" />
            </td>
        </tr>
    </table>
</asp:Content>

