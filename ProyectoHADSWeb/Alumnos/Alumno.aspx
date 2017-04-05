<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Alumno.aspx.vb" Inherits="ProyectoHADSWeb.Alumno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="width: 789px; height: 763px">
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
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="CerrarSesion" runat="server" Font-Size="Large" ForeColor="#CC0000" PostBackUrl="~/Alumnos/LogOutAlumno.aspx">Cerrar Sesión</asp:LinkButton>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gestion Web de Tareas-Dedicación<br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Alumno</asp:Panel>
    <p>
&nbsp;&nbsp;&nbsp;
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                Profesores conectados:<br />
                <br />
                <asp:ListBox ID="ListProfesores" runat="server" Height="70px" Width="178px"></asp:ListBox>
                <br />
                <br />
                <br />
                Alumnos conectados:<br />
                <br />
                <asp:ListBox ID="ListAlumnos" runat="server" Width="170px"></asp:ListBox>
                <br />
                <asp:Timer ID="Timer1" runat="server" Interval="3000" OnTick="Timer1_Tick">
                </asp:Timer>
                <br />
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
    <p style="font-family: Arial">
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
