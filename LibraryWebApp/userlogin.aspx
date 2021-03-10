<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="LibraryWebApp.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="imgs/generaluser.png" />
                                </center>

                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Логин</h3>
                                </center>

                            </div>
                        </div>

                        <div class="row">
                            <div class="col">                              
                                <hr>                             
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">                              
                                <label>Логин ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Логин ID"></asp:TextBox>
                                </div>

                                <label>Пароль</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Пароль" TextMode="Password"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-lg btn-block" ID="Button1" runat="server" Text="Логин" OnClick="Button1_Click" />
                                </div>

                                <div class="form-group">
                                   <a href="usersignup.aspx"><input class="btn btn-info btn-lg btn-block" id="Button2" type="button" value="Зарегистрироваться" /></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="homepage.aspx"><< Вернуться назад</a><br><br>
            </div>
        </div>
    </div>


</asp:Content>
