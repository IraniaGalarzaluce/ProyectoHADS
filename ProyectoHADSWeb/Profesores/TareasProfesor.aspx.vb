
Public Class TareasProfesor
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("profesor") Is Nothing Then
            If Session("alumno") Is Nothing Then
                Response.Redirect("../Login.aspx")
            Else
                Response.Redirect("../Alumnos/Alumno.aspx")
            End If
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("InsertarTarea.aspx")
    End Sub
End Class