<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Registrar.aspx.vb" Inherits="ProyectoHADSWeb.Registrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 816px; width: 1548px">
    <form id="form1" runat="server">
    <div style="height: 647px; width: 786px; margin-left: 77px;">
    
        <h1 align="center">Registro:&nbsp;
            </h1><br />
        <br />
        Dirección de correo:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="correoText" runat="server" Width="251px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="correoText" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="correoText" ErrorMessage="Introduzca una dirección de correo válida" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#CC0000"></asp:RegularExpressionValidator>
        <br />
        <br />
        Nombre:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="nombreText" runat="server" Width="179px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="nombreText" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br />
        <br />
        DNI:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="dniText" runat="server" Width="177px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="dniText" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="dniText" ErrorMessage="Introduzca un DNI válido (8 dígitos)" ValidationExpression="\d{8}" ForeColor="#CC0000"></asp:RegularExpressionValidator>
        <br />
        <br />
        Password:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="pass1Text" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="pass1Text" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br />
        <br />
        Repite password:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="pass2Text" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="pass2Text" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Las contraseñas deben ser iguales" ForeColor="#CC0000" ControlToCompare="pass2Text" ControlToValidate="pass1Text"></asp:CompareValidator>
        <br />
        <br />
        Pregunta secreta:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="preguntaText" runat="server" Width="474px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="preguntaText" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br />
        <br />
        Respuesta a la pregunta secreta:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="respuestaText" runat="server" Width="469px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="respuestaText" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br />
    
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Registrarse" runat="server" Text="Registrarse" />
    
        <br />
    
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="linkInicio" runat="server" CausesValidation="False" PostBackUrl="~/Inicio.aspx">Volver a Inicio</asp:LinkButton>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#009933"></asp:Label>
    
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#009933"></asp:Label>
    
    </div>
    </form>
</body>
</html>
