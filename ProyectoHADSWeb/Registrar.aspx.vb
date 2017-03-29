Imports ProyectoHADSClases.accesodatosSQL
Imports ProyectoHADSClases.mail
Imports System.Security.Cryptography

Public Class Registrar
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim result As String
        result = conectar()
        ' Label1.Text = result
    End Sub

    Protected Sub Page_Unload(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Unload
        cerrarconexion()
    End Sub

    Protected Sub Registrarse_Click(sender As Object, e As EventArgs) Handles Registrarse.Click
        Randomize()
        Dim numConf = CLng(Rnd() * 9000000) + 1000000

        Dim encPass = encriptar(pass1Text.Text)

        Label2.Text = insertar(correoText.Text, nombreText.Text, dniText.Text, encPass, preguntaText.Text, respuestaText.Text)
        If (enviarEmailConfirmacion(correoText.Text, numConf)) Then
            Label3.Text = "Correo enviado!!"
        Else
            Label3.Text = "El correo no ha sido enviado"
        End If

    End Sub

    Private Function encriptar(ByVal pass As String) As String

        Dim md5 As New MD5CryptoServiceProvider

        Dim inputData() As Byte = ASCIIEncoding.ASCII.GetBytes(pass)
        Dim hashResult() As Byte = md5.ComputeHash(inputData)
        Dim encPass = ASCIIEncoding.ASCII.GetString(hashResult)
        Dim encPass2 = Replace(encPass, "'", "")

        Return encPass2

    End Function

End Class