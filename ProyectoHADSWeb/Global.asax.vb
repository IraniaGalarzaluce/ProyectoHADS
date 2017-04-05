Imports System.Web.SessionState

Public Class Global_asax
    Inherits System.Web.HttpApplication

    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)

        Dim profesores As ArrayList = New ArrayList()
        Dim alumnos As ArrayList = New ArrayList()
        Application.Contents("ProfConectados") = profesores
        Application.Contents("AlumConectados") = alumnos
    End Sub


    Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Se desencadena cuando finaliza la sesión
        ' Application.Lock()
        ' If Session("SalidaP") Is Nothing Then
        'Dim profs = Application("ProfConectados")
        'profs.Remove(Session("SalidaP"))
        ' Application("ProfConectados") = profs
        ' Else
        ' Application("AlumConectados").Remove(Session("SalidaA"))
        ' End If
        'Application.UnLock()
    End Sub

    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Se desencadena cuando finaliza la aplicación
    End Sub

End Class