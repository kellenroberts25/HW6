<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wicked Easy Recipes</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    
    <div class="header">
        <h2 class="auto-style2">Wicked Easy Recipes</h2>

    </div>
    <h4 class="auto-style2">Using 5 Ingredients or Less!</h4>
    
    <form id="form1" runat="server" style="align-content:center; text-align: center;">
        <div class="auto-style2">
    <br /><a href="Default.aspx" style="color: #696969">Home</a>&nbsp; |&nbsp; 
        <a href="New_Recipe.aspx" style="color: #696969">New Recipe</a>&nbsp; |&nbsp; 
        <a href="AboutUs.aspx" style="color: #696969">About Us</a>&nbsp; |&nbsp; 
        <a href="ContactUs.aspx" style="color: #696969">Contact Us</a>
        
        </div>
        <div style="align-content:center">
        <div class="table">
    
        <asp:SqlDataSource ID="sql_HW6" runat="server" ConnectionString="<%$ ConnectionStrings:dbo_karoberts_HW6 %>" DeleteCommand="DELETE FROM [karoberts_HW6] WHERE [RecipeID] = @RecipeID" InsertCommand="INSERT INTO [karoberts_HW6] ([Recipe_Name], [Submitted_By], [Ingredient_1], [Ingredient_2], [Ingredient_3], [Ingredient_4], [Ingredient_5], [Preperation], [Notes]) VALUES (@Recipe_Name, @Submitted_By, @Ingredient_1, @Ingredient_2, @Ingredient_3, @Ingredient_4, @Ingredient_5, @Preperation, @Notes)" SelectCommand="SELECT * FROM [karoberts_HW6]" UpdateCommand="UPDATE [karoberts_HW6] SET [Recipe_Name] = @Recipe_Name, [Submitted_By] = @Submitted_By, [Ingredient_1] = @Ingredient_1, [Ingredient_2] = @Ingredient_2, [Ingredient_3] = @Ingredient_3, [Ingredient_4] = @Ingredient_4, [Ingredient_5] = @Ingredient_5, [Preperation] = @Preperation, [Notes] = @Notes WHERE [RecipeID] = @RecipeID">
            <DeleteParameters>
                <asp:Parameter Name="RecipeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Recipe_Name" Type="String" />
                <asp:Parameter Name="Submitted_By" Type="String" />
                <asp:Parameter Name="Ingredient_1" Type="String" />
                <asp:Parameter Name="Ingredient_2" Type="String" />
                <asp:Parameter Name="Ingredient_3" Type="String" />
                <asp:Parameter Name="Ingredient_4" Type="String" />
                <asp:Parameter Name="Ingredient_5" Type="String" />
                <asp:Parameter Name="Preperation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Recipe_Name" Type="String" />
                <asp:Parameter Name="Submitted_By" Type="String" />
                <asp:Parameter Name="Ingredient_1" Type="String" />
                <asp:Parameter Name="Ingredient_2" Type="String" />
                <asp:Parameter Name="Ingredient_3" Type="String" />
                <asp:Parameter Name="Ingredient_4" Type="String" />
                <asp:Parameter Name="Ingredient_5" Type="String" />
                <asp:Parameter Name="Preperation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="RecipeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
            <div>
        
            <br />
        
            </div>
        
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="RecipeID" DataSourceID="sql_HW6" HorizontalAlign="Center" style="margin-left:auto;margin-right:auto;">
            <Columns>
                <asp:BoundField DataField="Recipe_Name" HeaderText="Recipe" SortExpression="Recipe_Name" />
                <asp:BoundField DataField="Submitted_By" HeaderText="Submitted By" SortExpression="Submitted_By" />
                <asp:HyperLinkField DataNavigateUrlFields="RecipeID" DataNavigateUrlFormatString="RecipeDetails.aspx?RecipeID={0}" Text="Select" />
            </Columns>
            <HeaderStyle CssClass="columns" />

        </asp:GridView>
    </div>
    </div>
    </form>
</body>
</html>
