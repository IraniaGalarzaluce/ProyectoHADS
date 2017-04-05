<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ImportarXML.aspx.vb" Inherits="ProyectoHADSWeb.ImportarXML" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
    <div style="background-color: #00CC99; color: #FFFFFF; font-weight: bold; font-size: 21px; font-family: Arial; text-align: center; height: 92px;">
    
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Left">
            &nbsp;
            <asp:LinkButton ID="LinkLogOut" runat="server" Font-Size="Medium" ForeColor="Black" PostBackUrl="~/Profesores/LogOutProfesor.aspx">Cerrar Sesión</asp:LinkButton>
        </asp:Panel>
        PROFESOR<br />
        IMPORTAR DESDE XML (XMLDocument)</div>
    
    <div style="height: 491px; font-family: Arial;">
    
        <br />
        Seleccionar Asignatura a Importar:<br />
        <asp:DropDownList ID="Asignaturas" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="codigoasig" DataValueField="codigoasig">
        </asp:DropDownList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HADS15_TareasConnectionString %>" SelectCommand="select gc.codigoasig from GruposClase as gc INNER JOIN ProfesoresGrupo as pg ON gc.codigo=pg.codigogrupo WHERE pg.email=@profesor">
            <SelectParameters>
                <asp:SessionParameter Name="profesor" SessionField="profesor" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;<asp:Xml ID="Tareas" runat="server" TransformSource="~/App_Data/XSLTFile.xsl"></asp:Xml>
        <br />
        <asp:Label ID="lblOrdenar" runat="server" Text="Ordenar por:" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="OrdCodigo" runat="server" Height="32px" Text="Código" Visible="False" Width="90px" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="OrdDesc" runat="server" Height="32px" Text="Descripción" Visible="False" Width="90px" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="OrdHEst" runat="server" Height="32px" Text="Horas Estimadas" Visible="False" Width="122px" />
        <br />
        <br />
        <asp:Label ID="lblError" runat="server" ForeColor="#CC0000" Text="No existe ningún documento a exportar de la asignatura seleccionada" Visible="False"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Button ID="ImportarBtn" runat="server" Text="Importar XML" Font-Bold="True" Font-Size="Medium" Height="38px" Width="150px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#00CC99"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="menuLink" runat="server" PostBackUrl="~/Profesores/Profesor.aspx" Font-Size="Large" ForeColor="#00CC99">Menu Profesor</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
