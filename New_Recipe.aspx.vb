
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        FormView1.Focus()

    End Sub

    Protected Sub FormView1_ItemInserted1(sender As Object, e As FormViewInsertedEventArgs) Handles FormView1.ItemInserted
        Response.Redirect("./Default.aspx")
    End Sub
End Class
