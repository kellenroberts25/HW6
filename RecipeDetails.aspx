<%@ Page Language="VB" AutoEventWireup="false" CodeFile="RecipeDetails.aspx.vb" Inherits="RecipeDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="sql_RecipeDetails" runat="server" ConnectionString="<%$ ConnectionStrings:dbo_karoberts_HW6 %>" DeleteCommand="DELETE FROM [karoberts_HW6] WHERE [RecipeID] = @RecipeID" InsertCommand="INSERT INTO [karoberts_HW6] ([Recipe_Name], [Submitted_By], [Ingredient_1], [Ingredient_2], [Ingredient_3], [Ingredient_4], [Ingredient_5], [Preperation], [Notes]) VALUES (@Recipe_Name, @Submitted_By, @Ingredient_1, @Ingredient_2, @Ingredient_3, @Ingredient_4, @Ingredient_5, @Preperation, @Notes)" SelectCommand="SELECT * FROM [karoberts_HW6] WHERE ([RecipeID] = @RecipeID)" UpdateCommand="UPDATE [karoberts_HW6] SET [Recipe_Name] = @Recipe_Name, [Submitted_By] = @Submitted_By, [Ingredient_1] = @Ingredient_1, [Ingredient_2] = @Ingredient_2, [Ingredient_3] = @Ingredient_3, [Ingredient_4] = @Ingredient_4, [Ingredient_5] = @Ingredient_5, [Preperation] = @Preperation, [Notes] = @Notes WHERE [RecipeID] = @RecipeID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="RecipeID" QueryStringField="RecipeID" Type="Int32" />
            </SelectParameters>
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
        <asp:Label ID="lblDeletedRecipe" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="RecipeID" DataSourceID="sql_RecipeDetails" Height="270px" Width="390px">
            <EditItemTemplate>
                            <table>
                    <tr>
                        <td>
                            Recipe: 
                        </td>
                        <td>
                            <asp:TextBox ID="Recipe_NameTextBox" runat="server" Text='<%# Bind("Recipe_Name") %>' />
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
                            <asp:TextBox ID="Submitted_ByTextBox" runat="server" Text='<%# Bind("Submitted_By") %>' />
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
                            <asp:TextBox ID="Ingredient_1TextBox" runat="server" Text='<%# Bind("Ingredient_1") %>' />

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
                            <asp:TextBox ID="Ingredient_2TextBox" runat="server" Text='<%# Bind("Ingredient_2") %>' />
                        </td>
                        <td>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            Ingredient #3:
                        </td>
                        <td>
                            <asp:TextBox ID="Ingredient_3TextBox" runat="server" Text='<%# Bind("Ingredient_3") %>' />
                        </td>
                        <td>


                        </td>
                    </tr>
                    <tr>
                        <td>
                            Ingredient #4:
                        </td>
                        <td>
                            <asp:TextBox ID="Ingredient_4TextBox" runat="server" Text='<%# Bind("Ingredient_4") %>' />
                        </td>
                        <td>


                        </td>
                    </tr>
                    <tr>
                        <td>
                            Ingredient #5:
                        </td>
                        <td>
                            <asp:TextBox ID="Ingredient_5TextBox" runat="server" Text='<%# Bind("Ingredient_5") %>' />
                        </td>
                        <td>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            Preperation:
                        </td>
                        <td>
                            <asp:TextBox ID="PreperationTextBox" runat="server" Text='<%# Bind("Preperation") %>' />
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
                            <asp:TextBox ID="NotesTextBox" runat="server" Text='<%# Bind("Notes") %>' />
                        </td>
                        <td>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            
                        </td>
                        <td>
                            <asp:Button ID="btnSave" runat="server" CausesValidation="true" CommandName="Edit" Text="Save" />
                        </td>
                        <td>

                        </td>
                    </tr>
                </table>

            </EditItemTemplate>
            <InsertItemTemplate>

            </InsertItemTemplate>
            <ItemTemplate>
                <table>
                    <tr>
                        <td>
                            Recipe:
                        </td>
                        <td>
                            <asp:Label ID="Recipe_NameLabel" runat="server" Text='<%# Bind("Recipe_Name") %>' />
                        </td>                
                    </tr>
                    <tr>
                        <td>
                            Submitted By:
                        </td>
                        <td>
                            <asp:Label ID="Submitted_ByLabel" runat="server" Text='<%# Bind("Submitted_By") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Ingredient 1:
                        </td>
                        <td>
                            <asp:Label ID="Ingredient_1Label" runat="server" Text='<%# Bind("Ingredient_1") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Ingredient 2:
                        </td>
                        <td>
                            <asp:Label ID="Ingredient_2Label" runat="server" Text='<%# Bind("Ingredient_2") %>' />
                        </td>
                </tr>
                <tr>
                    <td>
                        Ingredient 3:
                    </td>
                    <td>
                        <asp:Label ID="Ingredient_3Label" runat="server" Text='<%# Bind("Ingredient_3") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                         Ingredient 4:
                    </td>
                    <td>
                        <asp:Label ID="Ingredient_4Label" runat="server" Text='<%# Bind("Ingredient_4") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Ingredient 5:
                    </td>
                    <td>
                        <asp:Label ID="Ingredient_5Label" runat="server" Text='<%# Bind("Ingredient_5") %>' />
                    </tr>
                    <tr>
                        <td>
                            Preperation:
                        </td>
                        <td>
                            <asp:Label ID="PreperationLabel" runat="server" Text='<%# Bind("Preperation") %>' />
                        </td>
                    </tr>
                <tr>
                    <td>
                        Notes:
                    </td>
                    <td>
                        <asp:Label ID="NotesLabel" runat="server" Text='<%# Bind("Notes") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnEdit" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Button ID="btnDelete" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    </td>
                </tr>
                </table>
            </ItemTemplate>
        </asp:FormView>
    
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
