<%@ Page Title="Perfil reclutador" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/CRUD_PerfilReclutador.aspx.cs" Inherits="Vista_CRUD_PerfilReclutador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style17 {
            height: 21px;
            text-align: center;
        }
        .auto-style18 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <div class="auto-style18">
                <asp:GridView ID="GV_PerfilReclutador" runat="server" CssClass="gridviewth" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource_prfl" DataKeyNames="id" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                        <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                        <asp:CommandField ShowEditButton="True" ButtonType="Image" CancelImageUrl="~/Imagenes/cancelar.png" EditImageUrl="~/Imagenes/editar.png" HeaderText="Opciones" UpdateImageUrl="~/Imagenes/actualizado.png" >
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
                <asp:ObjectDataSource ID="ObjectDataSource_prfl" runat="server" DataObjectTypeName="Empresa" SelectMethod="mostrarEmpresa" TypeName="DAO_Empresa" UpdateMethod="editarPerfilEmpresa">
                    <SelectParameters>
                        <asp:SessionParameter Name="idEmpresa" SessionField="empresaTel" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">
                <asp:Button ID="B_Atras" runat="server" CssClass="btn" Text="Regresar" PostBackUrl="~/Vista/Reclutador.aspx" />
            </td>
        </tr>
    </table>
</asp:Content>

