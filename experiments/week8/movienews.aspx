<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
public void RequestRSSItem(string rssURL)
    {
        System.Net.WebRequest myRequest = System.Net.WebRequest.Create(rssURL);
        System.Net.WebResponse myResponse = myRequest.GetResponse();
 
        System.IO.Stream rssStream = myResponse.GetResponseStream();
        System.Xml.XmlDocument rssDoc = new System.Xml.XmlDocument();
        rssDoc.Load(rssStream);
 
        System.Xml.XmlNodeList rssItems = rssDoc.SelectNodes("rss/channel/item");
 
        string title = "";
        string link = "";
        string description = "";
 
        for (int i = 0; i < rssItems.Count; i++)
        {
            System.Xml.XmlNode rssDetail;
 
            rssDetail = rssItems.Item(i).SelectSingleNode("title");
            if (rssDetail != null)
            {
                title = rssDetail.InnerText;
            }
            else
            {
                title = "";
            }
 
            rssDetail = rssItems.Item(i).SelectSingleNode("link");
            if (rssDetail != null)
            {
                link = rssDetail.InnerText;
            }
            else
            {
                link = "";
            }
 
            rssDetail = rssItems.Item(i).SelectSingleNode("description");
            if (rssDetail != null)
            {
                description = rssDetail.InnerText;
            }
            else
            {
                description = "";
            }
 
            Response.Write("<p><b><a href='" + link + "' target='new'>" + title + "</a></b><br/>");
            Response.Write(description + "</p>");
        }
    }


</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RSS FEED DISPLAY</title>
</head>
<body>

    <form id="form1" runat="server">

    <div>
        <%
            string rssURL = "http://www.fandango.com/rss/movie-news.rss";
            Response.Write("<font size=5><b>Cricinfo Site: " + rssURL + "</b></font><Br />");
            RequestRSSItem(rssURL);            
        %>
        </div>

    
    </form>
</body>
</html>
