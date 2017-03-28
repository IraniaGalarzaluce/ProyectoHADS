Imports System.IO
Imports System.Xml
Imports ProyectoHADSClases.accesodatosSQL
Imports System.Data.SqlClient

Public Class ImportarXML
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

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
            adap.Fill(dataset, "Tareas")
            Session("dataset") = dataset
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
            OrdCodigo.Visible = True
            OrdDesc.Visible = True
            OrdHEst.Visible = True
            lblOrdenar.Visible = True
        Else
            Tareas.DocumentSource = Nothing
            lblError.Visible = True
            ImportarBtn.Enabled = False
            OrdCodigo.Visible = False
            OrdDesc.Visible = False
            OrdHEst.Visible = False
            lblOrdenar.Visible = False
        End If
    End Sub

    Protected Sub ImportarBtn_Click(sender As Object, e As EventArgs) Handles ImportarBtn.Click

        Dim codAsig = Asignaturas.SelectedValue
        Dim ds As New DataSet
        Dim da As New SqlDataAdapter
        Dim tbl As New DataTable

        ds = Session("dataset")
        da = Session("adapter")
        tbl = ds.Tables("Tareas")

        Dim xd As New XmlDocument
        xd.Load(Server.MapPath("../App_Data/" & codAsig & ".xml"))

        Dim tareas As XmlNodeList
        tareas = xd.GetElementsByTagName("tarea")

        Dim i As Integer
        Dim newrow As DataRow
        For i = 0 To tareas.Count - 1
            newrow = tbl.NewRow()
            newrow.Item("Codigo") = tareas(i).ChildNodes(0).ChildNodes(0).Value
            newrow.Item("Descripcion") = tareas(i).ChildNodes(1).ChildNodes(0).Value
            newrow.Item("CodAsig") = codAsig
            newrow.Item("HEstimadas") = tareas(i).ChildNodes(2).ChildNodes(0).Value
            newrow.Item("Explotacion") = tareas(i).ChildNodes(3).ChildNodes(0).Value
            newrow.Item("TipoTarea") = tareas(i).ChildNodes(4).ChildNodes(0).Value
            tbl.Rows.Add(newrow)
        Next

        Try
            da.Update(ds, "Tareas")
            ds.AcceptChanges()
            Label1.Text = "Documento importado con éxito!"
            Label1.ForeColor = Drawing.Color.FromArgb(&H0, &HCC, &H99)
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

    Protected Sub OrdCodigo_Click(sender As Object, e As EventArgs) Handles OrdCodigo.Click
        Dim xslt = Server.MapPath("../App_Data/XSLTCodigo.xsl")
        Tareas.TransformSource = xslt
        visualizarTabla()
    End Sub

    Protected Sub OrdDesc_Click(sender As Object, e As EventArgs) Handles OrdDesc.Click
        Dim xslt = Server.MapPath("../App_Data/XSLTDescripcion.xsl")
        Tareas.TransformSource = xslt
        visualizarTabla()
    End Sub

    Protected Sub OrdHEst_Click(sender As Object, e As EventArgs) Handles OrdHEst.Click
        Dim xslt = Server.MapPath("../App_Data/XSLTHEstimadas.xsl")
        Tareas.TransformSource = xslt
        visualizarTabla()
    End Sub
End Class
