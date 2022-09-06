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
     protected void LessonClick(object sender, EventArgs e)
    {
          Response.Redirect("Lessons.aspx");
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
        .imagebox{
            float:right;
            text-align:center;
        }
        #asd {

        }
         #GridPanel1{
            margin-left:60px;
            margin-top:20px;
                       border-radius:15px;

        }
        #GridPanel2{
            margin-right:60px;
                       border-radius:15px;

            float:right;
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
        }
        #profilediv{
            margin:60px;
           
        }
        #asd {
           margin-left:1180px;
        }
        .Button1{
           margin-left:76em;
           margin-top:25em;
           
           padding:10px 20px 10px 20px;

           border-radius:15px;
           width:100px;
           height:50px;
        }
        #photochange{
            border-radius:15px;
        }
        .photochange{ 
            margin-top:320px;
            border-radius:15px;
            margin-left:85%;
        }
           .inputbox{
               margin:10px;
           }
       .edith1{
           width:135px;
       }
        #outercont{

            width:1200px;
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
                                <ext:Button runat="server" Text="Notifications"  height="35" Margin="5" >
                </ext:Button>
                            </Items>
                        </ext:Menu>
                    </Menu>
                </ext:Button>
                  </div>
         
    <div id="outercont">
         <div id="profilediv">
             <div class="imagebox"> 
          <ext:Image
                    ID="Image1"
                    runat="server"
                    
                    ImageUrl="https://upload.wikimedia.org/wikipedia/commons/7/70/User_icon_BLACK-01.png" >
                   
                </ext:Image>
                 <ext:Button runat="server" Text="Change Photo" ID="photochange"  height="35" Margin="5">
                </ext:Button>
             </div>
            
       
     <div>
                <div class="profilebox"><h1 class="edith1">Name :</h1> <ext:TextField runat="server" Cls="inputbox"></ext:TextField> </div>
                <div class="profilebox"><h1 class="edith1">Surname :</h1><ext:TextField runat="server" Cls="inputbox"></ext:TextField> </div>
    
                 <div class="profilebox"><h1 class="edith1">E Mail :</h1> <ext:TextField runat="server" Cls="inputbox"></ext:TextField> </div>
         </div>

            </div>
         <ext:Button runat="server" Text="Save All" ID="Button2" Cls="Button1"  >
                </ext:Button>
        </div>
    </form>
    
</body>
</html>