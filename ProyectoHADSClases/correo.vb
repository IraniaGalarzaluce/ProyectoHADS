Imports System.Net.Mail

Public Class mail

    Public Shared Function enviarEmailConfirmacion(ByVal email As String, ByVal numConf As Integer) As Boolean
        Try

            Dim from_address As New MailAddress("irania.galarzaluce@gmail.com", "Irania")
            Dim to_address As New MailAddress(email, email)
            Dim from_pass As String = "iratiania"
            Dim smtp As New SmtpClient
            smtp.Host = "smtp.gmail.com"
            smtp.Port = 587
            smtp.EnableSsl = True
            smtp.UseDefaultCredentials = False
            smtp.Credentials = New System.Net.NetworkCredential(from_address.Address, from_pass)
            Dim message As New MailMessage(from_address, to_address)
            message.Subject = "IraniaWeb: Confirmación Registro"
            Dim web As String = "http://hads15irania.azurewebsites.net/Confirmar.aspx?mbr="
            message.Body = "<html><head></head><body>" & "<h1> Bienvenido a IraniaWeb! </h1> <h4> Para confirmar tu registro accede al siguiente link por favor: <a href='" & web & email & "&numconf=" & numConf & "'> Confirmar registro </a></h4></body></html>"
            message.IsBodyHtml = True
            smtp.Send(message)
            Return True
        Catch ex As Exception
            ' MsgBox(ex.Message)
            Return False
        End Try
    End Function

End Class
