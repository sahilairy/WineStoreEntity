<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="WineStoreEntity.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    

    <div class="container">
        <div class="row">
            <div class="col-md-12" style="width:1000px;">
                <h1>Admin Login Area </h1>
                <hr />
                <label>Enter User Name </label><br />
                <asp:TextBox ID="txtName" runat="server" style="width:1000px;" Class="box"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtName" runat="server" ErrorMessage="Enter User Name"></asp:RequiredFieldValidator>
                <br />
                <label>Enter Password </label><br />
                <asp:TextBox ID="TxtPassword" runat="server" Class="box"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtPassword" runat="server" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                <br />

                <asp:Button ID="BtnSubmit" runat="server" Text="Sign In " class="btn btn-primary" OnClick="BtnSubmit_Click" />
          
                <h2 runat="server" id="out_put"></h2>
            </div>

        </div>

    </div>
</asp:Content>
