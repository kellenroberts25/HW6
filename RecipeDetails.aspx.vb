
Partial Class RecipeDetails
    Inherits System.Web.UI.Page

    Protected Sub FormView1_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormView1.ItemDeleted
        Dim deletedrecipe As String = e.Values("Recipe_Name").ToString()

        lblDeletedRecipe.Text() = deletedrecipe & " has been deleted from the database!"

        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")
    End Sub




    Protected Sub FormView1_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated
        Response.Redirect("./Default.aspx")
    End Sub
End Class
