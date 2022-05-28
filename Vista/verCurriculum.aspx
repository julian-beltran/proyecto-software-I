<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/verCurriculum.aspx.cs" Inherits="Vista_verCurriculum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
            text-align: center;
        }
        .auto-style6 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">
                <div class="auto-style6">
                    <div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="gridviewth" DataSourceID="ObjectDataSource1" CellPadding="4" EmptyDataText="Nada que ver por ahora" ForeColor="#333333" GridLines="None" Width="100%">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                        <asp:BoundField DataField="Nom_ape" HeaderText="Nom_ape" SortExpression="Nom_ape" />
                        <asp:BoundField DataField="Contacto" HeaderText="Contacto" SortExpression="Contacto" />
                        <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
                        <asp:BoundField DataField="Cedula" HeaderText="Cedula" SortExpression="Cedula" />
                        <asp:BoundField DataField="Experiencia" HeaderText="Experiencia" SortExpression="Experiencia" />
                        <asp:BoundField DataField="Competencias" HeaderText="Competencias" SortExpression="Competencias" />
                        <asp:BoundField DataField="Carrera" HeaderText="Carrera" SortExpression="Carrera" />
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
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="mostrarCurriculum" TypeName="DAO_curriculum">
                        <SelectParameters>
                            <asp:SessionParameter Name="aspiranteId" SessionField="aspiranteId" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
                <asp:Button ID="Button1" runat="server" CssClass="btn" OnClick="Button1_Click" Text="Atras" />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

