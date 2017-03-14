Imports ProyectoHADSClases.accesodatosSQL
Imports System.Data.SqlClient

Public Class InstanciarTarea1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("profesor") Is Nothing Then
            If Session("alumno") Is Nothing Then
                Response.Redirect("../Login.aspx")
            Else
                Response.Redirect("../Alumnos/Alumno.aspx")
            End If
        End If

        conectar()

        Dim adap As New SqlDataAdapter()
        Dim dataset As New DataSet

        If Page.IsPostBack Then
            dataset = Session("dataset")
            adap = Session("adapter")
        Else
            Dim st = "select * from TareasGenericas"
            adap = New SqlDataAdapter(st, conexion)
            Dim bld As New SqlCommandBuilder(adap)
            adap.Fill(dataset, "Tareas") 'TareasGen es el nombre que le damos a la table en memoria
            Session("dataset") = dataset
            Session("adapter") = adap
        End If

    End Sub

    Protected Sub añadirBtn_Click(sender As Object, e As EventArgs) Handles añadirBtn.Click
        Dim tbl As New DataTable
        Dim dataset As New DataSet
        Dim adap As New SqlDataAdapter

        dataset = Session("dataset")
        adap = Session("adapter")
        tbl = dataset.Tables("Tareas")

        Dim newrow As DataRow = tbl.NewRow()
        newrow("Codigo") = CodigoTxt.Text
        newrow("Descripcion") = DescTxt.Text
        newrow("CodAsig") = AsigList.SelectedValue
        newrow("HEstimadas") = HEstTxt.Text.ToString
        newrow("Explotacion") = 0
        newrow("TipoTarea") = TipoList.SelectedValue
        tbl.Rows.Add(newrow)

        Try
            adap.Update(dataset, "Tareas")
            dataset.AcceptChanges()
            Label1.Text = "Tarea guardada con éxito!"
        Catch ex As Exception
            Label1.Text = "Ha ocurrido un error"
        End Try
        

    End Sub
End Class