using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryWebApp
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true; // кнопка Пользователь
                    LinkButton2.Visible = true; // кнопка Регистрация

                    LinkButton3.Visible = false; // кнопка Выйти
                    LinkButton7.Visible = false; // кнопка Приветствие

                    LinkButton6.Visible = true; // кнопка Администратор
                    LinkButton11.Visible = false; // кнопка Автор
                    LinkButton12.Visible = false; // кнопка Издатель
                    LinkButton8.Visible = false; // кнопка Инвентарь книг
                    LinkButton9.Visible = false; // кнопка Выдача книг
                    LinkButton10.Visible = false; // кнопка Клиенты
                }
                else if(Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; // кнопка Пользователь
                    LinkButton2.Visible = false; // кнопка Регистрация

                    LinkButton3.Visible = true; // кнопка Выйти
                    LinkButton7.Visible = true; // кнопка Приветствие
                    LinkButton7.Text = "Привет " + Session["username"].ToString();



                    LinkButton6.Visible = true; // кнопка Администратор
                    LinkButton11.Visible = false; // кнопка Автор
                    LinkButton12.Visible = false; // кнопка Издатель
                    LinkButton8.Visible = false; // кнопка Инвентарь книг
                    LinkButton9.Visible = false; // кнопка Выдача книг
                }

                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; // кнопка Пользователь
                    LinkButton2.Visible = false; // кнопка Регистрация

                    LinkButton3.Visible = true; // кнопка Выйти
                    LinkButton7.Visible = true; // кнопка Приветствие
                    LinkButton7.Text = "Привет Администратор ";



                    LinkButton6.Visible = false; // кнопка Администратор
                    LinkButton11.Visible = true; // кнопка Автор
                    LinkButton12.Visible = true; // кнопка Издатель
                    LinkButton8.Visible = true; // кнопка Инвентарь книг
                    LinkButton9.Visible = true; // кнопка Выдача книг
                    LinkButton10.Visible = true; // кнопка Клиенты
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookissuing.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermanagement.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbooks.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        //кнопка выйти
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true; // кнопка Пользователь
            LinkButton2.Visible = true; // кнопка Регистрация

            LinkButton3.Visible = false; // кнопка Выйти
            LinkButton7.Visible = false; // кнопка Приветствие

            LinkButton6.Visible = true; // кнопка Администратор
            LinkButton11.Visible = false; // кнопка Автор
            LinkButton12.Visible = false; // кнопка Издатель
            LinkButton8.Visible = false; // кнопка Инвентарь книг
            LinkButton9.Visible = false; // кнопка Выдача книг
            LinkButton10.Visible = false; // кнопка Клиенты
        }
        //показ профиля
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }
    }
}