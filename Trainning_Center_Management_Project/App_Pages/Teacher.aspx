<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="Trainning_Center_Management_Project.App_Pages.Teacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link href="../Content/bootstrap.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.6.0.js"></script>
    <link href="../Content/font-awesome.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">    
    <div class="row">
        <div class="col-md-12">
            <h2>Teachers List</h2>
            <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="dsTeacher" DataKeyNames="teacherID" >
                <Columns>
                    <asp:BoundField DataField="teacherID" HeaderText="TeacherID" />
                    <asp:BoundField DataField="firstName" HeaderText="FastName" />
                    <asp:BoundField DataField="lastName" HeaderText="LastName" />
                    <asp:BoundField DataField="picture" HeaderText="Picture" />
                    <asp:BoundField DataField="tsp" HeaderText="TSP" />
                    <asp:BoundField DataField="gender" HeaderText="Gender" />
                    <asp:BoundField DataField="contactNo" HeaderText="ContactNo" />
                    <asp:BoundField DataField="email" HeaderText="Email" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
              
            <asp:SqlDataSource ID="dsTeacher" runat="server" ConnectionString="<%$ ConnectionStrings:TeacherDbCon %>" DeleteCommand="DELETE FROM [Teacher] WHERE [teacherID] = @teacherID" InsertCommand="INSERT INTO [Teacher] ([teacherID], [firstName], [lastName], [picture], [tsp], [gender], [contactNo], [email]) VALUES (@teacherID, @firstName, @lastName, @picture, @tsp, @gender, @contactNo, @email)" SelectCommand="SELECT * FROM [Teacher]" UpdateCommand="UPDATE [Teacher] SET [firstName] = @firstName, [lastName] = @lastName, [picture] = @picture, [tsp] = @tsp, [gender] = @gender, [contactNo] = @contactNo, [email] = @email WHERE [teacherID] = @teacherID">
              
                <DeleteParameters>
                    <asp:Parameter Name="teacherID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="teacherID" Type="Int32" />
                    <asp:Parameter Name="firstName" Type="String" />
                    <asp:Parameter Name="lastName" Type="String" />
                    <asp:Parameter Name="picture" Type="String" />
                    <asp:Parameter Name="tsp" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="contactNo" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    
                    <asp:Parameter Name="firstName" Type="String" />
                    <asp:Parameter Name="lastName" Type="String" />
                    <asp:Parameter Name="picture" Type="String" />
                    <asp:Parameter Name="tsp" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="contactNo" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="teacherID" Type="Int32" />
                 
                </UpdateParameters>
             
            </asp:SqlDataSource>
        </div>
        <div class="col-md-4">
            <h1>Add New Teacher</h1>

            <asp:DetailsView ID="DetailsView1" CssClass="table table-bordered" runat="server" Height="50px" DefaultMode="Insert" AutoGenerateRows="False" DataKeyNames="teacherID" DataSourceID="dsTeacherInsert">
                <Fields>
                    <asp:BoundField DataField="teacherID" HeaderText="teacherID" ReadOnly="True" SortExpression="teacherID" />
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
                    <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                    <asp:BoundField DataField="contactNo" HeaderText="contactNo" SortExpression="contactNo" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="dsTeacherInsert" runat="server" ConnectionString="<%$ ConnectionStrings:TeacherInsertDBCON %>" DeleteCommand="DELETE FROM [Teacher] WHERE [teacherID] = @teacherID" InsertCommand="INSERT INTO [Teacher] ([teacherID], [firstName], [lastName], [picture], [tsp], [gender], [contactNo], [email]) VALUES (@teacherID, @firstName, @lastName, @picture, @tsp, @gender, @contactNo, @email)" SelectCommand="SELECT * FROM [Teacher]" UpdateCommand="UPDATE [Teacher] SET [firstName] = @firstName, [lastName] = @lastName, [picture] = @picture, [tsp] = @tsp, [gender] = @gender, [contactNo] = @contactNo, [email] = @email WHERE [teacherID] = @teacherID">
                <DeleteParameters>
                    <asp:Parameter Name="teacherID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="teacherID" Type="Int32" />
                    <asp:Parameter Name="firstName" Type="String" />
                    <asp:Parameter Name="lastName" Type="String" />
                    <asp:Parameter Name="picture" Type="String" />
                    <asp:Parameter Name="tsp" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="contactNo" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="firstName" Type="String" />
                    <asp:Parameter Name="lastName" Type="String" />
                    <asp:Parameter Name="picture" Type="String" />
                    <asp:Parameter Name="tsp" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="contactNo" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="teacherID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>


        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <script src="../Scripts/bootstrap-datepicker.js"></script>

</asp:Content>
