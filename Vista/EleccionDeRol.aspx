<%@ Page Title="Elegir Rol" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/EleccionDeRol.aspx.cs" Inherits="Vista_EleccionDeRol" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="shortcut icon" type="image/x-icon" href="../Imagenes/headhunting.png" />
     <style type="text/css">
         .auto-style12 {
             width: 100%;
         }
         .auto-style15 {
        text-align: center;
    }
         .auto-style20 {
             width: 50%;
         }
         .auto-style23 {
             width: 199px;
         }
     </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style12">
        <tr>
            <td class="auto-style15">
                <table class="auto-style12">
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="Label6" runat="server" CssClass="label" Text="¿Cual es su rol?"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20">
                            &nbsp;</td>
                        <td class="auto-style23">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style20">
                            <asp:Label ID="Label5" runat="server" CssClass="label" Text="Empresa:"></asp:Label>
                        </td>
                        <td class="auto-style23">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Imagenes/empresa.png" OnClick="ImageButton1_Click" Width="150px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20">&nbsp;</td>
                        <td class="auto-style23">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style20">
                            <asp:Label ID="Label4" runat="server" CssClass="label" Text="Estudiante:"></asp:Label>
                        </td>
                        <td class="auto-style23">
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Imagenes/graduado.png" OnClick="ImageButton2_Click" Width="150px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Button ID="Button2" runat="server" OnClick="B_Regresar_Click" Text="Regresar" CssClass="btn" />
            </td>
        </tr>
    </table>

</asp:Content>

