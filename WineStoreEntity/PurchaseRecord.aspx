<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PurchaseRecord.aspx.cs" Inherits="WineStoreEntity.PurchaseRecord" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1> All Purchase Details of the Store</h1>
                <hr />

                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="id" InsertItemPosition="LastItem">
                    <AlternatingItemTemplate>
                        <tr style="background-color: #FFFFFF;color: #284775;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="CompanyLabel" runat="server" Text='<%# Eval("Company") %>' />
                            </td>
                            <td>
                                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                            </td>
                            <td>
                                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                            </td>
                            <td>
                                <asp:Label ID="QtyLabel" runat="server" Text='<%# Eval("Qty") %>' />
                            </td>
                            <td>
                                <asp:Label ID="PurchaseDateLabel" runat="server" Text='<%# Eval("PurchaseDate") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="background-color: #999999;">
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </td>
                            <td>
                                <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="CompanyTextBox" runat="server" Text='<%# Bind("Company") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="CategoryTextBox" runat="server" Text='<%# Bind("Category") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="QtyTextBox" runat="server" Text='<%# Bind("Qty") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="PurchaseDateTextBox" runat="server" Text='<%# Bind("PurchaseDate") %>' />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                            <tr>
                                <td>No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            </td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:TextBox ID="CompanyTextBox" runat="server" Text='<%# Bind("Company") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="CategoryTextBox" runat="server" Text='<%# Bind("Category") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="QtyTextBox" runat="server" Text='<%# Bind("Qty") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="PurchaseDateTextBox" runat="server" Text='<%# Bind("PurchaseDate") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="background-color: #E0FFFF;color: #333333;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="CompanyLabel" runat="server" Text='<%# Eval("Company") %>' />
                            </td>
                            <td>
                                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                            </td>
                            <td>
                                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                            </td>
                            <td>
                                <asp:Label ID="QtyLabel" runat="server" Text='<%# Eval("Qty") %>' />
                            </td>
                            <td>
                                <asp:Label ID="PurchaseDateLabel" runat="server" Text='<%# Eval("PurchaseDate") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                            <th runat="server"></th>
                                            <th runat="server">id</th>
                                            <th runat="server">Company</th>
                                            <th runat="server">Category</th>
                                            <th runat="server">Price</th>
                                            <th runat="server">Qty</th>
                                            <th runat="server">PurchaseDate</th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                                    <asp:DataPager ID="DataPager1" runat="server">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="CompanyLabel" runat="server" Text='<%# Eval("Company") %>' />
                            </td>
                            <td>
                                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                            </td>
                            <td>
                                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                            </td>
                            <td>
                                <asp:Label ID="QtyLabel" runat="server" Text='<%# Eval("Qty") %>' />
                            </td>
                            <td>
                                <asp:Label ID="PurchaseDateLabel" runat="server" Text='<%# Eval("PurchaseDate") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WineStoreConnectionString %>" DeleteCommand="DELETE FROM [Purchase_Data] WHERE [id] = @id" InsertCommand="INSERT INTO [Purchase_Data] ([Company], [Category], [Price], [Qty], [PurchaseDate]) VALUES (@Company, @Category, @Price, @Qty, @PurchaseDate)" SelectCommand="SELECT * FROM [Purchase_Data] ORDER BY [id] DESC" UpdateCommand="UPDATE [Purchase_Data] SET [Company] = @Company, [Category] = @Category, [Price] = @Price, [Qty] = @Qty, [PurchaseDate] = @PurchaseDate WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Company" Type="String" />
                        <asp:Parameter Name="Category" Type="String" />
                        <asp:Parameter Name="Price" Type="String" />
                        <asp:Parameter Name="Qty" Type="String" />
                        <asp:Parameter Name="PurchaseDate" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Company" Type="String" />
                        <asp:Parameter Name="Category" Type="String" />
                        <asp:Parameter Name="Price" Type="String" />
                        <asp:Parameter Name="Qty" Type="String" />
                        <asp:Parameter Name="PurchaseDate" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

                <a class="btn btn-danger" href="AdminPannel.aspx"> Back to Main Page </a>
            </div>

        </div>

    </div>
</asp:Content>
