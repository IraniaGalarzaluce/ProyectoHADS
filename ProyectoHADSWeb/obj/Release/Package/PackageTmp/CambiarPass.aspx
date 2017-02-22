<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CambiarPass.aspx.vb" Inherits="ProyectoHADSWeb.CambiarPass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left: 40px">
    
        <br />
        <h1 style="margin-left: 40px">Cambiar contraseña</h1>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="mailTxt" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="mailReqVal" runat="server" ControlToValidate="mailTxt" ErrorMessage="*" ForeColor="Red"></asp:RangeValidator>
        <asp:RegularExpressionValidator ID="mailVal" runat="server" ControlToValidate="mailTxt" ErrorMessage="Introduzca una dirección de correo válida" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pregunta secreta:&nbsp;&nbsp;
        <asp:TextBox ID="PreguntaTxt" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="PregReqVal" runat="server" ControlToValidate="PreguntaTxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Respuesta secreta:&nbsp;&nbsp;
        <asp:TextBox ID="RespuestaTxt" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RespReqVal" runat="server" ControlToValidate="RespuestaTxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nueva password:&nbsp;&nbsp;
        <asp:TextBox ID="PassTxt" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="PassReqVal" runat="server" ControlToValidate="PassTxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp; Repita la password:&nbsp;&nbsp;
        <asp:TextBox ID="PassRepTxt" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="PassRepReqVal" runat="server" ControlToValidate="PassRepTxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompPassVal" runat="server" ControlToCompare="PassTxt" ControlToValidate="PassRepTxt" ErrorMessage="Las contraseñas deben coincidir" ForeColor="Red"></asp:CompareValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="AceptarBtn" runat="server" Text="Aceptar" />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
