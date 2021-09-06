<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Batch.aspx.cs" Inherits="Trainning_Center_Management_Project.App_Pages.Batch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.6.0.js"></script>
    <link href="../Content/font-awesome.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
     <div class="container ">
        <div class="row">
        <div class="col-md-8 mb-4">
            <h2 class="text-center mb-3">Batch Information</h2>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table-dark table-hover" DataKeyNames="bID" DataSourceID="dsBatch" CellPadding="4" ForeColor="#333333" GridLines="None" Width="674px" AllowPaging="True" AllowSorting="True">
                <AlternatingRowStyle BackColor="#9999ff" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="bID" HeaderText="Batch ID" ReadOnly="True" SortExpression="bID" />
                    <asp:BoundField DataField="bName" HeaderText="Batch Name" SortExpression="bName" />
                    <asp:BoundField DataField="bperiod" HeaderText="Batch period" SortExpression="bperiod" />
                    <asp:BoundField DataField="bRound" HeaderText="Batch Round" SortExpression="bRound" />
                </Columns>
                <EditRowStyle BackColor="#33ccff" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>

            <asp:SqlDataSource ID="dsBatch" runat="server" ConnectionString="<%$ ConnectionStrings:Trainning_CenterDBCon %>" DeleteCommand="DELETE FROM [Batch] WHERE [bID] = @bID" InsertCommand="INSERT INTO [Batch] ([bID], [bName], [bperiod], [bRound]) VALUES (@bID, @bName, @bperiod, @bRound)" SelectCommand="SELECT * FROM [Batch]" UpdateCommand="UPDATE [Batch] SET [bName] = @bName, [bperiod] = @bperiod, [bRound] = @bRound WHERE [bID] = @bID">
                <DeleteParameters>
                    <asp:Parameter Name="bID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="bID" Type="Int32" />
                    <asp:Parameter Name="bName" Type="String" />
                    <asp:Parameter Name="bperiod" Type="String" />
                    <asp:Parameter Name="bRound" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="bName" Type="String" />
                    <asp:Parameter Name="bperiod" Type="String" />
                    <asp:Parameter Name="bRound" Type="Int32" />
                    <asp:Parameter Name="bID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
             </div>

            <div class="col-md-4">
                <h2 class="text-center">Add new Batch</h2>
                <div class="form-group ">
                    <asp:Label ID="Label1" runat="server" Text="Label" CssClass="col-form-label">Batch Id</asp:Label>
                    <asp:TextBox ID="txtId" runat="server" CssClass="form-control" Text='<%# Bind("bID") %>' Width="353px" ></asp:TextBox>
                </div>
                <div class="form-group ">
                    <asp:Label ID="Label2" runat="server" Text="Label" CssClass="col-form-label">Batch Name</asp:Label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Text='<%# Bind("bName") %>' Width="353px" ></asp:TextBox>
                </div>
                <div class="form-group ">
                    <asp:Label ID="Label3" runat="server" Text="Label" CssClass="col-form-label">Batch Period </asp:Label>
                    <asp:TextBox ID="txtPeriod" runat="server" CssClass="form-control" Text='<%# Bind("bperiod") %>' Width="353px" ></asp:TextBox>
                </div>
                <div class="form-group ">
                    <asp:Label ID="Label4" runat="server" Text="Label" CssClass="col-form-label">Round</asp:Label>
                    <asp:TextBox ID="txtRound" runat="server" CssClass="form-control" Text='<%# Bind("bRound") %>' Width="353px"></asp:TextBox>
                </div>  
                <br />
                <div class="form-group ">
                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-outline-primary btn-sm" OnClick="btnSave_Click" Height="39px" Width="62px"  />
                </div>
           <asp:Literal ID="Literal1" runat="server"></asp:Literal>
             </div>

       
    </div>
    </div>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
