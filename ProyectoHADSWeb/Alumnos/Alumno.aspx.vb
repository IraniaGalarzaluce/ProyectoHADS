Public Class Alumno
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim alumnos = Application("AlumConectados")
        Dim profes = Application("ProfConectados")
        ListAlumnos.DataSource = alumnos
        ListAlumnos.DataBind()
        ListProfesores.DataSource = profes
        ListProfesores.DataBind()
    End Sub

    Protected Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        Dim alumnos = Application("AlumConectados")
        Dim profes = Application("ProfConectados")
        ListAlumnos.DataSource = alumnos
        ListAlumnos.DataBind()
        ListProfesores.DataSource = profes
        ListProfesores.DataBind()
    End Sub
End Class