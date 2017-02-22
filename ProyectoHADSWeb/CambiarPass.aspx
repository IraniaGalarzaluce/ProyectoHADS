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
        <asp:RegularExpressionValidator ID="mailVal" runat="server" ControlToValidate="mailTxt" ErrorMessage="Introduzca una dirección de correo válida" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Aceptar" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Info" runat="server"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="PSTxt" runat="server" Text="&nbsp;&nbsp; Pregunta secreta:" Visible="False"></asp:Label>
        &nbsp;
        <asp:Label ID="preg" runat="server"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="RSTxt" runat="server" Text=" Respuesta secreta:&nbsp;" Visible="False"></asp:Label>
        &nbsp;
        <asp:TextBox ID="RespuestaTxt" runat="server" Visible="False"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RespReqVal" runat="server" ControlToValidate="RespuestaTxt" ErrorMessage="*" ForeColor="Red" Visible="False"></asp:RequiredFieldValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="NPTxt" runat="server" Text="Nueva password:" Visible="False"></asp:Label>
        &nbsp;
        <asp:TextBox ID="PassTxt" runat="server" TextMode="Password" Visible="False"></asp:TextBox>
        <asp:RequiredFieldValidator ID="PassReqVal" runat="server" ControlToValidate="PassTxt" ErrorMessage="*" ForeColor="Red" Visible="False"></asp:RequiredFieldValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="RPTxt" runat="server" Text="&nbsp; Repita la password:" Visible="False"></asp:Label>
&nbsp;
        <asp:TextBox ID="PassRepTxt" runat="server" TextMode="Password" Visible="False"></asp:TextBox>
        <asp:RequiredFieldValidator ID="PassRepReqVal" runat="server" ControlToValidate="PassRepTxt" ErrorMessage="*" ForeColor="Red" Visible="False"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompPassVal" runat="server" ControlToCompare="PassTxt" ControlToValidate="PassRepTxt" ErrorMessage="Las contraseñas deben coincidir" ForeColor="Red" Visible="False"></asp:CompareValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="AceptarBtn" runat="server" Text="Aceptar" Visible="False" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkInicio" runat="server" CausesValidation="False" PostBackUrl="~/Inicio.aspx">Volver a Inicio</asp:LinkButton>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
