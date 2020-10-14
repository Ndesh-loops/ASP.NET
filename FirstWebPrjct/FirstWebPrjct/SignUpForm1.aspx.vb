Imports MySql.Data.MySqlClient
Public Class SignUpForm1
    Inherits System.Web.UI.Page
    Dim con As New MySql.Data.MySqlClient.MySqlConnection
    Dim sql As String
    Dim cmd As MySqlCommand
    Dim reader As MySqlDataReader
    Dim firstname As String
    Dim lastname As String
    Dim emailaccount As String
    Dim phonenumber As String
    Dim createpassword As String
    Dim confirmpassword As String
    Dim Gender As String

    Private Function validation() As Boolean
        If TextBox1.Text = "" Then
            Return False
        ElseIf TextBox2.Text = "" Then
            Return False
        ElseIf TextBox3.Text = "" Then
            Return False
        ElseIf TextBox4.Text = "" Then
            Return False
        ElseIf TextBox5.Text = "" Then
            Return False
        ElseIf TextBox6.Text = "" Then
            Return False
        ElseIf DropDownList1.Text = "" Then
            Return False

        End If

        Return True
    End Function

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Call Connect()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim sql As String
        Dim cmd As MySqlCommand
        Dim valid As Boolean
        If Not TextBox5.Text.Equals(TextBox6.Text) Then
            MsgBox("Passwords do not match")


        ElseIf validation() Then


            sql = "insert into demoasp(firstname,lastname,emailaccount,phonenumber,createpassword,confirmpassword,Gender) values(@firstname,@lastname,@emailaccount,@phonenumber,@createpassword,@confirmpassword,@Gender)"

            cmd = New MySqlCommand(sql, con)

            firstname = TextBox1.Text
            lastname = TextBox2.Text
            emailaccount = TextBox3.Text
            phonenumber = TextBox4.Text
            createpassword = TextBox5.Text
            confirmpassword = TextBox6.Text
            Gender = DropDownList1.Text


            cmd.Parameters.AddWithValue("@firstname", firstname)
            cmd.Parameters.AddWithValue("@lastname", lastname)
            cmd.Parameters.AddWithValue("@emailaccount", emailaccount)
            cmd.Parameters.AddWithValue("@phonenumber", phonenumber)
            cmd.Parameters.AddWithValue("@createpassword", createpassword)
            cmd.Parameters.AddWithValue("@confirmpassword", confirmpassword)
            cmd.Parameters.AddWithValue("@Gender", Gender)


            Try
                cmd.ExecuteNonQuery()
                MsgBox("succesful sign-up")

            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MsgBox("All fields have to be filled")
        End If
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

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

    End Sub

    Protected Sub TextBox3_TextChanged(sender As Object, e As EventArgs) Handles TextBox3.TextChanged
        Dim sql As String
        Dim SearchValue As String
        SearchValue = TextBox3.Text
        sql = "select * from demoasp WHERE emailaccount= '" & SearchValue & "'"
        cmd = New MySqlCommand(sql, con)
        reader = cmd.ExecuteReader
        If reader.HasRows Then

            MsgBox("Email already exists")


        Else
            Button1.Enabled = False
        End If
        reader.Close()
    End Sub

    Protected Sub TextBox5_TextChanged(sender As Object, e As EventArgs) Handles TextBox5.TextChanged
        Dim sql As String
        Dim SearchValue As String
        SearchValue = TextBox3.Text
        sql = "select * from demoasp WHERE createpassword= '" & SearchValue & "'"
        cmd = New MySqlCommand(sql, con)
        reader = cmd.ExecuteReader
        If reader.HasRows Then
            MsgBox("Please create a different password")
            Button1.Enabled = False
        Else
            Button1.Enabled = True
        End If
        reader.Close()
    End Sub
End Class