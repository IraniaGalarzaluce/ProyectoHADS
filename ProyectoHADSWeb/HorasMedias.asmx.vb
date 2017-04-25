Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.ComponentModel
Imports System.Data.SqlClient
Imports ProyectoHADSClases.accesodatosSQL

' Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente.
' <System.Web.Script.Services.ScriptService()> _
'<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
<System.Web.Services.WebService(Namespace:="http://tempuri.org/")> _
<System.Web.Services.WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<ToolboxItem(False)> _
Public Class HorasMedias
    Inherits System.Web.Services.WebService

    <WebMethod()> _
    Public Function dedicacionMediaAsig(ByVal asig As String) As Decimal
        conectar()
        Dim comando As New SqlCommand
        Dim st = "select avg(et.HReales) from EstudiantesTareas as et inner join TareasGenericas as tg on et.CodTarea=tg.Codigo where tg.CodAsig ='" & asig & "'"
        comando = New SqlCommand(st, conexion)

        Dim result As Decimal
        If Not IsDBNull(comando.ExecuteScalar()) Then
            result = comando.ExecuteScalar()
        Else
            result = 0
        End If
        Return result
    End Function

End Class