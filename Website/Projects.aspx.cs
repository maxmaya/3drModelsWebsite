using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Projects : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //C:\\WS\\2pure\\3drModels\\3drModelsWebsite\\Website\\assets\\img\\projects
            //var directoryList = GetDirectories(@"C:\WS\2pure\3drModels\3drModelsWebsite\Website\assets\img\projects", "*", null, 0);
            var directoryList = GetDirectories(Server.MapPath("~/assets/img/projects"), "*", null, 0);
            SetDropdownItems(directoryList);
            rptProject.DataSource = directoryList;
            rptProject.DataBind();

        }
    }
    private void SetDropdownItems(List<Project> projects)
    {
        ddlProjectFilter.Items.Insert(0, new ListItem("All", "0"));
        for (int i = 0; i < projects.Count; i++)
        {
            ddlProjectFilter.Items.Insert(i + 1, new ListItem(projects[i].projectName, projects[i].projectIndex));
        }

    }

    public static List<Project> GetDirectories(string path, string searchPattern = "*", string[] nameFilter = null, SearchOption searchOption = SearchOption.TopDirectoryOnly)
    {

        List<Project> projectList = null;

        if (searchOption == SearchOption.TopDirectoryOnly)
        {
            List<string> directories = new List<string>();

            if (nameFilter != null)
            {
                for (int i = 0; i < nameFilter.Length; i++)
                {
                    var tempDirectory = Directory.GetDirectories(path, nameFilter[i] + "*").ToList();

                    for (int j = 0; j < tempDirectory.Count; j++)
                    {
                        directories.Add(tempDirectory[j]);
                    }

                }

            }
            else
            {
                directories = Directory.GetDirectories(path, searchPattern).ToList();
            }

            if (directories.Count > 0)
            {
                projectList = new List<Project>();
                for (int i = 0; i < directories.Count; i++)
                {
                    var project = new Project();
                    project.projectName = directories[i].Remove(0, path.Length + 3);
                    var tempFullDirName = directories[i].Remove(0, path.Length).Replace("\\", "");
                    project.projectIndex = tempFullDirName.Substring(0, tempFullDirName.IndexOf(" "));
                    project.projectPath = directories[i];

                    string[] filter = { "jpg" };

                    var allImages = GetFilesFrom(directories[i], filter, true).Where(s => !s.Contains("thumb")).ToList();

                    if (allImages.Count > 0)
                    {
                        project.projectImage = new Uri(allImages[0]).AbsolutePath.Remove(0, allImages[0].IndexOf("assets") - 1);
                    }
                    else
                    {
                        project.projectImage = "/assets/img/img_square_1.jpg";
                    }

                    List<Image> imagesList = new List<Image>();

                    for (int j = 1; j < allImages.Count; j++)
                    {
          
                        var image = new Image();
                        image.imagePath = new Uri(allImages[j]).AbsolutePath.Remove(0, allImages[j].IndexOf("assets") - 1);
                        image.imageGroup = i;

                        image.imageGroupName = project.projectName;
                        imagesList.Add(image);
                    }
                  

                    project.imageList = imagesList;
                    projectList.Add(project);
                }
            }

        }
        var orderedList = projectList.OrderBy(x => int.Parse(x.projectIndex)).ToList();
        return orderedList;
    }

    private static List<string> GetDirectories(string path, string searchPattern)
    {
        try
        {
            return Directory.GetDirectories(path, searchPattern).ToList();
        }
        catch (UnauthorizedAccessException)
        {
            return new List<string>();
        }
    }

    public static List<string> GetFilesFrom(String searchFolder, String[] filters, bool isRecursive)
    {
        List<String> filesFound = new List<String>();
        var searchOption = isRecursive ? SearchOption.AllDirectories : SearchOption.TopDirectoryOnly;
        foreach (var filter in filters)
        {
            filesFound.AddRange(Directory.GetFiles(searchFolder, String.Format("*.{0}", filter), searchOption));
        }
        return filesFound;
    }

    protected void rptProject_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        RepeaterItem item = e.Item;

        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            Repeater Repeater2 = (Repeater)(e.Item.FindControl("rptProjectImages"));

            Project projectItem = item.DataItem as Project;
            //Need to assign the Data in datatable
            Repeater2.DataSource = projectItem.imageList;
            Repeater2.DataBind();
        }
    }


    protected void ddlProjectFilter_SelectedIndexChanged(object sender, EventArgs e)
    {
        var selectedValue = ddlProjectFilter.SelectedValue.ToString();
        string[] filter = new string[4];
        switch (selectedValue)
        {
            case "0":
                //condition
                filter = null;
                break;

            default:
                filter = new string[] { selectedValue }; ;
                break;
        }

        var directoryList = GetDirectories(Server.MapPath("~/assets/img/projects"), "*", filter, 0);

        rptProject.DataSource = directoryList;

        rptProject.DataBind();
    }

    public class Project
    {
        public string projectName { get; set; }

        public string projectPath { get; set; }

        public string projectIndex { get; set; }

        public string projectImage { get; set; }

        public List<Image> imageList { get; set; }
    }

    public class Image
    {
        public string imageName { get; set; }

        public string imagePath { get; set; }

        public int imageGroup { get; set; }

        public string imageGroupName { get; set; }
    }

}