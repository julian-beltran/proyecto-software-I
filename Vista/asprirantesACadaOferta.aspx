<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/asprirantesACadaOferta.aspx.cs" Inherits="Vista_asprirantesACadaOferta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            height: 23px;
            text-align: center;
        }
        .auto-style7 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label1" runat="server" CssClass="label" Text="Apirantes a su oferta"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="gridview" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                        <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                        <asp:BoundField DataField="Id_oferta" HeaderText="Ref oferta" SortExpression="Id_oferta" />
                        <asp:BoundField DataField="UserId" HeaderText="Identificacion" SortExpression="UserId" />
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
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="obtenerAspiranteXOferta" TypeName="DAO_Empresa">
                    <SelectParameters>
                        <asp:SessionParameter Name="empresaTel" SessionField="empresaTel" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="Button1" runat="server" CssClass="btn" OnClick="Button1_Click" Text="Atras" />
            </td>
        </tr>
    </table>
</asp:Content>

