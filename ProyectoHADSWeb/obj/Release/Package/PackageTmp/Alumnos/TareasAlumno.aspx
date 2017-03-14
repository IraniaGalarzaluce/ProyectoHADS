<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TareasAlumno.aspx.vb" Inherits="ProyectoHADSWeb.TareasAlumno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #FF5197; color: #FFFFFF; font-weight: bold; font-size: 21px; font-family: Arial; text-align: center; height: 92px;">
    
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Left">
            &nbsp;
            <asp:LinkButton ID="LinkLogOut" runat="server" Font-Size="Medium" ForeColor="Black" PostBackUrl="~/LogOut.aspx">Cerrar Sesión</asp:LinkButton>
        </asp:Panel>
        ALUMNOS<br />
        GESTIÓN DE TAREAS GENÉRICAS</div>
    <div style="font-family: Arial; font-size: 4mm">
    
        <br />
        Seleccionar asignatura:<br />
        <br />
        <asp:DropDownList ID="DesplegableAsig" runat="server" AutoPostBack="True">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="LblTabla" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#333333"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="TablaAsig" runat="server" AutoGenerateColumns="False" Height="190px" Width="409px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Instanciar" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
