<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Admin.aspx.vb" Inherits="ProyectoHADSWeb.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
    <div style="border-style: solid; border-width: 2px; height: 276px; width: 170px; background-color: #6600FF; float: left; font-family: Arial; font-size: medium;">
    
        <br />
&nbsp;&nbsp;
    
        <asp:LinkButton ID="EliminarTareas" runat="server" PostBackUrl="~/Admin/EliminarTareas.aspx" Font-Bold="True" ForeColor="White">Eliminar Tareas</asp:LinkButton>
    
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;
            
        <br />
        <br />
        <br />
        <br />
    
    </div>
        <asp:Panel ID="Panel1" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Size="X-Large" Height="273px" style="margin-left: 59px">
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gestion Web de Tareas-Dedicación<br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Admin</asp:Panel>
    </form>
    <p>
&nbsp;&nbsp;&nbsp;
    </p>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
