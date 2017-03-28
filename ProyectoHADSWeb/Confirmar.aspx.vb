Imports ProyectoHADSClases.accesodatosSQL

Public Class Confirmar
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim result As String
        result = conectar()
        Dim email As String = Request.QueryString("mbr")
        'Dim numConf As Integer = Request.QueryString("numconf")
        If (confirmarusuario(email)) Then
            Titulo.Text = "Confirmación terminada"
            Mensaje.Text = "Tu confirmación de usuario se ha realizado con éxito."
            LinkLogin.Visible = True
        Else
            Titulo.Text = "Error"
            Mensaje.Text = "ha habido un error en la confirmación."
            LinkLogin.Visible = False
        End If
    End Sub

    Protected Sub Page_Unload(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Unload
        cerrarconexion()
    End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkLogin.Click
        Response.Redirect("Login.aspx")
    End Sub
End Class