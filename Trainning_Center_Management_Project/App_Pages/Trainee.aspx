<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Trainee.aspx.cs" Inherits="Trainning_Center_Management_Project.App_Pages.Trainee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="../Content/bootstrap.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.6.0.js"></script>
    <link href="../Content/font-awesome.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <div class="row">
        <div class="col-md-8">
            <h2>Trainee Form</h2>
            <asp:DetailsView ID="DetailsView1" CssClass="table table-bordered" runat="server" AutoGenerateRows="False" DataKeyNames="tID" DataSourceID="dsTrainee" AllowPaging="True"  OnItemInserting="DetailsView1_ItemInserting" OnItemUpdating="DetailsView1_ItemUpdating" OnPageIndexChanging="DetailsView1_PageIndexChanging">
                <Fields>
                    <asp:BoundField DataField="tID" HeaderText="Trainee ID" ReadOnly="True" SortExpression="tID" />
                    <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
                    <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
                    <asp:TemplateField HeaderText="picture" SortExpression="picture">
                        <EditItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("picture","~/Uploads/{0}") %>' Height="40" Width="40" />
                            <br />
                            Change : <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Bind("picture") %>' />
                            <asp:FileUpload ID="fuPictureUpdate" runat="server" />
 
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Bind("picture") %>' />
                            <asp:FileUpload ID="fuPicture" runat="server" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("picture","~/Uploads/{0}") %>' Height="40" Width="40" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="tsp" HeaderText="tsp" SortExpression="tsp" />
                    <asp:TemplateField HeaderText="admission" SortExpression="admission">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control admission" Text='<%# Bind("admission") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control admission" Text='<%# Bind("admission") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("admission") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="bID" SortExpression="bID">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="bName" DataValueField="bID" SelectedValue='<%# Bind("bID") %>'></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BatchDBCon %>" SelectCommand="SELECT DISTINCT [bID], [bName] FROM [Batch]"></asp:SqlDataSource>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="bName" DataValueField="bID" SelectedValue='<%# Bind("bID") %>'></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BatchDBCon %>" SelectCommand="SELECT DISTINCT [bID], [bName] FROM [Batch]"></asp:SqlDataSource>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("bID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="birthDate" SortExpression="birthDate">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control birthDate" Text='<%# Bind("birthDate") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control birthDate" Text='<%# Bind("birthDate") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("birthDate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                    <asp:BoundField DataField="contactNo" HeaderText="contactNo" SortExpression="contactNo" />
                    <asp:TemplateField HeaderText="email" SortExpression="email">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Text='<%# Bind("email") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Text='<%# Bind("email") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="dsTrainee" runat="server" ConnectionString="<%$ ConnectionStrings:Trainning_CenterD %>" DeleteCommand="DELETE FROM [Trainees] WHERE [tID] = @tID" InsertCommand="INSERT INTO [Trainees] ([tID], [firstName], [lastName], [picture], [tsp], [admission], [bID], [birthDate], [gender], [contactNo], [email]) VALUES (@tID, @firstName, @lastName, @picture, @tsp, @admission, @bID, @birthDate, @gender, @contactNo, @email)" SelectCommand="SELECT * FROM [Trainees]" UpdateCommand="UPDATE [Trainees] SET [firstName] = @firstName, [lastName] = @lastName, [picture] = @picture, [tsp] = @tsp, [admission] = @admission, [bID] = @bID, [birthDate] = @birthDate, [gender] = @gender, [contactNo] = @contactNo, [email] = @email WHERE [tID] = @tID">
                <DeleteParameters>
                    <asp:Parameter Name="tID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="tID" Type="Int32" />
                    <asp:Parameter Name="firstName" Type="String" />
                    <asp:Parameter Name="lastName" Type="String" />
                    <asp:Parameter Name="picture" Type="String" />
                    <asp:Parameter Name="tsp" Type="String" />
                    <asp:Parameter Name="admission" Type="DateTime" />
                    <asp:Parameter Name="bID" Type="Int32" />
                    <asp:Parameter Name="birthDate" Type="DateTime" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="contactNo" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="firstName" Type="String" />
                    <asp:Parameter Name="lastName" Type="String" />
                    <asp:Parameter Name="picture" Type="String" />
                    <asp:Parameter Name="tsp" Type="String" />
                    <asp:Parameter Name="admission" Type="DateTime" />
                    <asp:Parameter Name="bID" Type="Int32" />
                    <asp:Parameter Name="birthDate" Type="DateTime" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="contactNo" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="tID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <script src="../Scripts/bootstrap-datepicker.js"></script>
    <script>
        $(document).ready(() => {
            $(".admission").datepicker({ format: "yyyy-mm-dd" });
        });
    </script>
    <script>
         $(document).ready(() => {
            $(".birthDate").datepicker({ format: "yyyy-mm-dd" });
        });

    </script>

</asp:Content>
