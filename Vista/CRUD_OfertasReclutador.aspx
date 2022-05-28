<%@ Page Title="Ofertas reclutador" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/CRUD_OfertasReclutador.aspx.cs" Inherits="Vista_CRUD_OfertasReclutador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style12 {
        text-align: center;
    }
        .auto-style13 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            margin-top: 2rem;
            background-color: #0e39fe;
            color: white;
            font-size: 0.75rem;
            text-transform: uppercase;
            bottom: -20px;
            right: 18%;
            letter-spacing: 0.15em;
            transition: all 0.3s ease;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tbody class="content-foo">
        <tr>
            <td>
                <div class="auto-style12">
                <asp:GridView ID="GridView1" runat="server" CssClass="gridviewth" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource_Ofertas" DataKeyNames="Id"   Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
<asp:BoundField DataField="Titulo" HeaderText="Titulo" SortExpression="Titulo"></asp:BoundField>
<asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion"></asp:BoundField>
                        <asp:BoundField DataField="Municipio" HeaderText="Municipio" SortExpression="Municipio" />
                        <asp:BoundField DataField="Salario" HeaderText="Salario" SortExpression="Salario" />
                        <asp:CommandField ButtonType="Image" CancelImageUrl="~/Imagenes/cancelar.png" DeleteImageUrl="~/Imagenes/eliminar.png" EditImageUrl="~/Imagenes/editar.png" HeaderText="Opciones" ShowDeleteButton="True" ShowEditButton="True" UpdateImageUrl="~/Imagenes/actualizado.png">
                        <ControlStyle Height="25px" Width="25px" />
                        </asp:CommandField>
                        <asp:CommandField ButtonType="Image" HeaderText="Ver" SelectImageUrl="~/Imagenes/testigo.png" ShowSelectButton="True">
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
                <asp:ObjectDataSource ID="ObjectDataSource_Ofertas" runat="server" DataObjectTypeName="Ofertas" DeleteMethod="eliminarOferta" SelectMethod="mostrarOfertasEmpresa" TypeName="DAO_Ofertas" UpdateMethod="editarOferta">
                    <SelectParameters>
                        <asp:SessionParameter Name="Telefono_Id" SessionField="empresaTel" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Button ID="B_Atras" runat="server" CssClass="btn" Text="Regresar" PostBackUrl="~/Vista/Reclutador.aspx" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12">

                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

