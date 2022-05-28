<%@ Page Title="Aplique a una oferta" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/VerOfertasRegistrado.aspx.cs" Inherits="Vista_VerOfertasRegistrado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style24 {
            width: 100%;
            height: 100%;
        }
        .auto-style25 {
            width: 25%;
        }
        .auto-style26 {
            width: 25%;
        }
    .auto-style23 {
        text-align: center;
    }
        .auto-style27 {
            width: 25%;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style24">
        <tr>
            <td class="auto-style23" colspan="2">
                <asp:Label ID="Label1" runat="server" CssClass="label" Text="Escoja entre un rango de salarios"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">
                &nbsp;</td>
            <td class="auto-style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:DropDownList ID="DDL_Valor1" runat="server" CssClass="caja" DataSourceID="ObjectDataSourceValores" DataTextField="Valor" DataValueField="Valor">
                </asp:DropDownList>
            </td>
            <td class="auto-style27">
                <asp:DropDownList ID="DDL_Valor2" runat="server" CssClass="caja" DataSourceID="ObjectDataSourceValores" DataTextField="Valor" DataValueField="Valor">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">
                &nbsp;</td>
            <td class="auto-style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23" colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="gridviewth" DataSourceID="ObjectDataSourceOfertas" EmptyDataText="NADA QUE VER POR AHORA" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="Nombre" HeaderText="Empresa" SortExpression="Nombre" />
                            <asp:BoundField DataField="Titulo" HeaderText="Labor" SortExpression="Titulo" />
                            <asp:CommandField ButtonType="Image" HeaderText="Ver más" SelectImageUrl="~/Imagenes/testigo.png" ShowSelectButton="True">
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
                    </td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style26">
                    <asp:ObjectDataSource ID="ObjectDataSourceOfertas" runat="server" SelectMethod="obtenerSalariosXValor" TypeName="DAO_Salarios">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DDL_Valor1" Name="v1" PropertyName="SelectedValue" Type="Int32" />
                            <asp:ControlParameter ControlID="DDL_Valor2" Name="v2" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                <asp:ObjectDataSource ID="ObjectDataSourceValores" runat="server" SelectMethod="obtenerSalario" TypeName="DAO_Salarios"></asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style23" colspan="2">
                <asp:Button ID="Button1" runat="server" CssClass="btn" OnClick="Button1_Click" Text="Buscar" />
            </td>
        </tr>
        <tr>
            <td class="auto-style23" colspan="2">
                <asp:Button ID="B__Atras" runat="server" CssClass="btn" PostBackUrl="~/Vista/Aspirante.aspx" Text="Regresar" />
            </td>
        </tr>
    </table>
</asp:Content>

