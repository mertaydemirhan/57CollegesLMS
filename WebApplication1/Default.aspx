<%@ Page Language="C#" %>

<script runat="server">
    protected void Unnamed_Click(object sender, EventArgs e)
    {
          Response.Redirect("Exams.aspx");
    }
     protected void HomeClick(object sender, EventArgs e)
    {
          Response.Redirect("Default.aspx");
    }
         protected void ProfileClick(object sender, EventArgs e)
    {
          Response.Redirect("Profile.aspx");
    }

</script>


<!DOCTYPE html>

<html>
<head runat="server">
    <title>57Colleges</title>
    <link href="/resources/css/examples.css" rel="stylesheet" />

    <style>
        #asd {
           margin-left:1180px;
        }
       
    </style>
</head>
<body>
    <form runat="server">
        <ext:ResourceManager runat="server" />


        <ext:Toolbar runat="server" Fixed="True" >
            <Items>
                <ext:Button runat="server" Text="Home"   OnDirectClick="HomeClick" />
                <ext:Container runat="server" >
                  
                </ext:Container>
                <ext:Button runat="server" Text="Lessons" >
                  
                    
                </ext:Button>
                <ext:Button runat="server" Text="My Exams" OnDirectClick="Unnamed_Click">
                </ext:Button>
                <ext:Button runat="server" Text="Profile" ID="asd" OnDirectClick="ProfileClick">
                  
                </ext:Button>
                  
            </Items>
        </ext:Toolbar>
        <div>
    <h1>Label Variations</h1>

    <h2>Simple Label</h2>

    <ext:Label runat="server" Text="Hello World" />

    <h2>Label with Html</h2>

    <ext:Label runat="server" Html="<i>Label</i>" />



 
            </div>
    </form>
    
</body>
</html>