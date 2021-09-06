<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Trainning_Center_Management_Project.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <div class="row">
        <div class="col">
            <div class="form-horizontal">
                <h4>Use a local account to login</h4>
                <asp:Panel ID="Panel1" runat="server" CssClass="alert alert-warning" Visible="false">
                    <h5>Login Failed</h5>
                    <p>Failed to login user!!</p>
                </asp:Panel>
                <div class="form-group row">
                    <label class="col-form-label col-2 text-right" for="txtUsername">Username</label>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control col-2"></asp:TextBox>
                </div>
                <div class="form-group row">
                    <label class="col-form-label col-2 text-right" for="txtPassword">Password</label>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control col-2"></asp:TextBox>
                </div>
                 <div class="form-group row">
                    <div class="offset-2">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="btnLogin_Click"  />
                    </div>
                </div>
            </div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/register.aspx" ViewStateMode="Disabled">Register a new User</asp:HyperLink>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
