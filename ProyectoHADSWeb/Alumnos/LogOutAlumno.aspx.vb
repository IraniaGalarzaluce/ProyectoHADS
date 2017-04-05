Public Class LogOutAlumno
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Application.Lock()
        Application("AlumConectados").Remove(Session("alumno"))
        Application.UnLock()
        Session.RemoveAll()
        System.Web.Security.FormsAuthentication.SignOut()
        Response.Redirect("../Login.aspx")
    End Sub

End Class