Imports System.Data.SqlClient
Imports ProyectoHADSClases.accesodatosSQL

Public Class PruebaHoras
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conectar()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim asig = asignaturas.SelectedValue
        Dim hm As New HorasMedias
        hMedia.Text = hm.dedicacionMediaAsig(asig).ToString & " horas"

    End Sub
End Class