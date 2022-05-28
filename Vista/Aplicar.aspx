<%@ Page Title="Aplique a una oferta" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/Aplicar.aspx.cs" Inherits="Vista_Aplicar" %>

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
        .auto-style19 {
            width: 25%;
        }
        .auto-style20 {
            width: 25%;
        }
        .auto-style21 {
            width: 25%;
        }
        .auto-style22 {
            width: 25%;
        }
        .auto-style24 {
            font-size: xx-small;
        }
        .auto-style25 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tabla">
        <tr>
            <td class="auto-style25" colspan="4">
                <asp:Label ID="Label2" runat="server" CssClass="label" Text="Ofertas disponibles, aplique ahora!"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" class="auto-style25">
          <asp:GridView ID="gvTablaUno" runat="server" AutoGenerateColumns="False" OnRowCommand="gvTablaUno_RowCommand" DataSourceID="ObjectDataSource2"  DataKeyNames="Id,empresaID,Titulo,Descripcion,Municipio,Salario,Nombre,id_oferta"  CssClass="gridviewtd" OnSelectedIndexChanged="gvTablaUno_SelectedIndexChanged1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
         <asp:BoundField DataField="id" HeaderText="id de tabla" SortExpression="id" Visible="false" />
         <asp:BoundField DataField="empresaID" HeaderText="Id de empresa" visible="false"/>
         <asp:BoundField DataField="Nombre" HeaderText="Empresa"/>
         <asp:BoundField DataField="Titulo" HeaderText="Labor"/>
         <asp:BoundField DataField="Descripcion" HeaderText="Descripcion"/>
         <asp:BoundField DataField="Municipio" HeaderText="Lugar"/>
         <asp:BoundField DataField="Salario" HeaderText="Sueldo"/>
         <asp:BoundField DataField="id_oferta" HeaderText="id_oferta" visible="false"/>
      
         <asp:CommandField ButtonType="Image" HeaderText="Aplicar" SelectImageUrl="~/Imagenes/comprobado.png" SelectText="Ver" ShowSelectButton="True">
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
            <td class="auto-style12">
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="mostrarOfertasUsuarioRegitrado" TypeName="DAO_Ofertas">
                <SelectParameters>
                    <asp:ControlParameter ControlID="gvTablaUno" Name="id" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25" colspan="4">
                <asp:Button ID="B_Atras" runat="server" CssClass="btn"  PostBackUrl="~/Vista/VerOfertasRegistrado.aspx" Text="Atrás" />
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <br />
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style25" colspan="4">
                            <asp:Label ID="Label1" runat="server" CssClass="label" Text="Datos de su aplicación"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style20">&nbsp;</td>
                        <td class="auto-style21">&nbsp;</td>
                        <td class="auto-style22">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="content-foo" colspan="4"><strong>
                <asp:Label ID="L_CapturarInfo" runat="server" CssClass="label"></asp:Label>
                            <br />
                            </strong>
            <asp:Label ID="L_MensajeLabor" runat="server" CssClass="label"></asp:Label>
                            <br />
            <asp:Label ID="L_MensajeLugar" runat="server" CssClass="label"></asp:Label>
                            <br />
            <asp:Label ID="L_MensajeSalario" runat="server" CssClass="label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="content-foo" colspan="4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style25" colspan="4">
                            <asp:Button ID="B_Aplicar" runat="server" CssClass="btn" OnClick="B_Aplicar_Click" Text="Enviar" />
                        </td>
                    </tr>
                </table>
                            <asp:Label ID="L_EmpresaId" runat="server" Visible="False" CssClass="auto-style24"></asp:Label>
                            <asp:Label ID="L_idOferta" runat="server" Visible="False" CssClass="auto-style24"></asp:Label>
                            <asp:Label ID="L_idOferta1" runat="server" Visible="False" CssClass="auto-style24"></asp:Label>
                <asp:Label ID="L_CapturarInfoNom" runat="server" CssClass="auto-style25" style="font-size: xx-small" Visible="False"></asp:Label>
                <asp:Label ID="L_CapturarInfoApe" runat="server" CssClass="auto-style25" style="font-size: xx-small" Visible="False"></asp:Label>
                <asp:Label ID="L_CapturarInfoCor" runat="server" CssClass="auto-style25" style="font-size: xx-small" Visible="False"></asp:Label>
                <asp:Label ID="L_CapturarInfoIde" runat="server" CssClass="auto-style25" style="font-size: xx-small" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

