<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="Trainning_Center_Management_Project.App_Pages.Courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.6.0.js"></script>
    <link href="../Content/font-awesome.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <h1>This is Course Page</h1>
    <div class="row">
        <div class="col-md-8">
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" 
                DataSourceID="dsCourses" 
                DataKeyNames="CourseId"              
                CssClass="table table-bordered"
                Font-Bold="True"
                DefaultMode="Insert" AutoGenerateRows="False">
                <Fields>
                    <asp:BoundField DataField="CourseId" HeaderText="Course Id" />
                    <asp:TemplateField HeaderText="Course Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CourseName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Text='<%# Bind("CourseName") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("CourseName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Course Fees">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("CourseFees") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("CourseFees") %>' CssClass="form-control"></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("CourseFees") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Start Date">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("StartDate") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control StartDate" Text='<%# Bind("StartDate") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("StartDate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="End Date">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("EndDate") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control EndDate" Text='<%# Bind("EndDate") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("EndDate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <InsertItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" CssClass="btn btn-primary" Text="Insert"><i class="fa fa-save"></i></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CssClass="btn btn-light" CommandName="Cancel" Text="Cancel"><i class="fa fa-refresh"></i></asp:LinkButton>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="dsCourses" runat="server" ConnectionString="<%$ ConnectionStrings:CoursesDBCon %>" DeleteCommand="DELETE FROM [Courses] WHERE [CourseId] = @CourseId" InsertCommand="INSERT INTO [Courses] ([CourseId], [CourseName], [CourseFees], [StartDate], [EndDate]) VALUES (@CourseId, @CourseName, @CourseFees, @StartDate, @EndDate)" SelectCommand="SELECT * FROM [Courses]" UpdateCommand="UPDATE [Courses] SET [CourseName] = @CourseName, [CourseFees] = @CourseFees, [StartDate] = @StartDate, [EndDate] = @EndDate WHERE [CourseId] = @CourseId">
                <DeleteParameters>
                    <asp:Parameter Name="CourseId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CourseId" Type="Int32" />
                    <asp:Parameter Name="CourseName" Type="String" />
                    <asp:Parameter Name="CourseFees" Type="Decimal" />
                    <asp:Parameter DbType="Date" Name="StartDate" />
                    <asp:Parameter DbType="Date" Name="EndDate" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CourseName" Type="String" />
                    <asp:Parameter Name="CourseFees" Type="Decimal" />
                    <asp:Parameter DbType="Date" Name="StartDate" />
                    <asp:Parameter DbType="Date" Name="EndDate" />
                    <asp:Parameter Name="CourseId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <script src="../Scripts/bootstrap-datepicker.js"></script>
    <script>
        $(document).ready(() => {
            $(".StartDate").datepicker({ format: "yyyy-mm-dd" });
        });
    </script>
    <script>
         $(document).ready(() => {
            $(".EndDate").datepicker({ format: "yyyy-mm-dd" });
        });

    </script>

</asp:Content>
