<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="InsertarTarea.aspx.vb" Inherits="ProyectoHADSWeb.InstanciarTarea1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 435px">
    <form id="form1" runat="server">
    <div>
    
    <div style="background-color: #00CC99; color: #FFFFFF; font-weight: bold; font-size: 21px; font-family: Arial; text-align: center; height: 92px;">
    
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Left">
            &nbsp;
            <asp:LinkButton ID="LinkLogOut" runat="server" Font-Size="Medium" ForeColor="Black" PostBackUrl="~/Profesores/LogOutProfesor.aspx">Cerrar Sesión</asp:LinkButton>
        </asp:Panel>
        PROFESOR<br />
        GESTIÓN DE TAREAS GENÉRICAS</div>
    
    </div>
        <p style="margin-left: 40px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Código&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="CodigoTxt" runat="server"></asp:TextBox>
        </p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Descripción&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="DescTxt" runat="server"></asp:TextBox>
        </p>
        <p style="margin-left: 40px">
&nbsp;Asignatura&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="AsigList" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="codigoasig" DataValueField="codigoasig" style="margin-top: 0px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HADS15_TareasConnectionString %>" SelectCommand="SELECT GruposClase.codigoasig FROM ProfesoresGrupo INNER JOIN GruposClase ON ProfesoresGrupo.codigogrupo = GruposClase.codigo WHERE ProfesoresGrupo.email=@profesor">
                <SelectParameters>
                    <asp:SessionParameter Name="profesor" SessionField="profesor" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
&nbsp;&nbsp; Horas Estimadas&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="HEstTxt" runat="server" TextMode="Number"></asp:TextBox>
        </p>
        <p style="margin-left: 40px">
            Tipo Tarea&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="TipoList" runat="server" AutoPostBack="True">
                <asp:ListItem>Laboratorio</asp:ListItem>
                <asp:ListItem>Examen</asp:ListItem>
                <asp:ListItem>Ejercicio</asp:ListItem>
                <asp:ListItem>Trabajo</asp:ListItem>
            </asp:DropDownList>
        </p>
        <div style="margin-left: 80px">
            <br />
            <asp:Button ID="añadirBtn" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Black" Height="39px" Text="Añadir Tarea" Width="133px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#00CC99"></asp:Label>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" Font-Size="Large" ForeColor="#00CC99" PostBackUrl="~/Profesores/TareasProfesor.aspx">Ver Tareas</asp:LinkButton>
        </div>
    </form>
</body>
</html>
