<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="LibraryWebApp.adminbookinventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">

        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }

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
                                        <h4>Управление книгами</h4>
                                    </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <img id="imgview" height="150px" width="100px" src="book_inventory/books1.png"/>
                                       
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
                                <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload1" runat="server" />
                            </div>
                        </div>
 
 
                        <div class="row">  
                            
                            <div class="col-md-4">
                                <label>Книга ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Книга ID"></asp:TextBox>
                                        <asp:Button class="form-control btn btn-primary" ID="Button4" runat="server" Text="Go" OnClick="Button4_Click" />
                                    </div>
                                </div>
                            </div>

                            
                            <div class="col-md-8">
                                <label>Название книги</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Название книги"></asp:TextBox>
 
                                </div>
                            </div>

                           
                          </div>
                        
                        <div class="row">

                            <div class="col-md-4">
                                <label>Язык</label>
                                <div class="form-group">
                                    <asp:DropDownList сlass="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Русский" Value="Русский" />
                                        <asp:ListItem Text="Английский" Value="Английский" />
                                        <asp:ListItem Text="Немецкий" Value="Немецкий" />
                                        <asp:ListItem Text="Французский" Value="Французский" />
                                    </asp:DropDownList>
 
                                </div>
                            
                                <label>Имя издателя</label>
                                <div class="form-group">
                                    <asp:DropDownList сlass="form-control" ID="DropDownList2" runat="server">
                                        <asp:ListItem Text="Издатель 1" Value="Издатель 1" />
                                        <asp:ListItem Text="Издатель 2" Value="Издатель 2" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                        <div class="col-md-4">
                                <label>Имя автора</label>
                                <div class="form-group">
                                    <asp:DropDownList сlass="form-control" ID="DropDownList3" runat="server">
                                        <asp:ListItem Text="A1" Value="a1" />
                                        <asp:ListItem Text="a2" Value="a2" />
                                       
                                    </asp:DropDownList>
 
                                </div>
                            
                                <label>Дата публикации</label>
                                <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Дата" TextMode="Date"></asp:TextBox>   
            
                                </div>



                            </div>
                        

                        <div class="col-md-4">
                                <label>Жанр</label>
                                <div class="form-group">
                                    <asp:ListBox сlass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">                                      
                                        <asp:ListItem Text="Экшн" Value="Экшн" />
                                        <asp:ListItem Text="Приключения" Value="Приключения" />
                                        <asp:ListItem Text="Комедии" Value="Комедии" />
                                        <asp:ListItem Text="Саморазвитие" Value="Саморазвитие" />
                                        <asp:ListItem Text="Мотивация" Value="Мотивация" />
                                        <asp:ListItem Text="Здоровье" Value="Здоровье" />
                                        <asp:ListItem Text="Криминал" Value="Криминал" />
                                        <asp:ListItem Text="Драма" Value="Драма" />
                                        <asp:ListItem Text="Фантастика" Value="Фантастика" />
                                        <asp:ListItem Text="Ужасы" Value="Ужасы" />
                                        <asp:ListItem Text="Поэзия" Value="Поэзия" />
                                        <asp:ListItem Text="Личностный рост" Value="Личностный рост" />
                                        <asp:ListItem Text="Романтика" Value="Романтика" />
                                        <asp:ListItem Text="Наука" Value="Наука" />
                                        <asp:ListItem Text="Триллер" Value="Триллер" />
                                        <asp:ListItem Text="Искусство" Value="Искусство" />
                                        <asp:ListItem Text="Биография" Value="Биография" />
                                        <asp:ListItem Text="Энциклопедия" Value="Энциклопедия" />
                                        <asp:ListItem Text="История" Value="История" />
                                        <asp:ListItem Text="Математика" Value="Математика" />
                                        <asp:ListItem Text="Учебник" Value="Учебник" />
                                        <asp:ListItem Text="Программирование" Value="Программирование" />
                                        <asp:ListItem Text="Путешествия" Value="Путешествия" />
                                    </asp:ListBox>
                                </div>
                            </div>
                         </div>

                        <div class="row">

                            <div class="col-md-4">
                                <label>Издание</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Издание"></asp:TextBox>
 
                                </div>
                            </div>

                         <div class="col-md-4">
                                <label>Цена</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Цена" TextMode="Number"></asp:TextBox>
 
                                </div>
                            </div>
                        
                        <div class="col-md-4">
                                <label>Страниц</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Страниц" TextMode="Number"></asp:TextBox>
 
                                </div>
                            </div>
                         </div>

                        <div class="row">

                            <div class="col-md-4">
                                <label>Всего</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Всего" TextMode="Number"></asp:TextBox>
 
                                </div>
                            </div>

                         <div class="col-md-4">
                                <label>В наличии</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="В наличии" TextMode="Number" ReadOnly="true"></asp:TextBox>
 
                                </div>
                            </div>
                        
                        <div class="col-md-4">
                                <label>Изданные книги</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Изданные книги" TextMode="Number" ReadOnly="true"></asp:TextBox>
 
                                </div>
                            </div>
                         </div>

                        <div class="row">
                         
                        
                        <div class="col-12">
                                <label>Описание книги</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Описание книги" TextMode="MultiLine" Rows="2"></asp:TextBox>
 
                                </div>
                            </div>
                         </div>


                   
                        <div class="row">
                            <div class="col-4">
                                <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Добавить" OnClick="Button1_Click" />
                            </div>

                            <div class="col-4">
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Обновить" OnClick="Button3_Click" />
                            </div>

                            <div class="col-4">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Удалить" OnClick="Button2_Click" />
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
                                        <h4>Список книг</h4>
                                    </center>
                            </div>
                        </div>
 
                       
 
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
 
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="book_id" HeaderText="ID" SortExpression="book_id" >
                                        
                                        <ControlStyle Font-Bold="False" />
                                        <ItemStyle Font-Bold="True" />
                                        </asp:BoundField>
                                        
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                               <div  class="container-fluid">
                                                   <div class="row">
                                                       <div class="col-lg-10">
                                                           <div class="row">
                                                               <div class="col-lg-12">
                                                                   <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                               </div>    
                                                           </div>

                                                           <div class="row">
                                                               <div class="col-lg-12">

                                                                   Автор -
                                                                   <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("author_name") %>'></asp:Label>
                                                                   &nbsp;| Жанр -
                                                                   <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                                   &nbsp;| Язык -
                                                                   <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>

                                                               </div>    
                                                           </div>

                                                           <div class="row">
                                                               <div class="col-lg-12">

                                                                   Издатель -
                                                                   <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                                   &nbsp;| Дата публикации -
                                                                   <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("publish_date") %>'></asp:Label>
                                                                   &nbsp;| Страниц -
                                                                   <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("no_of_pages") %>'></asp:Label>
                                                                   &nbsp;| Издание -
                                                                   <asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>

                                                               </div>    
                                                           </div>

                                                           <div class="row">
                                                               <div class="col-lg-12">

                                                                   Цена -
                                                                   <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("book_cost") %>'></asp:Label>
                                                                   &nbsp;| В наличие -
                                                                   <asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                                   &nbsp;| Всего -
                                                                   <asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>

                                                               </div>    
                                                           </div>

                                                           <div class="row">
                                                               <div class="col-lg-12">

                                                                   Описание -
                                                                   <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("book_description") %>'></asp:Label>

                                                               </div>    
                                                           </div>

                                                       </div>
                                                       <div class="col-lg-2">
                                                           <asp:Image class="img-fluid" ID="Image1" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />
                                                       </div>
                                                   </div>
                                               </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        
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
