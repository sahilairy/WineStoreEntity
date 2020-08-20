<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPannel.aspx.cs" Inherits="WineStoreEntity.AdminPannel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1> Working pannel of the Admin </h1>
                    <a href="PurchaseRecord.aspx" class="btn btn-warning"> Purchase Record </a>
                    <br />

                    <a href="SaleRecord.aspx" class="btn btn-warning">Sale Record </a>
                    <br />

                    <a href="EmployeeRecord.aspx" class="btn btn-warning"> Employee Record </a>
                    <br />


                    <a href="Feedback.aspx" class="btn btn-warning"> FeedBack Record </a>
                    <br />

                </div>

            </div>
        </div>
</asp:Content>
