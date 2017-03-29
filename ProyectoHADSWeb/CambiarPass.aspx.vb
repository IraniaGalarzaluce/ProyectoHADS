Imports ProyectoHADSClases.accesodatosSQL
Imports System.Security.Cryptography

Public Class CambiarPass
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim result As String
        result = conectar()
    End Sub

    Protected Sub Page_Unload(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Unload
        cerrarconexion()
    End Sub

    Protected Sub AceptarBtn_Click(sender As Object, e As EventArgs) Handles AceptarBtn.Click
        Dim cambioP As String
        Dim passEnc = encriptar(PassTxt.Text)
        cambioP = cambioPass(mailTxt.Text, passEnc, RespuestaTxt.Text)
        Label1.Text = cambioP
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim existe As String
        existe = mailExistente(mailTxt.Text)
        If (existe = True) Then
            Info.Text = "Por favor, rellene el formulario."
            Dim pregunta As String
            pregunta = obtenerPregunta(mailTxt.Text)
            preg.Text = pregunta
            PSTxt.Visible = True
            RSTxt.Visible = True
            NPTxt.Visible = True
            RPTxt.Visible = True
            RespuestaTxt.Visible = True
            PassTxt.Visible = True
            PassRepTxt.Visible = True
            AceptarBtn.Visible = True
            RespReqVal.Visible = True
            PassReqVal.Visible = True
            CompPassVal.Visible = True
            PassRepReqVal.Visible = True
        Else
            Info.Text = "El email no está registrado."
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