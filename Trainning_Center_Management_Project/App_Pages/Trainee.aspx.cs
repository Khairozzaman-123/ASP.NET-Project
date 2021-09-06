using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trainning_Center_Management_Project.App_Pages
{
    public partial class Trainee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            Debug.WriteLine("Inserting....");
            FileUpload fu = DetailsView1.FindControl("fuPicture") as FileUpload;
            if (fu.HasFiles)
            {
                if (fu.PostedFile.ContentLength > 0)
                {
                    string f = Guid.NewGuid() + Path.GetExtension(fu.PostedFile.FileName);
                    string fileName = Server.MapPath("~/Uploads/") + f;
                    fu.PostedFile.SaveAs(fileName);
                    e.Values["Picture"] = f;
                }
                else
                {
                    e.Cancel = false;
                }
            }
            else
            {
                e.Cancel = true;
            }

        }

        protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {
            FileUpload fu = DetailsView1.FindControl("fuPictureUpdate") as FileUpload;

            if (fu.HasFiles)
            {
                if (fu.PostedFile.ContentLength > 0)
                {
                    string f = Guid.NewGuid() + Path.GetExtension(fu.PostedFile.FileName);
                    string fileName = Server.MapPath("~/Uploads/") + f;
                    fu.PostedFile.SaveAs(fileName);
                    e.NewValues["Picture"] = f;
                }
                else
                {
                    e.NewValues["Picture"] = e.OldValues["Picture"];
                }
            }
            else
            {
                e.NewValues["Picture"] = e.OldValues["Picture"];
            }
        }
    }
}