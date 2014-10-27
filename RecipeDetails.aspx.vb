
Partial Class RecipeDetails
    Inherits System.Web.UI.Page

    Protected Sub FormView1_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormView1.ItemDeleted
        Dim deletedrecipe As String = e.Values("Recipe_Name").ToString()

        lblDeletedRecipe.Text() = deletedrecipe & " has been deleted from the database!"

        Response.AddHeader("REFRESH", "3;URL=./ViewAllRecipes.aspx")
    End Sub




    Protected Sub FormView1_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated
        Response.Redirect("./ViewAllRecipes.aspx")
    End Sub
End Class
