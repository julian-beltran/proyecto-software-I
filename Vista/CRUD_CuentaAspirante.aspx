<%@ Page Title="Cuenta aspirante" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/CRUD_CuentaAspirante.aspx.cs" Inherits="Vista_CRUD_CuentaAspirante" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            width: 25%;
        }
        .auto-style13 {
            width: 25%;
        }
        .auto-style14 {
            width: 25%;
        }
        .auto-style15 {
            width: 25%;
        }
        .auto-style16 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style16" colspan="4">
                <asp:Label ID="label1" runat="server" CssClass="label" Text="Actualice su perfil "></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <div class="content-foo">
                <asp:GridView ID="GridView1" runat="server" CssClass="gridview" AutoGenerateColumns="False" DataSourceID="ObjectDataSource_PerfilAspirante" DataKeyNames="Id" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                        <asp:BoundField DataField="Identificacion" HeaderText="Identificación" SortExpression="Identificacion" />
                        <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                        <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                        <asp:CommandField ButtonType="Image" CancelImageUrl="~/Imagenes/cancelar.png" EditImageUrl="~/Imagenes/editar.png" HeaderText="Opciones" ShowEditButton="True" UpdateImageUrl="~/Imagenes/actualizado.png">
                        <ControlStyle Height="25px" Width="25px" />
                        </asp:CommandField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                </div>
                <asp:ObjectDataSource ID="ObjectDataSource_PerfilAspirante" runat="server" DataObjectTypeName="Aspirante" SelectMethod="mostrarPerfilAspirante" TypeName="DAO_Aspirante" UpdateMethod="editarPerfilAspirante">
                    <SelectParameters>
                        <asp:SessionParameter Name="aspiranteId" SessionField="aspiranteId" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="4">
                <asp:Button ID="Button1" runat="server" CssClass="btn" PostBackUrl="~/Vista/Aspirante.aspx" Text="Atrás" />
            </td>
        </tr>
    </table>
</asp:Content>

