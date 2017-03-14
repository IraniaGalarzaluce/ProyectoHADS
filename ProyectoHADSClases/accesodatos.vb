Imports System.Data.SqlClient
Imports System.Data.OleDb
Imports System.Net.Mail

Public Class accesodatosSQL

    Public Shared conexion As New SqlConnection
    Public Shared comando As New SqlCommand

    Public Shared Function conectar() As String
        Try
            'conexion.ConnectionString = "Data Source=158.227.106.20;Initial_Catalog=Amigos;Integrated_Security=False;_UserID=HADS15;Password=buitre;_Connect Timeout=15;Encrypt=False;TrustServerCertificate=False"
            'CONEXION IRATI:
            conexion.ConnectionString = "Server=tcp:irania15irati.database.windows.net,1433;Initial Catalog=HADS15_Tareas;Persist Security Info=False;User ID=Irani@irania15irati;Password=Huskito15;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"
            'CONEXIÓN ANIA:
            '  conexion.ConnectionString = "Server=tcp:irania15ania.database.windows.net,1433;Initial Catalog=HADS15_Tareas;Persist Security Info=False;User ID=Irania@irania15ania;Password=Huskito15;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"
            conexion.Open()
        Catch ex As Exception
            Return "ERROR DE CONEXIÓN: " + ex.Message
        End Try
        Return "CONEXION OK"
    End Function

    Public Shared Sub cerrarconexion()
        conexion.Close()
    End Sub

    Public Shared Function insertar(ByVal mail As String, ByVal nombre As String, ByVal apellidos As String,
                                    ByVal dni As String, ByVal pass As String, ByVal pregunta As String,
                                    ByVal respuesta As String, ByVal numConf As Integer) As String

        Dim st = "insert into Usuarios(email, nombre, apellidos, pregunta, respuesta, dni, numconfir, confirmado, pass) values ('" & mail & "', '" & nombre & "', '" & apellidos & "', '" & pregunta & "', '" & respuesta & "', '" & dni & "', " & numConf & ", 0, '" & pass & "')"
        Dim numregs As Integer
        comando = New SqlCommand(st, conexion)
        Try
            numregs = comando.ExecuteNonQuery()
        Catch ex As Exception
            Return ex.Message
        End Try
        Return (numregs & " registro(s) insertado(s) en la BD ")
    End Function

    Public Shared Function contar() As Integer
        Dim st = "select count(*) from Usuarios"
        comando = New SqlCommand(st, conexion)
        Return comando.ExecuteScalar()
    End Function

    Public Shared Function confirmarusuario(ByVal email As String, ByVal numConf As Integer) As Boolean
        Dim st = "select numconfir from Usuarios where email='" & email & "'"
        comando = New SqlCommand(st, conexion)
        Dim numero As Integer = comando.ExecuteScalar
        If numero = numConf Then
            Dim update = "update Usuarios set confirmado=1 where email='" & email & "'"
            comando = New SqlCommand(update, conexion)
            Try
                comando.ExecuteNonQuery()
            Catch ex As Exception
                MsgBox(ex.Message)
                Return False
            End Try
            Return True
        Else
            Return False
        End If

    End Function

    Public Shared Function registradoA(ByVal mail As String, ByVal pass As String) As Boolean
        Dim st = "select count(*) from Usuarios where email='" & mail & "' and pass='" & pass & "' and confirmado=1 and tipo='A'"
        comando = New SqlCommand(st, conexion)
        Return comando.ExecuteScalar()
    End Function

    Public Shared Function registradoP(ByVal mail As String, ByVal pass As String) As Boolean
        Dim st = "select count(*) from Usuarios where email='" & mail & "' and pass='" & pass & "' and confirmado=1 and tipo='P'"
        comando = New SqlCommand(st, conexion)
        Return comando.ExecuteScalar()
    End Function

    Public Shared Function confirmado(ByVal mail As String, ByVal pass As String) As Boolean
        Dim st = "select count(*) from Usuarios where email='" & mail & "' and pass='" & pass & "' and confirmado=0"
        comando = New SqlCommand(st, conexion)
        Return comando.ExecuteScalar()
    End Function

    Public Shared Function mailExistente(ByVal mail As String) As Boolean
        Dim st = "select count(*) from Usuarios where email='" & mail & "' and confirmado=1"
        comando = New SqlCommand(st, conexion)
        Return comando.ExecuteScalar()
    End Function

    Public Shared Function obtenerPregunta(ByVal mail As String) As String
        Dim st = "select pregunta from Usuarios where email='" & mail & "'"
        comando = New SqlCommand(st, conexion)
        Return comando.ExecuteScalar()
    End Function

    Public Shared Function cambioPass(ByVal mail As String, ByVal passNueva As String,
                                   ByVal respuesta As String) As String
        Dim st = "select count(*) from Usuarios where email='" & mail & "' and respuesta='" & respuesta & "' and confirmado=1"
        comando = New SqlCommand(st, conexion)
        If (comando.ExecuteScalar() = 1) Then
            Dim st2 = "update Usuarios set pass='" & passNueva & "' where email='" & mail & "'"
            comando = New SqlCommand(st2, conexion)
            Dim numregs As Integer
            Try
                numregs = comando.ExecuteNonQuery()
            Catch ex As Exception
                Return ex.Message
            End Try
            Return ("Contraseña cambiada correctamente. ")
        End If
        Return ("Respuesta incorrecta.")
    End Function

    'Public Shared Function obtenerdatos() As SqlDataReader()
    ' Dim st = "select * from Usuarios"
    '   comando = New SqlCommand(st, conexion)
    '   Return (comando.ExecuteReader())
    ' End Function

End Class
