Imports ProyectoHADSClases.accesodatosSQL

Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim result As String
        result = conectar()
        'Label1.Text = result
    End Sub

    Protected Sub Page_Unload(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Unload
        cerrarconexion()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim usConfir = registrado(TextBox1.Text, TextBox2.Text)
        If (usConfir = True) Then
            Response.Redirect("PaginaSuperSecreta.aspx")
        Else
            Dim usReg = confirmado(TextBox1.Text, TextBox2.Text)
            If (usReg = True) Then
                Label2.Text = "Debe confirmar su solicitud para acceder a la página Super Secreta"
            Else
                Label2.Text = "Usuario o contraseña incorrectos"
            End If
        End If

    End Sub
End Class
