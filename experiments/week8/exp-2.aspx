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
    <h1><center>Retrieving RSS Feeds</center></h1>
    <hr />
        <form id="form1" runat="server">
    <div>
        <%
            string rssURL = "http://static.cricinfo.com/rss/livescores.xml";
            Response.Write("<font size=5><b>Cricinfo Site: " + rssURL + "</b></font><Br />");
            RequestRSSItem(rssURL);            
 %>
        </div>
    <hr />
    <h2>Description:</h2>
    <p>
        In this experiment I have implemented retrieving RSS feeds from external websites and displaying them here. 
    </p>

    <hr />

      <h3 class="black"> Source code</h3>
            <a href="../../fileview/Default.aspx?~/experiments/week8/exp-2.aspx" target="_blank"> ASPX code </a>
            <br />

    <hr />
    <h4><b> References:</b></h4>
    <a href="http://www.codeguru.com/csharp/article.php/c17651/Consuming-an-RSS-Feed-with-the-NET-Framework.htm" target="_blank"> Codeguru </a> <br />
    <a href="http://www.espncricinfo.com/ci/content/rss/feeds_rss_cricket.html" target="_blank"> ESPN Cricinfo RSS </a> <br />
    
    </form>
</body>
</html>