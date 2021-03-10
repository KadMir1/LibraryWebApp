<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="LibraryWebApp.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">

       $(document).ready(function () {
         $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
          language: {
              url: '//cdn.datatables.net/plug-ins/1.10.22/i18n/Russian.json'
          } 
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
                                     <img width="100px" src="imgs/generaluser.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Ваш профиль</h4>
                           <span>Статус - </span>
                           <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Статус"></asp:Label>
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
                        <label>ФИО</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ФИО"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Дата рождения</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Номер телефона</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Номер телефона" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Область</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Выбрать" Value="Выбрать" />
                              <asp:ListItem Text="Москва" Value="Москва" />
                              <asp:ListItem Text="Санкт-Петербург" Value="Санкт-Петербург" />
                              <asp:ListItem Text="Амурская область" Value="Амурская область" />                              
                              <asp:ListItem Text="Архангельская область" Value="Архангельская область" />
                              <asp:ListItem Text="Астраханская область" Value="Астраханская область" />
                              <asp:ListItem Text="Белгородская область" Value="Белгородская область" />
                              <asp:ListItem Text="Волгоградская область" Value="Волгоградская область" />
                              <asp:ListItem Text="Ивановская область" Value="Ивановская область" />
                              <asp:ListItem Text="Иркутская область" Value="Иркутская область" />
                              <asp:ListItem Text="Кемеровская область" Value="Кемеровская область" />
                              <asp:ListItem Text="Краснодарский край" Value="Краснодарский край" />
                              <asp:ListItem Text="Красноярский край" Value="Красноярский край" />
                              <asp:ListItem Text="Ленинградская область" Value="Ленинградская область" />
                              <asp:ListItem Text="Ненецкий автономный округ" Value="Ненецкий автономный округ" />
                              <asp:ListItem Text="Новосибирская область" Value="Новосибирская область" />
                              <asp:ListItem Text="Приморский край" Value="Приморский край" />
                              <asp:ListItem Text="Ростовская область" Value="Ростовская область" />
                              <asp:ListItem Text="Рязанская область" Value="Рязанская область" />
                              <asp:ListItem Text="Самарская область" Value="Самарская область" />
                              <asp:ListItem Text="Сахалинская область" Value="Сахалинская область" />
                              <asp:ListItem Text="Ставропольский край" Value="Ставропольский край" />
                              <asp:ListItem Text="Татарстан" Value="Татарстан" />
                              <asp:ListItem Text="Тверская область" Value="Тверская область" />
                              <asp:ListItem Text="Удмуртия" Value="Удмуртия" />
                              <asp:ListItem Text="Хабаровский край" Value="Хабаровский край" />
                              <asp:ListItem Text="Ханты-Мансийский АО - Югра" Value="Ханты-Мансийский АО - Югра" />
                              <asp:ListItem Text="Челябинская область" Value="Челябинская область" />
                              <asp:ListItem Text="Чеченская республика" Value="Чеченская республика" />
                              <asp:ListItem Text="Ямало-Ненецкий АО" Value="Ямало-Ненецкий АО" />
                              <asp:ListItem Text="Ярославская область" Value="Ярославская область" />                          
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Город</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="Город"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Индекс</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Индекс" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Адрес</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Адрес" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                         
                  <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge badge-pill badge-info">Логин уже существует</span>
                        </center>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col-md-4">
                        <label>Логин</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="Логин" ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Старый пароль</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Старый пароль"  ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>

                    <div class="col-md-4">
                        <label>Новый пароль</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="Пароль" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div>


                  <div class="row">
                     <div class="col-8 mx-auto">
                         <center>
                           <div class="form-group">
                              <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Обновить" OnClick="Button1_Click" />
                           </div>
                        </center>
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Вернуться назад</a><br><br>
         </div>

            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                     <img width="100px" src="imgs/books1.png"/>
                        </center>
                     </div>
                  </div>

                        <div class="row">
                     <div class="col">
                        <center>
                           <h4>Ваши книги</h4>
                           
                           <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="Информация о ваших книгах"></asp:Label>
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
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound"></asp:GridView>
                            </div>
                        </div>

               </div>
            </div>


            </div>

      </div>
   </div>


</asp:Content>
