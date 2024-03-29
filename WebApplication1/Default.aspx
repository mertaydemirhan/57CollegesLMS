﻿<%@ Page Language="C#" %>
<script runat="server">
    public void Unnamed_Click(object sender, EventArgs e)
    {
          Response.Redirect("Exams.aspx");
    }
     public void HomeClick(object sender, EventArgs e)
    {
          Response.Redirect("Default.aspx");
    }
    public void ProfileClick(object sender, EventArgs e)
    {
          Response.Redirect("Profile.aspx");
    }
    public void LessonClick(object sender, EventArgs e)
    {
          Response.Redirect("Lessons.aspx");
    }
</script>


<!DOCTYPE html>

<html>
<head runat="server">
    <title>57Colleges</title>
    <link href="/resources/css/examples.css" rel="stylesheet" />

   <style>
        #outercont{
            width:1200px;
            margin-top:50px;
            margin-left:auto;
            margin-right:auto;
        }
        #GridPanel1{
   
            
                       border-radius:15px;

        }
        #GridPanel2{
                       border-radius:15px;

            
        }
        #gridbox{
            display:flex;
            justify-content:center;
            column-gap:8em;
        }
          .x-grid-row-over .x-grid-cell-inner {
            font-weight : bold;
        }
        .profilebox{
            display:flex;
        }
        .profilebox p{
            font-size:19px;
            padding-left:12px;
        }
        #Image1 {
             width:200px;
             float:right;
        }
        #profilediv{
            margin:60px;
           
        }
       
       #Button1{
          float:right;  
           margin-top:30px;
           margin-right:80px;
           padding:10px 20px 10px 20px;

           border-radius:15px;
           width:100px;
           height:50px;
           
       }
       .butonhome{
           background-color:cornflowerblue;
           border-radius:10px;
           
           margin:10px 5px 10px 5px;
       }
      /* .butonhome .x-btn-inner{
           color:black;
       }
        .butonhome1 .x-btn-inner{
           color:black;
       }*/
       .butonhome1{
           background-color:cornflowerblue;
           border-radius:10px;
           margin:10px 5px 10px 5px;
           margin-right:15px;

       }
       .tulbar{
           display:flex;
           background-color:lightgrey;
           justify-content:space-between;
       }
         .tulbar1{
           display:flex;
          margin-left:10px;
       }
    </style>
</head>
<body>
    <form runat="server">
        <ext:ResourceManager runat="server" />


       <div class="tulbar">
                    <div class="tulbar1">
                <ext:Button runat="server" Text="Home" Cls="butonhome"   OnDirectClick="HomeClick" />
            
                <ext:Button runat="server" Text="Lessons" Cls="butonhome" OnDirectClick="LessonClick">
                  
                    
                </ext:Button>
                <ext:Button runat="server" Text="My Exams" Cls="butonhome" OnDirectClick="Unnamed_Click">
                </ext:Button>
                        </div>
                <ext:Button runat="server" Text="Account" Cls="butonhome1" Dock="Right"   >
                  <Menu>
                        <ext:Menu runat="server" TagString="edit" Width="140">
                            <Items>
                                 <ext:Button runat="server" Text="My Profile" OnDirectClick="ProfileClick" height="35" Margin="5">
                </ext:Button>
                                
                            </Items>
                            <Items>
                                <ext:Button runat="server" Text="Notifications"  height="35" Margin="5">
                </ext:Button>
                            </Items>
                        </ext:Menu>
                    </Menu>
                </ext:Button>
                  </div>
    
        <div id="outercont">
    <h1>57Colleges</h1>

    

    <ext:Label runat="server" Text="LMS Demo" />



 
            </div>
    </form>
    
</body>
</html>