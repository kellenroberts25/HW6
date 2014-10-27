<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wicked Easy Recipes</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="sql_NewRecipe" runat="server" ConnectionString="<%$ ConnectionStrings:dbo_karoberts_HW6 %>" DeleteCommand="DELETE FROM [karoberts_HW6] WHERE [RecipeID] = @RecipeID" InsertCommand="INSERT INTO [karoberts_HW6] ([Recipe_Name], [Submitted_By], [Ingredient_1], [Ingredient_2], [Ingredient_3], [Ingredient_4], [Ingredient_5], [Preperation], [Notes]) VALUES (@Recipe_Name, @Submitted_By, @Ingredient_1, @Ingredient_2, @Ingredient_3, @Ingredient_4, @Ingredient_5, @Preperation, @Notes)" SelectCommand="SELECT * FROM [karoberts_HW6]" UpdateCommand="UPDATE [karoberts_HW6] SET [Recipe_Name] = @Recipe_Name, [Submitted_By] = @Submitted_By, [Ingredient_1] = @Ingredient_1, [Ingredient_2] = @Ingredient_2, [Ingredient_3] = @Ingredient_3, [Ingredient_4] = @Ingredient_4, [Ingredient_5] = @Ingredient_5, [Preperation] = @Preperation, [Notes] = @Notes WHERE [RecipeID] = @RecipeID">
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
        <br />
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="RecipeID" DataSourceID="sql_NewRecipe" Height="236px" Width="606px" DefaultMode="Insert">
            <EditItemTemplate>
                </EditItemTemplate>
            <InsertItemTemplate>
                <table class="table">
                    <tr>
                        <td>
                            Recipe: 
                        </td>
                        <td>
                            <asp:TextBox ID="txtRecipe" runat="server" Text='<%# Bind("Recipe_Name") %>' />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="valRecipe" runat="server" ErrorMessage="Please enter the name of the recipe." ControlToValidate="txtRecipe"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Submitted By:
                        </td>
                        <td>
                            <asp:TextBox ID="txtSubmittedBy" runat="server" Text='<%# Bind("Submitted_By") %>' />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="valSubmittedBy" runat="server" ErrorMessage="Please enter who is submitting the recipe." ControlToValidate="txtSubmittedBy"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            Ingredient #1:
                        </td>
                        <td>
                            <asp:TextBox ID="txtIngredient1" runat="server" Text='<%# Bind("Ingredient_1") %>' />

                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="valIngredient" runat="server" ErrorMessage="Please enter at least 1 ingredient." ControlToValidate="txtIngredient1"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            Ingredient #2:
                        </td>
                        <td>
                            <asp:TextBox ID="txtIngredient2" runat="server" Text='<%# Bind("Ingredient_2") %>' />

                        </td>
                        <td>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            Ingredient #3:
                        </td>
                        <td>
                            <asp:TextBox ID="txtIngredient3" runat="server" Text='<%# Bind("Ingredient_3") %>' />
                        </td>
                        <td>


                        </td>
                    </tr>
                    <tr>
                        <td>
                            Ingredient #4:
                        </td>
                        <td>
                            <asp:TextBox ID="txtIngredient4" runat="server" Text='<%# Bind("Ingredient_4") %>' />
                        </td>
                        <td>


                        </td>
                    </tr>
                    <tr>
                        <td>
                            Ingredient #5:
                        </td>
                        <td>
                            <asp:TextBox ID="txtIngredient5" runat="server" Text='<%# Bind("Ingredient_5") %>' />
                        </td>
                        <td>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            Preperation:
                        </td>
                        <td>
                            <asp:TextBox ID="txtPreperation" runat="server" Text='<%# Bind("Preperation") %>' />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="valPreperation" runat="server" ErrorMessage="Please enter preperation instructions." ControlToValidate="txtPreperation"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            Notes:
                        </td>
                        <td>
                            <asp:TextBox ID="txtNotes" runat="server" Text='<%# Bind("Notes") %>' />
                        </td>
                        <td>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            
                        </td>
                        <td>
                            <asp:Button ID="btnSave" runat="server" CausesValidation="true" CommandName="Insert" Text="Save" />
                        </td>
                        <td>

                        </td>
                    </tr>
                </table>
                </InsertItemTemplate>
            <ItemTemplate>
                </ItemTemplate>
        </asp:FormView>
    
        <br />
    
    </div>
    </form>
</body>
</html>
