Public Class Alumno
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("alumno") Is Nothing Then
            If Session("profesor") Is Nothing Then
                Response.Redirect("Login.aspx")
            Else
                Response.Redirect("Profesor.aspx")
            End If
        End If
    End Sub
End Class