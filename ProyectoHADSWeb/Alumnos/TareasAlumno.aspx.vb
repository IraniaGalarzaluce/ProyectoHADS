Imports ProyectoHADSClases.accesodatosSQL
Imports System.Data.SqlClient

Public Class TareasAlumno
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("alumno") Is Nothing Then
            If Session("profesor") Is Nothing Then
                Response.Redirect("../Login.aspx")
            Else
                Response.Redirect("../Profesores/Profesor.aspx")
            End If
        End If

        'Nos conectamos a la BD
        conectar()

        Dim adapLista As New SqlDataAdapter()
        Dim setLista As New DataSet
        Dim tblLista As New DataTable
        Dim adapTabla As New SqlDataAdapter()
        Dim setTabla As New DataSet
        Dim tblTabla As New DataTable

        If Page.IsPostBack Then
            setLista = Session("datosLista")
            setTabla = Session("datosTabla")
        Else
            'Creamos el dropDownList
            Dim st = "select gc.codigoasig from EstudiantesGrupo as eg INNER JOIN GruposClase as gc on eg.Grupo=gc.codigo WHERE eg.Email='" & Session("alumno") & "'"
            adapLista = New SqlDataAdapter(st, conexion)
            Dim bldLista As New SqlCommandBuilder(adapLista)

            adapLista.Fill(setLista, "AsignaturasAlum") 'AsignaturasAlum es el nombre que le damos a la table en memoria

            tblLista = setLista.Tables("AsignaturasAlum")

            DesplegableAsig.DataSource = tblLista
            DesplegableAsig.DataValueField = "codigoasig" 'La columna de la que queremos que muestre los datos la DropDownList
            DesplegableAsig.DataBind()

            Session("datosLista") = setLista
            Session("adaptadorLista") = adapLista

            ' Rellenamos la tabla de tareas
            Dim st2 = "select tg.Codigo, tg.Descripcion, tg.CodAsig, tg.HEstimadas, tg.TipoTarea from TareasGenericas as tg INNER JOIN (EstudiantesGrupo as eg INNER JOIN GruposClase as gc on eg.Grupo=gc.codigo) on gc.codigoasig=tg.CodAsig WHERE eg.Email='" & Session("alumno") & "' AND tg.Explotacion=1 AND tg.Codigo NOT IN (select et.CodTarea from EstudiantesTareas as et where et.Email='" & Session("alumno") & "')"
            adapTabla = New SqlDataAdapter(st2, conexion)
            Dim bldTabla As New SqlCommandBuilder(adapTabla)
            adapTabla.Fill(setTabla, "TareasGen") 'TareasGen es el nombre que le damos a la table en memoria
            tblTabla = setTabla.Tables("TareasGen")
            Session("datosTabla") = setTabla
            Session("adaptadorTabla") = adapTabla

        End If

        Dim dv As DataView
        tblTabla = setTabla.Tables("TareasGen")
        dv = New DataView(tblTabla)
        dv.RowFilter = "CodAsig='" & DesplegableAsig.SelectedValue & "'"
        TablaAsig.DataSource = dv
        TablaAsig.AutoGenerateColumns = True
        TablaAsig.DataBind()

        If dv.Count = 0 Then
            LblTabla.Text = "No hay tareas disponibles para dicha asignatura"
        Else
            LblTabla.Text = ""
        End If

    End Sub


    Sub TablaAsig_SelectedIndexChanged(sender As Object, e As EventArgs) Handles TablaAsig.SelectedIndexChanged

        ' Obtengo el id de la entidad que se esta editando
        Dim cod = TablaAsig.Rows(TablaAsig.SelectedIndex).Cells(1).Text
        Dim he = TablaAsig.Rows(TablaAsig.SelectedIndex).Cells(4).Text
        Session("Tarea") = cod
        Session("HE") = he

        Response.Redirect("InstanciarTarea.aspx")
    End Sub

End Class