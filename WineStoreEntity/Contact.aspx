<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WineStoreEntity.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12" style="width:1000px;">
                <h1>Feed Back Area </h1>
                <hr />
                <label>Enter  Name </label><br />
                <asp:TextBox ID="txtName" runat="server" style="width:1000px;" Class="box"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtName" runat="server" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
                <br />

                <label>Enter  Email </label><br />
                <asp:TextBox ID="txtEmail" runat="server"  TextMode="Email" style="width:1000px;" Class="box"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtEmail" runat="server" ErrorMessage="Enter Email"></asp:RequiredFieldValidator>
                <br />

                <label>Enter  Phone No. </label><br />
                <asp:TextBox ID="txtPhone" runat="server" style="width:1000px;" TextMode="Number" Class="box"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtPhone" runat="server" ErrorMessage="Enter Phone Number"></asp:RequiredFieldValidator>
                <br />

                <label>Enter  Message </label><br />
                <asp:TextBox ID="txtMsg" runat="server" style="width:1000px;" TextMode="MultiLine" Class="box"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtMsg" runat="server" ErrorMessage="Enter Message"></asp:RequiredFieldValidator>
                <br />


                <asp:Button ID="BtnSubmit" runat="server" Text="Send Feed Back" class="btn btn-primary" OnClick="BtnSubmit_Click"  />
          
                <h2 runat="server" id="out_put"></h2>
            </div>

        </div>

    </div>


</asp:Content>
