<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Profesor.aspx.vb" Inherits="ProyectoHADSWeb.Profesor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
    <div style="border-style: solid; border-width: 2px; height: 276px; width: 170px; background-color: #00CC99; float: left; font-family: Arial; font-size: medium;">
    
        <br />
&nbsp;&nbsp;
    
        <asp:LinkButton ID="AsigaturasLink" runat="server" Font-Bold="True" ForeColor="White">Asignaturas</asp:LinkButton>
    
        <br />
        <br />
        &nbsp;&nbsp;
        <asp:LinkButton ID="TareasLink" runat="server" Font-Bold="True" ForeColor="White" PostBackUrl="~/Profesores/TareasProfesor.aspx">Tareas</asp:LinkButton>
        <br />
        <br />
&nbsp;&nbsp;
        <asp:LinkButton ID="GruposLink" runat="server" Font-Bold="True" ForeColor="White">Grupos</asp:LinkButton>
        <br />
        <br />
&nbsp;
        <asp:LinkButton ID="ImportarLink" runat="server" Font-Bold="True" ForeColor="White">Importar v. XMLDocument</asp:LinkButton>
&nbsp;
        <br />
        <br />
&nbsp;&nbsp;
        <asp:LinkButton ID="ExportarLink" runat="server" Font-Bold="True" ForeColor="White">Exportar</asp:LinkButton>
&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" ForeColor="White">LinkButton</asp:LinkButton>
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
        <asp:Panel ID="Panel1" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Size="X-Large" Height="273px" style="margin-left: 59px" Width="639px">
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gestion Web de Tareas-Dedicación<br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Profesores</asp:Panel>
    </form>
    <p>
&nbsp;&nbsp;&nbsp;
    </p>
</body>
</html>
