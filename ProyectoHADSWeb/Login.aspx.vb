Imports ProyectoHADSClases.accesodatosSQL
Imports System.Web.Security
Imports System.Security.Cryptography

Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conectar()
        System.Web.Security.FormsAuthentication.SignOut()
    End Sub

    Protected Sub Page_Unload(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Unload
        cerrarconexion()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim encPass = encriptar(TextBox2.Text)

        Dim usConfirAlum = registradoA(TextBox1.Text, encPass)
        If (usConfirAlum = True) Then
            Session.Contents("alumno") = TextBox1.Text
            Application.Lock()
            Application.Contents("AlumConectados").Add(TextBox1.Text)
            Application.UnLock()
            FormsAuthentication.SetAuthCookie("alumno", False)
            Response.Redirect("Alumnos/Alumno.aspx")
        Else
            Dim usConfirProf = registradoP(TextBox1.Text, encPass)
            If (usConfirProf = True) Then
                Session.Contents("profesor") = TextBox1.Text
                Application.Lock()
                Application.Contents("ProfConectados").Add(TextBox1.Text)
                Application.UnLock()
                If TextBox1.Text = "admin@ehu.es" Then
                    FormsAuthentication.SetAuthCookie("admin", False)
                    Response.Redirect("Admin/Admin.aspx")
                Else
                    If TextBox1.Text = "vadillo@ehu.es" Then
                        FormsAuthentication.SetAuthCookie("vadillo", False)
                    Else
                        FormsAuthentication.SetAuthCookie("profesor", False)
                    End If
                    Response.Redirect("Profesores/Profesor.aspx")
                End If
            Else
                Dim usReg = confirmado(TextBox1.Text, encPass)
                If (usReg = True) Then
                    Label2.Text = "Debe confirmar su solicitud para acceder a la página Super Secreta"
                Else
                    Label2.Text = "Usuario o contraseña incorrectos"
                End If
            End If
        End If

    End Sub

    Private Function encriptar(ByVal pass As String) As String

        Dim md5 As New MD5CryptoServiceProvider

        Dim inputData() As Byte = ASCIIEncoding.ASCII.GetBytes(pass)
        Dim hashResult() As Byte = md5.ComputeHash(inputData)
        Dim encPass = ASCIIEncoding.ASCII.GetString(hashResult)
        Dim encPass2 = Replace(encPass, "'", "")

        Return encPass2

    End Function


End Class
