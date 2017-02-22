<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Inicio.aspx.vb" Inherits="ProyectoHADSWeb.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>&nbsp;</h1>
        <h1 style="margin-left: 120px">Inicio</h1>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LoginLink" runat="server" PostBackUrl="~/Login.aspx">Entrar en la aplicación</asp:LinkButton>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ¿Aun no tienes cuenta?<asp:LinkButton ID="RegistroLink" runat="server" PostBackUrl="~/Registrar.aspx">Registrate</asp:LinkButton>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        ¿Has olvidado tu contraseña?<asp:LinkButton ID="CambiarPassLink" runat="server" PostBackUrl="~/CambiarPass.aspx">Cambiar contraseña</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
