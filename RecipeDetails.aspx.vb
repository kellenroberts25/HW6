
Partial Class RecipeDetails
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        Dim deletedrecipe As String = e.Values("Recipe_Name").ToString()

        lblDeletedRecipe.text() = deletedrecipe & "has been deleted from the database!"

        Response.AddHeader("REFRESH", "3;URL=./ViewAllRecipes.aspx")
    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated

    End Sub




End Class
