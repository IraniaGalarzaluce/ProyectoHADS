<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Alumno.aspx.vb" Inherits="ProyectoHADSWeb.Alumno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="width: 627px; height: 430px">
    <form id="form1" runat="server">
    <div style="border-style: solid; border-width: 2px; height: 276px; width: 170px; background-color: #FF5197; float: left; font-family: Arial; font-size: medium;">
    
        <br />
&nbsp;&nbsp;
    
        <asp:LinkButton ID="LinkGenericas" runat="server" PostBackUrl="~/Alumnos/TareasAlumno.aspx" Font-Bold="True" ForeColor="White">Tareas Genéricas</asp:LinkButton>
    
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;
        <asp:LinkButton ID="LinkPropias" runat="server" Font-Bold="True" ForeColor="White">Tareas Propias</asp:LinkButton>
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;
        <asp:LinkButton ID="LinkGrupos" runat="server" Font-Bold="True" ForeColor="White">Grupos</asp:LinkButton>
    
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
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Alumno</asp:Panel>
    </form>
    <p>
&nbsp;&nbsp;&nbsp;
    </p>
</body>
</html>
