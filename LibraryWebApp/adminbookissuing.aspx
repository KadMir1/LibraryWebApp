<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="LibraryWebApp.adminbookissuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">

        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
 
                <div class="card">
                    <div class="card-body">
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Выдача книг</h4>
                                    </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <img width="100px" src="imgs/books.png" />
                                       
                                    </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
 
                        <div class="row">   
                            
                            <div class="col-md-6">
                                <label>Клиент ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="ID клиента"></asp:TextBox>
 
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Книга ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Книга ID"></asp:TextBox>
                                        <asp:Button class="btn btn-dark" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>
                          </div>
                        
                        <div class="row">
                         <div class="col-md-6">
                                <label>Имя клиента</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Имя клиента" ReadOnly="true"></asp:TextBox>
 
                                </div>
                            </div>
                        
                        <div class="col-md-6">
                                <label>Название книги</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Название книги" ReadOnly="true"></asp:TextBox>
 
                                </div>
                            </div>
                         </div>

                      <div class="row">
                         <div class="col-md-6">
                                <label>Дата начало</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Дата начало" TextMode="Date"></asp:TextBox>
 
                                </div>
                            </div>
                        
                        <div class="col-md-6">
                                <label>Дата конец</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Дата конец" TextMode="Date"></asp:TextBox>
 
                                </div>
                            </div>
                         </div>


                   
                        <div class="row">
                            <div class="col-6">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-primary" runat="server" Text="Выдать" OnClick="Button2_Click" />
                            </div>
                           
                            <div class="col-6">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Вернуть" OnClick="Button4_Click" />
                            </div>
                        </div>
 
 
                    </div>
                </div>
 
                <a href="homepage.aspx"><< Вернуться назад</a><br>
                <br>
            </div>
 
            <div class="col-md-7">
 
                <div class="card">
                    <div class="card-body">
 
 
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Список выданных книг</h4>
                                    </center>
                            </div>
                        </div>
 
                       
 
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
 
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="ID Клиента" SortExpression="member_id" />
                                        <asp:BoundField DataField="member_name" HeaderText="Имя клиента" SortExpression="member_name" />
                                        <asp:BoundField DataField="book_id" HeaderText="ID Книги" SortExpression="book_id" />
                                        <asp:BoundField DataField="book_name" HeaderText="Название книги" SortExpression="book_name" />
                                        <asp:BoundField DataField="issue_date" HeaderText="Дата взятия" SortExpression="issue_date" />
                                        <asp:BoundField DataField="due_date" HeaderText="Срок сдачи" SortExpression="due_date" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
 
 
                    </div>
                </div>
 
 
            </div>
 
        </div>
    </div>



</asp:Content>
