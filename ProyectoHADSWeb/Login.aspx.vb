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
        Dim usConfirAlum = registradoA(TextBox1.Text, TextBox2.Text)
        If (usConfirAlum = True) Then
            Session.Contents("alumno") = TextBox1.Text
            Response.Redirect("Alumnos/Alumno.aspx")
        Else
            Dim usConfirProf = registradoP(TextBox1.Text, TextBox2.Text)
            If (usConfirProf = True) Then
                Session.Contents("profesor") = TextBox1.Text
                Response.Redirect("Profesores/Profesor.aspx")
            Else
                Dim usReg = confirmado(TextBox1.Text, TextBox2.Text)
                If (usReg = True) Then
                    Label2.Text = "Debe confirmar su solicitud para acceder a la página Super Secreta"
                Else
                    Label2.Text = "Usuario o contraseña incorrectos"
                End If
            End If
        End If

    End Sub
End Class
