Imports ProyectoHADSClases.accesodatosSQL
Imports System.Data.SqlClient

Public Class InstanciarTarea
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("alumno") Is Nothing Then
            If Session("profesor") Is Nothing Then
                Response.Redirect("../Login.aspx")
            Else
                Response.Redirect("../Profesores/Profesor.aspx")
            End If
        End If

        UsuarioTxt.Text = Session("alumno")
        TareaTxt.Text = Session("Tarea")
        HEstimadasTxt.Text = Session("HE")

    End Sub

    Protected Sub CrearTareaBtn_Click(sender As Object, e As EventArgs) Handles CrearTareaBtn.Click
        conectar()

        Dim st = "insert into EstudiantesTareas (Email, CodTarea, HEstimadas, HReales) values ('" & Session("alumno") & "', '" & Session("Tarea") & "', " & Session("HE") & ", " & HRealesTxt.Text.ToString & ")"
        comando = New SqlCommand(st, conexion)
        Try
            comando.ExecuteNonQuery()
            Label1.Text = "Tarea guardada con éxito!"
        Catch ex As Exception
            Label1.Text = "Ha ocurrido un error"
            MsgBox(ex.Message)
        End Try

        cerrarconexion()

    End Sub
End Class