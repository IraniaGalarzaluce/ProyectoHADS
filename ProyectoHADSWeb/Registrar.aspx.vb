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

        Dim matSw As New Matriculas.Matriculas
        Dim resp = matSw.comprobar(correoText.Text)
        If resp = "SI" Then

            Label2.Text = insertar(correoText.Text, nombreText.Text, dniText.Text, encPass, preguntaText.Text, respuestaText.Text)
            If (enviarEmailConfirmacion(correoText.Text, numConf)) Then
                Label3.Text = "Correo enviado!!"
                Label3.ForeColor = Drawing.Color.FromArgb(&H0, &HCC, &H99)
            Else
                Label3.Text = "El correo no ha sido enviado"
                Label3.ForeColor = Drawing.Color.FromArgb(&HCC, &H0, &H0)
            End If
        Else
            Label2.Text = "Para poder registrarte tienes que estar matriculado"
            Label2.ForeColor = Drawing.Color.FromArgb(&HCC, &H0, &H0)
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

    Protected Sub correoText_TextChanged(sender As Object, e As EventArgs) Handles correoText.TextChanged
        Dim matSw As New Matriculas.Matriculas
        Dim resp = matSw.comprobar(correoText.Text)
        If resp = "SI" Then
            Label4.Text = "Puede continuar."
            Label4.ForeColor = Drawing.Color.FromArgb(&H0, &HCC, &H99)
            Registrarse.Enabled = True
        Else
            Label4.Text = "Debes estar matrículado para poder registrarte."
            Label4.ForeColor = Drawing.Color.FromArgb(&HCC, &H0, &H0)
            Registrarse.Enabled = False
        End If
    End Sub

    Protected Sub pass1Text_TextChanged(sender As Object, e As EventArgs) Handles pass1Text.TextChanged
        Dim passSw As New CompPassword
        Dim resp = passSw.comprobar(pass1Text.Text)
        If resp = "POCO" Then
            Label6.Text = "Poco segura"
            Label6.ForeColor = Drawing.Color.FromArgb(&HCC, &H0, &H0)
        ElseIf resp = "MEDIA" Then
            Label6.Text = "Seguridad media"
            Label6.ForeColor = Drawing.Color.FromArgb(&HFF, &H66, &H0)
        Else
            Label6.Text = "Muy segura"
            Label6.ForeColor = Drawing.Color.FromArgb(&H0, &HCC, &H99)
        End If
    End Sub
End Class