<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Trainning_Center_Management_Project.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
   <div class="row">
        <div class="col">
            <div class="form-horizontal">
                <h4>Register Here</h4>
                <asp:Panel ID="Panel1" runat="server" CssClass="alert alert-warning" Visible="false">
                    <h5>Register Failed</h5>
                    <p>Failed to register user!!</p>
                </asp:Panel>
                <div class="form-group row">
                    <label class="col-form-label col-2 text-right" for="txtUsername">Username</label>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control col-2"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" runat="server" ErrorMessage="Username field is required!!" CssClass="invalid-feedback text-danger" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group row">
                    <label class="col-form-label col-2 text-right" for="txtPassword">Password</label>
                    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control col-2"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" runat="server" ErrorMessage="Password is required!!" ControlToValidate="txtPassword" CssClass="invalid-feedback text-danger"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group row">
                    <label class="col-form-label col-2 text-right" for="txtConfirmPassword">Confirm Password</label>
                    <asp:TextBox ID="txtConfirmPassword" TextMode="Password" runat="server" CssClass="form-control col-2"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" Display="Dynamic" ErrorMessage="Password don't match!!" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword"></asp:CompareValidator>
                </div>
                 <div class="form-group row">
                    <div class="offset-2">
                        <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-primary" OnClick="btnRegister_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
