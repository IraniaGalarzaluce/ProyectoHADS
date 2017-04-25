<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Coordinador.aspx.vb" Inherits="ProyectoHADSWeb.PruebaHoras" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 544px">
    <form id="form1" runat="server">
    <div style="height: 351px">
    
    <div style="background-color: #00CC99; color: #FFFFFF; font-weight: bold; font-size: 21px; font-family: Arial; text-align: center; height: 92px;">
    
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Left">
            &nbsp;
            <asp:LinkButton ID="LinkLogOut" runat="server" Font-Size="Medium" ForeColor="Black" PostBackUrl="~/Profesores/LogOutProfesor.aspx">Cerrar Sesión</asp:LinkButton>
        </asp:Panel>
        PROFESOR<br />
        VER HORAS MEDIAS ASIGNATURA</div>
    
        &nbsp;&nbsp;&nbsp;<br />
        Seleccione la asignatura deseada:<br />
        <asp:DropDownList ID="asignaturas" runat="server" DataSourceID="SqlDataSource1" DataTextField="codigo" DataValueField="codigo" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HADS15_TareasConnectionString %>" SelectCommand="SELECT [codigo] FROM [Asignaturas]"></asp:SqlDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Obtener horas" />
        <br />
        <br />
        <asp:Label ID="hMedia" runat="server"></asp:Label>
&nbsp;
    
    </div>
    </form>
</body>
</html>
