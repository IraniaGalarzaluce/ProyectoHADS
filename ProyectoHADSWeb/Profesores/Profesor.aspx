<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Profesor.aspx.vb" Inherits="ProyectoHADSWeb.Profesor" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form2 {
            height: 914px;
        }
        #TextArea1 {
            width: 318px;
        }
        #TextProfesores {
            width: 309px;
        }
        #TextProfesores0 {
            width: 309px;
        }
        #TextAlumnos {
            width: 304px;
        }
    </style>

</head>
<body>
    <form id="form2" runat="server">
    <div style="border-style: solid; border-width: 2px; height: 387px; width: 188px; background-color: #00CC99; float: left; font-family: Arial; font-size: medium;">
    
        <br />
&nbsp;&nbsp;
    
        <asp:LinkButton ID="AsigaturasLink" runat="server" Font-Bold="True" ForeColor="White">Asignaturas</asp:LinkButton>
    
        <br />
    
        <br />
        <br />
        &nbsp;&nbsp;
        <asp:LinkButton ID="TareasLink" runat="server" Font-Bold="True" ForeColor="White" PostBackUrl="~/Profesores/TareasProfesor.aspx">Tareas</asp:LinkButton>
        <br />
        <br />
        <br />
&nbsp;&nbsp;
        <asp:LinkButton ID="GruposLink" runat="server" Font-Bold="True" ForeColor="White" PostBackUrl="~/Profesores/Coordinador.aspx">Coordinador</asp:LinkButton>
        <br />
        <br />
        <br />
&nbsp;
        <asp:LinkButton ID="ImportarLink" runat="server" Font-Bold="True" ForeColor="White" PostBackUrl="~/Profesores/ImportarXML.aspx">Importar v. XMLDocument</asp:LinkButton>
&nbsp;
        <br />
        <br />
        <br />
&nbsp;&nbsp;
        <asp:LinkButton ID="ExportarLink" runat="server" Font-Bold="True" ForeColor="White" PostBackUrl="~/Profesores/ExportarTarea.aspx">Exportar</asp:LinkButton>
&nbsp;&nbsp;
        <br />
        <br />
        <br />
&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" ForeColor="White" PostBackUrl="~/Profesores/ImportarXMLDataSet.aspx">Importar v. DataSet</asp:LinkButton>
        <br />
        &nbsp;&nbsp;
        <br />
        <br />
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
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
                <br />
                <asp:Timer ID="Timer1" runat="server" Interval="3000" OnTick="Timer1_Tick">
                </asp:Timer>
                <br />
                <br />
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
    
    </div>
        <asp:Panel ID="Panel1" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Size="X-Large" Height="386px" style="margin-left: 59px" Width="639px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="CerrarSesion" runat="server" Font-Size="Large" ForeColor="#CC0000" PostBackUrl="~/Profesores/LogOutProfesor.aspx">Cerrar Sesión</asp:LinkButton>
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gestion Web de Tareas-Dedicación<br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Profesores<br />
            <br />
            <br />
            &nbsp;&nbsp; </asp:Panel>
    </form>
    <p>
&nbsp;
    </p>
</body>
</html>
