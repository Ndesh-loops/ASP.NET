Imports MySql.Data.MySqlClient
Public Class LoginForm
    Inherits System.Web.UI.Page
    Dim con As New MySql.Data.MySqlClient.MySqlConnection
    Dim sql As String
    Dim cmd As MySqlCommand
    Dim reader As MySqlDataReader
    Dim password As String
    Dim lastname As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Call Connect()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim sql As String
        Dim pass As String

        lastname = TextBox1.Text
        password = TextBox2.Text
        sql = "select confirmpassword from demoasp WHERE lastname=@lastname"
        cmd = New MySqlCommand(sql, con)
        cmd.Parameters.AddWithValue("@lastname", lastname)

        Try

            pass = cmd.ExecuteScalar()
            If password = pass And TextBox2.Text IsNot "" Then
                MsgBox("Login succesful")
                Response.Redirect("/Dashboard.aspx")


            Else
                MsgBox("Please ensure that all the details are entered and are correctly filled")
            End If

        Catch ex As Exception
            MsgBox(ex.Message)

        End Try




    End Sub
    Public Sub Connect()
        Dim ConString As String
        ConString = "server=localhost;uid=root;pwd=;database=ajax"

        Try
            con.ConnectionString = ConString
            con.Open()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click 'exit button


    End Sub
End Class