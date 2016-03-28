<%@ Page Language="C#" %>

<script runat="server">
    <%-- This demo page has no server side script --%>
</script>

<!DOCTYPE html>

<html lang="en">

<head>

<meta charset='utf-8' />

<title>Vikas's home page</title>

<style type="text/css">

    img {

        height:350px;
        width:500px;
    }

    ul.master_navigation
    {
        font-size: 100%;
        font-weight: bold;
        text-align: center;
        list-style: none;
        margin: 0.5em 0;
        padding: 0;
    }

    ul.master_navigation li
    {
        display: inline-block;
        padding: 0 0.5%;
    }

    a
    {
        color: darkblue;
        font-weight: bold;
        text-decoration: none;
    }

    a:visited
    {
        color: darkblue;
    }

    a:hover
    {
        color: green;
    }

    p
    {
        text-align: justify;
        font-size:13pt;
    }


</style>

<style type="text/css" media="screen">
    body {
        color:antiquewhite;
        width:1300px;
        max-width: 100%;
        margin-left: 50px;
        margin-right:50px;
        padding:20px;
    }

    .pad {
       padding:10px;
    }
</style>

</head>

<body style="background-image:url(bg.jpg);background-size:cover;background-attachment:fixed; text-align:center; width:90%; height:100%">

<div style="font-size:15pt;">

<hr />

<ul class="master_navigation">
    <li><a href="sitestatistics/" target="_blank">SiteStatistics</a></li>
    <li><a href="statistics/" target="_blank">Statistics</a></li>
    <li><a href="source/" target="_blank">Source</a></li>
    <li><a href="search/" target="_blank">Search</a></li>
    <li><a href="searchtree/" target="_blank">SearchTree</a></li>
    <li><a href="textview/" target="_blank">TextView</a></li>
    <li><a href="filelist.aspx" target="_blank">FileList</a></li>
    <li><a href="autofile.aspx" target="_blank">AutoFile</a></li>
    <li><a href="images/autoimage.aspx" target="_blank">Images</a></li>
    <li><a href="story/index.htm?../experiments/story.txt" target="_blank">Experiments</a></li>
    <li><a href="blog/" target="_blank">Blog</a></li>
    <li><a href="project/movieHomePage.aspx" target="_blank"> Project </a> </li>
    <li><a href="story/index.htm?../projectdoc/projectdocumentation/story.txt" target="_blank">Project Documentation</a></li>

</ul>

<hr />

</div>

<div style="padding-bottom:10px;font-size:20pt">

<h1 style="color:darkblue"> Welcome to my home page </h1>

</div>

<div style="float : left ; padding-left:30px ;padding-right:30px">

<img style="width:600px;height:400px" src ="vik.jpg" />

<h1> Vikas Vellanki </h1>

</div>



<div class="pad">

<form id="form1" runat="server">

<div>

<h4 style="font-size:16pt">
 Hi, I am a Computer Science graduate student at Northeastern University. This site is being developed as a part of the course Web Development under the guidance of Prof. Richard Rasala. 
    
</h4>

<h4 style="font-size:16pt">
    I have some basic knowledge of HTML5. I want to learn technologies like CSS, JQuery, ASP.Net, C# during the course.
</h4>


</div>


</form>

</div>

</body>
</html>
