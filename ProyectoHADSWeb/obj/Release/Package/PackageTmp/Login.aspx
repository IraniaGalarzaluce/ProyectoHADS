<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="ProyectoHADSWeb.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="registrar">
    
        <br />
        <h1 style="margin-left: 80px">&nbsp;Login</h1>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="emailTxt" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="mailReqVal" runat="server" ControlToValidate="emailTxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="mailVal" runat="server" ControlToValidate="emailTxt" ErrorMessage="Introduzca una dirección de correo válida" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email incorrecto</asp:RegularExpressionValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp; Password:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="PassTxt" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="passVal" runat="server" ErrorMessage="*" ControlToValidate="passTxt" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="entrarBtn" runat="server" Text="Entrar" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ¿Aun no tienes cuenta?<asp:LinkButton ID="RegistroBtn" runat="server">Registrate</asp:LinkButton>
        <br />
        ¿Has olvidado tu contraseña?<asp:LinkButton ID="CambiarPassLink" runat="server">Cambiar contraseña</asp:LinkButton>
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
