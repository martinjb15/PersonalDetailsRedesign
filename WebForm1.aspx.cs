using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalDetailsRedesign
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if(DropDownList9.SelectedValue == "1" || DropDownList9.SelectedValue == "2" || DropDownList9.SelectedValue == "3")
                {
                    Button1.Visible = true;
                    LinkButton1.Visible = false;
                }
                if(DropDownList9.SelectedValue == "4" || DropDownList9.SelectedValue == "5")
                {
                    Button1.Visible = false;
                    LinkButton1.Visible = true;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        { 
            // email address and html message

            SmtpClient client = new SmtpClient("mailhost");
            MailAddress from = new MailAddress("noreplyPersonalDetails@ .ie", "Personal Details Form" );
            MailAddress to = new MailAddress("@ .ie");
            MailMessage message = new MailMessage(from, to);
            message.To.Add("@ .ie");
            message.To.Add("@ .ie");
            message.To.Add("@ .ie");
            //message.To.Add("@ .ie");
            //message.To.Add("@ .ie");
            message.Body =
            "<table><tr><td>" + Label17t.InnerText + "</td><td>" + DropDownList10t.Text.ToString() +
            " </td></tr><tr><td>" + Label1.InnerText + " </td><td>" + TextBox1.Text.ToString() +
            " </td></tr><tr><td>" + Label2.InnerText + " </td><td>" + TextBox2.Text.ToString() +
            " </td></tr><tr><td> " + Label3.InnerText + " </td><td> " + TextBox3.Text.ToString() +
            " </td></tr><tr><td> " + Label4.InnerText + " </td><td> " + TextBox4.Text.ToString() +
            "</td></tr><tr><td>" + Label5.InnerText + "</td><td>" + TextBox5.Text.ToString() +
            "</td></tr><tr><td >" + DropDownList1.Text + "</tr><tr><td>" 
            + Label6.InnerText + "</td><td>" + TextBox6.Text.ToString() + "</td></tr>"+
            "<tr><td>" + Label7.InnerText + "</td><td>" + TextBox7.Text.ToString() +
            "</td></tr><tr><td>" + Label8.InnerText + "</td><td>" + DropDownList2.Text +"</td></tr>"+
            "<tr><td>" + Label9.InnerText + "</td><td>" + TextBox8.Text.ToString() + "</td></tr>"
            +"<tr><td>&nbsp;</td><td>&nbsp;</td></tr>"+
             "<tr><td>" + "Emergency contact Info" + "</td><td>" + 
            "<tr><td>" + Label10.InnerText + "</td><td>" + TextBox9.Text.ToString() +
            "</td><tr><td>" + Label11.InnerText + "</td><td>" + TextBox10.Text.ToString() +
            "</td></tr><tr><td>" + Label12.InnerText + "</td ><td>" + DropDownList3.Text +
            "</td></tr><tr><td >" + Label13.InnerText + "</td><td> " + TextBox11.Text.ToString() +
            "</td></tr><tr><td>" + Label14.InnerText + "</td><td>" + TextBox12.Text.ToString() +
            "</td></tr><tr><td >" + Label15.InnerText + "</td><td>" + TextBox13.Text.ToString() +
            "</td></tr><tr><td >" + Label16.InnerText + "</td><td>" + TextBox14.Text.ToString() +
            "</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>" +
            "</td><td>&nbsp;</td></tr>"+
            "<tr><td> " + Label19.InnerText + "</td><td>" + TextBox17.Text.ToString() +
            "</td></tr><tr><td>" + Label20.InnerText + "</td><td>" + DropDownList4.Text +
            "</td></tr><tr><td >" + Label21.InnerText + "</td><td>" + TextBox18.Text.ToString() +
            "</td></tr><tr><td >" + Label17.InnerText + "</td><td>" + TextBox15.Text.ToString() +
            "</td></tr><tr><td >" + Label22.InnerText + "</td><td>" + TextBox19.Text.ToString() +
            "</td></tr><tr><td >" + Label23.InnerText + "</td><td>" + TextBox20.Text.ToString() +
            "</td></tr><tr><td>" + Label24.InnerText + "</td><td>" + TextBox21.Text.ToString() +
            "</td></tr><tr><td>" + Label25.InnerText + "</td><td>" + TextBox22.Text.ToString() +
            "</td></tr><tr><td>" + Label26.InnerText + "</td><td>" + DropDownList5.Text +
            "</td></tr><tr><td>" + Label29.InnerText + "</td><td>" + TextBox23.Text.ToString() +
            "</td></tr><tr><td>" + Label30.InnerText + "</td><td>" + TextBox24.Text.ToString() +
            "</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr>"+
            "<tr><td>" + Label31.InnerText + "</td><td>" + TextBox25.Text.ToString() +
            "</td></tr><tr><td> " + Label32.InnerText + " </td><td> " + TextBox26.Text +
            "</td></tr><tr><td>" + Label33.InnerText + "</td><td>" + TextBox27.Text.ToString() +
            "</td></tr><tr><td> " + Label34.InnerText + " </td><td> " + TextBox28.Text.ToString() +
            "</td></tr><tr><td> " + Label37.InnerText + " </td><td> " + DropDownList6.Text +
            "</td></tr><tr><td> " + Label38.InnerText + " </td><td> " + DropDownList7.Text +
            "</td></tr><tr><td> " + Label39.InnerText + " </td><td> " + DropDownList8.Text +
            "</td></tr><tr><td> " + "Statement "  + " </td><td> " +legalStatement.InnerText +
         
            "</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr></table> ";

            //for uploading files and attaching them to emails

            message.IsBodyHtml = true;
            message.Subject = "Personal Details Form";
            if (FileUpload1.HasFile)
            {
                string strFileName =
                System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
                Attachment attachFile =
                new Attachment(FileUpload1.PostedFile.InputStream, strFileName);
                message.Attachments.Add(attachFile);
            }
            client.Send(message);

            Server.Transfer("HtmlPage1.html");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            SmtpClient client = new SmtpClient("mailhost");
            MailAddress from = new MailAddress("noreplyPersonalDetails@ .ie", "Personal Details Form");
            MailAddress to = new MailAddress("@ .ie");
            MailMessage message = new MailMessage(from, to);
            message.To.Add("@ .ie");
            message.To.Add("@ .ie");
            message.To.Add("@ .ie");
            //message.To.Add("@ .ie");
            message.Body = "<table><tr><td>" + Label1.InnerText + "</td><td>" + TextBox1.Text.ToString() +
            " </td></tr><tr><td>" + Label2.InnerText + " </td><td>" + TextBox2.Text.ToString() +
            " </td></tr><tr><td> " + Label3.InnerText + " </td><td> " + TextBox3.Text.ToString() +
            " </td></tr><tr><td> " + Label4.InnerText + " </td><td> " + TextBox4.Text.ToString() +
            "</td></tr><tr><td>" + Label5.InnerText + "</td><td>" + TextBox5.Text.ToString() +
            "</td></tr><tr><td >" + DropDownList1.Text + "</tr><tr><td>"
            + Label6.InnerText + "</td><td>" + TextBox6.Text.ToString() + "</td></tr>" +
            "<tr><td>" + Label7.InnerText + "</td><td>" + TextBox7.Text.ToString() +
            "</td></tr><tr><td>" + Label8.InnerText + "</td><td>" + DropDownList2.Text + "</td></tr>" +
            "<tr><td>" + Label9.InnerText + "</td><td>" + TextBox8.Text.ToString() + "</td></tr>"
            + "<tr><td>&nbsp;</td><td>&nbsp;</td></tr>" +
             "<tr><td>" + "Emergency contact Info" + "</td><td>" +
            "<tr><td>" + Label10.InnerText + "</td><td>" + TextBox9.Text.ToString() +
            "</td><tr><td>" + Label11.InnerText + "</td><td>" + TextBox10.Text.ToString() +
            "</td></tr><tr><td>" + Label12.InnerText + "</td ><td>" + DropDownList3.Text +
            "</td></tr><tr><td >" + Label13.InnerText + "</td><td> " + TextBox11.Text.ToString() +
            "</td></tr><tr><td>" + Label14.InnerText + "</td><td>" + TextBox12.Text.ToString() +
            "</td></tr><tr><td >" + Label15.InnerText + "</td><td>" + TextBox13.Text.ToString() +
            "</td></tr><tr><td >" + Label16.InnerText + "</td><td>" + TextBox14.Text.ToString() +
            "</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>" +
            "</td><td>&nbsp;</td></tr>" +
            "<tr><td> " + Label19.InnerText + "</td><td>" + TextBox17.Text.ToString() +
            "</td></tr><tr><td>" + Label20.InnerText + "</td><td>" + DropDownList4.Text +
            "</td></tr><tr><td >" + Label21.InnerText + "</td><td>" + TextBox18.Text.ToString() +
            "</td></tr><tr><td >" + Label22.InnerText + "</td><td>" + TextBox19.Text.ToString() +
            "</td></tr><tr><td >" + Label23.InnerText + "</td><td>" + TextBox20.Text.ToString() +
            "</td></tr><tr><td>" + Label24.InnerText + "</td><td>" + TextBox21.Text.ToString() +
            "</td></tr><tr><td>" + Label25.InnerText + "</td><td>" + TextBox22.Text.ToString() +
            "</td></tr><tr><td>" + Label26.InnerText + "</td><td>" + DropDownList5.Text +
            "</td></tr><tr><td>" + Label29.InnerText + "</td><td>" + TextBox23.Text.ToString() +
            "</td></tr><tr><td>" + Label30.InnerText + "</td><td>" + TextBox24.Text.ToString() +
            "</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr>" +
            "<tr><td>" + Label31.InnerText + "</td><td>" + TextBox25.Text.ToString() +
            "</td></tr><tr><td> " + Label32.InnerText + " </td><td> " + TextBox26.Text +
            "</td></tr><tr><td>" + Label33.InnerText + "</td><td>" + TextBox27.Text.ToString() +
            "</td></tr><tr><td> " + Label34.InnerText + " </td><td> " + TextBox28.Text.ToString() +
            "</td></tr><tr><td> " + Label37.InnerText + " </td><td> " + DropDownList6.Text +
            "</td></tr><tr><td> " + Label38.InnerText + " </td><td> " + DropDownList7.Text +
            "</td></tr><tr><td> " + Label39.InnerText + " </td><td> " + DropDownList8.Text +
            "</td></tr><tr><td> " + "Statement " + " </td><td> " + legalStatement.InnerText +

            "</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr></table> ";

            //for uploading files and attaching them to emails

            message.IsBodyHtml = true;
            message.Subject = "Personal Details Form";
            if (FileUpload1.HasFile)
            {
                string strFileName =
                System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
                Attachment attachFile =
                new Attachment(FileUpload1.PostedFile.InputStream, strFileName);
                message.Attachments.Add(attachFile);
            }
            client.Send(message);

            Server.Transfer("HtmlPage1.html");
        }
    }
}