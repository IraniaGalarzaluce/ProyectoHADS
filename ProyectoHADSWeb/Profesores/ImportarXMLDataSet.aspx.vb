Imports System.IO
Imports ProyectoHADSClases.accesodatosSQL
Imports System.Data.SqlClient

Public Class ImportarXMLDataSet
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

        If Page.IsPostBack Then
            adap = Session("adapter")
        Else
            Dim st = "select * from TareasGenericas"
            adap = New SqlDataAdapter(st, conexion)
            Dim bld As New SqlCommandBuilder(adap)
            Session("adapter") = adap
        End If

        Label1.Text = ""
    End Sub

    Private Sub Asignaturas_DataBound(sender As Object, e As EventArgs) Handles Asignaturas.DataBound
        visualizarTabla()
    End Sub

    Protected Sub Asignaturas_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Asignaturas.SelectedIndexChanged
        visualizarTabla()
    End Sub

    Private Sub visualizarTabla()
        Dim documento = Server.MapPath("../App_Data/" & Asignaturas.SelectedValue & ".xml")
        If File.Exists(documento) Then
            Tareas.DocumentSource = documento
            lblError.Visible = False
            ImportarBtn.Enabled = True
        Else
            Tareas.DocumentSource = Nothing
            lblError.Visible = True
            ImportarBtn.Enabled = False
        End If
    End Sub

    Protected Sub ImportarBtn_Click(sender As Object, e As EventArgs) Handles ImportarBtn.Click
        Dim ds As New DataSet
        Dim adap As New SqlDataAdapter
        Dim tbl As New DataTable

        adap = Session("adapter")

        Dim codAsig2 = Asignaturas.SelectedValue
        Dim documento = Server.MapPath("../App_Data/" & codAsig2 & ".xml")
        ds.ReadXml(documento)

        ds.Tables(0).TableName = "Tareas"
        tbl = ds.Tables("Tareas")

        tbl.Columns(0).ColumnName = "Codigo"
        tbl.Columns(1).ColumnName = "Descripcion"
        tbl.Columns(2).ColumnName = "HEstimadas"
        tbl.Columns(3).ColumnName = "Explotacion"
        tbl.Columns(4).ColumnName = "TipoTarea"

        Dim codAsig = Asignaturas.SelectedValue
        tbl.Columns.Add("CodAsig")
        For Each row In tbl.Rows
            row.Item("CodAsig") = codAsig
        Next

        Try
            adap.Update(ds, "Tareas")
            ds.AcceptChanges()
            Label1.Text = "Documento importado con éxito!"
            Label1.ForeColor = Drawing.Color.FromArgb(&H0, &HCC, &H99)
            visualizarTabla()
        Catch ex As SqlException
            If ex.Number = 2627 Then
                Label1.Text = "No se pudo importar el documento, el código de tarea de alguna de las contenidas en el archivo ya existe en la Base de Datos."
                Label1.ForeColor = Drawing.Color.FromArgb(&HCC, &H0, &H0)
                visualizarTabla()
            Else
                Label1.Text = "Ha ocurrido un error al importar el documento"
                Label1.ForeColor = Drawing.Color.FromArgb(&HCC, &H0, &H0)
                visualizarTabla()
            End If
        Catch ex2 As Exception
            Label1.Text = "Ha ocurrido un error al importar el documento"
            Label1.ForeColor = Drawing.Color.FromArgb(&HCC, &H0, &H0)
            visualizarTabla()
        End Try



    End Sub
End Class