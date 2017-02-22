Imports ProyectoHADSClases.accesodatosSQL

Public Class CambiarPass
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim result As String
        result = conectar()
    End Sub

    Protected Sub Page_Unload(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Unload
        cerrarconexion()
    End Sub

    Protected Sub AceptarBtn_Click(sender As Object, e As EventArgs) Handles AceptarBtn.Click
        Dim cambioP As String
        cambioP = cambioPass(mailTxt.Text, PassTxt.Text, RespuestaTxt.Text)
        Label1.Text = cambioP
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim existe As String
        existe = mailExistente(mailTxt.Text)
        If (existe = True) Then
            Info.Text = "Por favor, rellene el formulario."
            Dim pregunta As String
            pregunta = obtenerPregunta(mailTxt.Text)
            preg.Text = pregunta
            PSTxt.Visible = True
            RSTxt.Visible = True
            NPTxt.Visible = True
            RPTxt.Visible = True
            RespuestaTxt.Visible = True
            PassTxt.Visible = True
            PassRepTxt.Visible = True
            AceptarBtn.Visible = True
            RespReqVal.Visible = True
            PassReqVal.Visible = True
            CompPassVal.Visible = True
            PassRepReqVal.Visible = True
        Else
            Info.Text = "El email no está registrado."
        End If
    End Sub

End Class