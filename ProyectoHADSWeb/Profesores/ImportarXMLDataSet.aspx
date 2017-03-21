<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ImportarXMLDataSet.aspx.vb" Inherits="ProyectoHADSWeb.ImportarXMLDataSet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div style="background-color: #00CC99; color: #FFFFFF; font-weight: bold; font-size: 21px; font-family: Arial; text-align: center; height: 92px;">
    
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Left">
            &nbsp;
            <asp:LinkButton ID="LinkLogOut" runat="server" Font-Size="Medium" ForeColor="Black" PostBackUrl="~/LogOut.aspx">Cerrar Sesión</asp:LinkButton>
        </asp:Panel>
        PROFESOR<br />
        IMPORTAR DESDE XML (XMLDocument)</div>
    
        <br />
        Seleccionar Asignatura a Importar:<br />
        <asp:DropDownList ID="Asignaturas" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="codigoasig" DataValueField="codigoasig">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HADS15_TareasConnectionString %>" SelectCommand="select gc.codigoasig from GruposClase as gc INNER JOIN ProfesoresGrupo as pg ON gc.codigo=pg.codigogrupo WHERE pg.email=@profesor">
            <SelectParameters>
                <asp:SessionParameter Name="profesor" SessionField="profesor" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Xml ID="Tareas" runat="server" TransformSource="~/App_Data/XSLTFile.xsl"></asp:Xml>
        <asp:Label ID="lblError" runat="server" ForeColor="#CC0000" Text="No existe ningún documento a exportar de la asignatura seleccionada" Visible="False"></asp:Label>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ImportarBtn" runat="server" Text="Importar XML" Font-Bold="True" Font-Size="Medium" Height="38px" Width="150px" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#00CC99"></asp:Label>
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="menuLink" runat="server" PostBackUrl="~/Profesores/Profesor.aspx" Font-Size="Large" ForeColor="#00CC99">Menu Profesor</asp:LinkButton>
    
        <br />
        <br />
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
