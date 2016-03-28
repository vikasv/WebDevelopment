<%@ Page Language="C#" %>

<!DOCTYPE html>

<script language="C#" runat="server">
    protected void btn_Click(object sender, EventArgs e)
    {
        lblEmail.Text = emailBox.Text;
    } 
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RegExp Validation</title>
</head>
<body>
       <h1><center> E-mail address validation</center></h1>


       <form id="form1" runat="server">
    <div>
    <table>
    <tr>
        <td>
            Email
        </td>
        <td>
            <asp:TextBox ID="emailBox" runat="server"></asp:TextBox>
            <br />
            <asp:RegularExpressionValidator
                ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailBox"
                ForeColor="Red" Display="Dynamic" ErrorMessage="Please enter a valid email address"
                ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
            </asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="saveBtn" runat="server" Text="Save" OnClick="btn_Click"></asp:Button>
        </td>
    </tr>
    <tr>
        <td>
            You have entered: <asp:Label ID="lblEmail" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
</table> 
    </div>
    </form>

<h2>Description:</h2>
    <p>
       In this experiment I have used the RegularExpressionValidator control is used to ensure that an input value matches a specified pattern.
        Whenever the user inputs an email id it is validated against the pattern prescribed for an email. If it is validated then it
        gets saved.
    </p>
    

 
    <hr />
    
    

    <h3 class="black"> Source code</h3>
            <a href="../../fileview/Default.aspx?~/experiments/week8/exp-1.aspx" target="_blank"> ASPX code </a>
            <br />
   <hr />

    <h4><b> References:</b></h4>
    <a href="http://stackoverflow.com/questions/182542/email-address-validation-for-asp-net" target="_blank"> e-mail validation </a> <br />
    
</body>
</html>
