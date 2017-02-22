Imports ProyectoHADSClases.accesodatosSQL
Imports ProyectoHADSClases.mail

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
        Label2.Text = insertar(correoText.Text, nombreText.Text, apellidosText.Text, dniText.Text, pass1Text.Text, preguntaText.Text, respuestaText.Text, numConf)
        If (enviarEmailConfirmacion(correoText.Text, numConf)) Then
            Label3.Text = "Correo enviado!!"
        Else
            Label3.Text = "El correo no ha sido enviado"
        End If

    End Sub


End Class