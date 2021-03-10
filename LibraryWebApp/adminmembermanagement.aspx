<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="LibraryWebApp.adminmembermanagement" %>
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
                                        <h4>Управление пользователями</h4>
                                    </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <img width="100px" src="imgs/generaluser.png" />
                                       
                                    </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
 
                        <div class="row">  
                            
                            <div class="col-md-3">
                                <label>Клиент ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Клиент ID"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>

                            
                            <div class="col-md-4">
                                <label>Имя клиента</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Имя клиента" ReadOnly="true"></asp:TextBox>
 
                                </div>
                            </div>

                            <div class="col-md-5">
                                <label>Статус аккаунта</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control mr-1" ID="TextBox7" runat="server" placeholder="Статус" ReadOnly="true"></asp:TextBox>

                                        <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>

                                        <asp:LinkButton class="btn btn-warning mr-1" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><i class="far fa-pause-circle"></i></asp:LinkButton>

                                        <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"><i class="far fa-times-circle"></i></asp:LinkButton>
                                                            
                                    </div>
 
                                </div>
                            </div>

                          

                          </div>
                        
                        <div class="row">

                            <div class="col-md-3">
                                <label>Дата рождения</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Дата рождения" ReadOnly="True"></asp:TextBox>
 
                                </div>
                            </div>

                         <div class="col-md-4">
                                <label>Номер телефона</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Номер телефона" ReadOnly="true"></asp:TextBox>
 
                                </div>
                            </div>
                        
                        <div class="col-md-5">
                                <label>Email</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email" ReadOnly="true"></asp:TextBox>
 
                                </div>
                            </div>
                         </div>

                        <div class="row">

                            <div class="col-md-4">
                                <label>Область</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Область" ReadOnly="true"></asp:TextBox>
 
                                </div>
                            </div>

                         <div class="col-md-4">
                                <label>Город</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Город" ReadOnly="true"></asp:TextBox>
 
                                </div>
                            </div>
                        
                        <div class="col-md-4">
                                <label>Индекс</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Индекс" ReadOnly="true"></asp:TextBox>
 
                                </div>
                            </div>
                         </div>

                        <div class="row">
                         
                        
                        <div class="col-12">
                                <label>Полный почтовый адрес</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Полный почтовый адрес" TextMode="MultiLine" Rows="2" ReadOnly="true"></asp:TextBox>
 
                                </div>
                            </div>
                         </div>


                   
                        <div class="row">
                            <div class="col-8 mx-auto">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Удалить клиента навсегда" OnClick="Button2_Click" />
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
                                        <h4>Список клиентов</h4>
                                    </center>
                            </div>
                        </div>
 
                       
 
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
 
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString2 %>" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="ID" SortExpression="member_id" />
                                        <asp:BoundField DataField="full_name" HeaderText="Имя" SortExpression="full_name" />
                                        <asp:BoundField DataField="account_status" HeaderText="Статус" SortExpression="account_status" />
                                        <asp:BoundField DataField="contact_no" HeaderText="Номер телефона" SortExpression="contact_no" />
                                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                        <asp:BoundField DataField="state" HeaderText="Область" SortExpression="state" />
                                        <asp:BoundField DataField="city" HeaderText="Город" SortExpression="city" />
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
