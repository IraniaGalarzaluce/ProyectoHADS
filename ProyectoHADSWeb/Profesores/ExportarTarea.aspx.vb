Imports ProyectoHADSClases.accesodatosSQL
Imports System.Data.SqlClient
Imports System.Xml
Imports System.IO

Public Class ExportarTarea
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        conectar()

        Label1.Text = ""
    End Sub

    Protected Sub ExportarButton_Click(sender As Object, e As EventArgs) Handles ExportarXML.Click
        Dim ds As New DataSet
        Dim adap As New SqlDataAdapter
        Dim table As New DataTable

        Dim CodAsig = Asignaturas.SelectedValue
        Dim st = "select Codigo, Descripcion, HEstimadas, Explotacion, TipoTarea from TareasGenericas where CodAsig='" & CodAsig & "'"
        adap = New SqlDataAdapter(st, conexion)
        Dim bld As New SqlCommandBuilder(adap)
        adap.Fill(ds, "tarea")

        ds.DataSetName = "tareas"
        table = ds.Tables("tarea")
        table.Columns(0).ColumnName = "codigo"
        table.Columns(1).ColumnName = "descripcion"
        table.Columns(2).ColumnName = "hestimadas"
        table.Columns(3).ColumnName = "explotacion"
        table.Columns(4).ColumnName = "tipotarea"

        Try
            Dim documento = Server.MapPath("../App_Data/" & CodAsig & ".xml")
            table.WriteXml(documento)

            Dim xd As New XmlDocument
            xd.Load(documento)

            Dim atributo As XmlAttribute = xd.CreateAttribute("xmlns:has")
            atributo.Value = "http://ji.ehu.es/has"

            xd.DocumentElement.SetAttributeNode(atributo)
            xd.Save(documento)

            Label1.Text = "Documento exportado con éxito!"
            Label1.ForeColor = Drawing.Color.FromArgb(&H0, &HCC, &H99)
        Catch ex As Exception
            Label1.Text = "Ha ocurrido un error exportando el archivo"
            Label1.ForeColor = Drawing.Color.FromArgb(&HCC, &H0, &H0)
        End Try


    End Sub

    Protected Sub ExportarJson_Click(sender As Object, e As EventArgs) Handles ExportarJson.Click
        Dim ds As New DataSet
        Dim adap As New SqlDataAdapter
        Dim table As New DataTable

        Dim CodAsig = Asignaturas.SelectedValue
        Dim st = "select Codigo, Descripcion, HEstimadas, Explotacion, TipoTarea from TareasGenericas where CodAsig='" & CodAsig & "'"
        adap = New SqlDataAdapter(st, conexion)
        Dim bld As New SqlCommandBuilder(adap)
        adap.Fill(ds, "tareas")

        table = ds.Tables("tareas")
        table.Columns(0).ColumnName = "codigo"
        table.Columns(1).ColumnName = "descripcion"
        table.Columns(2).ColumnName = "hestimadas"
        table.Columns(3).ColumnName = "explotacion"
        table.Columns(4).ColumnName = "tipotarea"

        Try

            Dim documento = Server.MapPath("../App_Data/" & CodAsig & ".json")
            Dim json = Newtonsoft.Json.JsonConvert.SerializeObject(ds, Formatting.Indented)
            File.WriteAllText(documento, json)


            Label1.Text = "Documento exportado con éxito!"
            Label1.ForeColor = Drawing.Color.FromArgb(&H0, &HCC, &H99)
        Catch ex As Exception
            Label1.Text = "Ha ocurrido un error exportando el archivo"
            Label1.ForeColor = Drawing.Color.FromArgb(&HCC, &H0, &H0)
        End Try

    End Sub
End Class