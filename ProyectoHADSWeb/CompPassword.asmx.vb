Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.ComponentModel

' Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente.
' <System.Web.Script.Services.ScriptService()> _
<System.Web.Services.WebService(Namespace:="http://tempuri.org/")> _
<System.Web.Services.WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<ToolboxItem(False)> _
Public Class CompPassword
    Inherits System.Web.Services.WebService

    <WebMethod()> _
    Public Function comprobar(ByVal pass As String) As String
        Dim cont As Integer
        cont = 0

        If (pass.Length > 8) Then
            cont = cont + 4
        ElseIf (pass.Length > 12) Then
            cont = cont + 8
        End If

        Dim upperCont As Integer
        upperCont = 0
        For Each c As Char In pass
            Dim charCode As Integer = AscW(c)
            If charCode >= 65 AndAlso charCode < 91 Then
                upperCont = upperCont + 1
            End If
        Next

        If (upperCont > 3) Then
            cont = cont + 2
        ElseIf (upperCont > 0) Then
            cont = cont + 1
        End If

        If (pass.Contains("0") Or pass.Contains("1") Or pass.Contains("2") Or pass.Contains("3") Or pass.Contains("4") Or pass.Contains("5") Or pass.Contains("6") Or pass.Contains("8") Or pass.Contains("7") Or pass.Contains("9")) Then
            cont = cont + 1
        End If

        If (cont < 4) Then
            Return "POCO"
        ElseIf (cont < 6) Then
            Return "MEDIA"
        Else
            Return "MUY"
        End If
    End Function

End Class