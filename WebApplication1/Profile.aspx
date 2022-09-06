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
       protected void EditClick(object sender, EventArgs e)
    {
          Response.Redirect("EditStudent.aspx");
    }
</script>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!X.IsAjaxRequest)
        {
            this.Store1.DataSource = this.Data;
        }
    }
    
    private object[] Data
    {
        get
        {
            return new object[]
            {
             
            };
        }
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
     <script>
        var template = '<span style="color:{0};">{1}</span>';

        var change = function (value) {
            return Ext.String.format(template, (value > 0) ? "green" : "red", value);
        };

        var pctChange = function (value) {
            return Ext.String.format(template, (value > 0) ? "green" : "red", value + "%");
        };
     </script>
</head>
<body>

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

    <form runat="server">
        <ext:ResourceManager runat="server" />


        
        
    <div id="profilediv">
          <ext:Image
                    ID="Image1"
                    runat="server"
                    
                    ImageUrl="https://upload.wikimedia.org/wikipedia/commons/7/70/User_icon_BLACK-01.png" >
                   
                </ext:Image>
        
     <div>
                <div class="profilebox"><h1>Name :</h1> <p>Hakan</p> </div>
                <div class="profilebox"><h1>Surname :</h1> <p>Hakan</p> </div>
    
                 <div class="profilebox"><h1>E Mail :</h1> <p>Hakan</p> </div>
         </div>
            </div>
        
    </form>
    <div id="gridbox">
    <ext:GridPanel
        ID="GridPanel2"
        runat="server"
        Title="Incoming Exams"
        Width="500"
        Height="300">
        <Store>
            <ext:Store ID="Store2" runat="server">
                <Model>
                    <ext:Model runat="server">
                        <Fields>
                            <ext:ModelField Name="Exam Name" />
                            <ext:ModelField Name="Start Date" Type="Date" />
                            <ext:ModelField Name="End Date" Type="Date" />
                            <ext:ModelField Name="Time" Type="Float" />
                                                            <ext:ModelField Name="Enter" Type="Object" />

                        </Fields>
                    </ext:Model>
                </Model>
            </ext:Store>
        </Store>
        <ColumnModel>
           <Columns>
                    <ext:Column runat="server" Text="Exam Name" DataIndex="name"  />
                    <ext:Column runat="server" Text="Start Date"  DataIndex="startdate">
                    </ext:Column>
                    <ext:Column runat="server" Text="End Date"  DataIndex="enddate">
                    </ext:Column>
                    <ext:Column runat="server" Text="Time"  DataIndex="time">
                    </ext:Column>
                    <ext:ComponentColumn runat="server" Text="Enter" DataIndex="Enter">
                        <Component><ext:Button runat="server" Text="Enter Exam">  </ext:Button></Component>
                    </ext:ComponentColumn>
                </Columns>
        </ColumnModel>
        <SelectionModel>
            <ext:RowSelectionModel runat="server" />
        </SelectionModel>
       
    </ext:GridPanel>
      <ext:GridPanel
        ID="GridPanel1"
        runat="server"
        Title="Incoming Lessons"
                  Width="500"

        Height="300">
        <Store>
            <ext:Store ID="Store1" runat="server">
                <Model>
                    <ext:Model runat="server">
                       <Fields>
                               <ext:ModelField Name="Lesson Name" />
                                <ext:ModelField Name="Start Date" Type="Date" />
                                <ext:ModelField Name="End Date" Type="Date" />
                                <ext:ModelField Name="Time" Type="Float" />
                                <ext:ModelField Name="Class" Type="String" />
                            </Fields>
                    </ext:Model>
                </Model>
            </ext:Store>
        </Store>
        <ColumnModel>
            <Columns>
                      <ext:Column runat="server" Text="Lesson Name" DataIndex="name"  />
                    <ext:Column runat="server" Text="Start Date"  DataIndex="startdate">
                    </ext:Column>
                    <ext:Column runat="server" Text="End Date"  DataIndex="enddate">
                    </ext:Column>
                    <ext:Column runat="server" Text="Time" DataIndex="time">
                    </ext:Column>
                    <ext:Column runat="server" Text="Class"  DataIndex="time">
                    </ext:Column>
                </Columns>
        </ColumnModel>
        <SelectionModel>
            <ext:RowSelectionModel runat="server" />
        </SelectionModel>
        
    </ext:GridPanel>
    </div>
    <ext:Button runat="server" Text="Edit" ID="Button1" CtCls="Button1" OnDirectClick="EditClick" >
                  
                </ext:Button>
        </div>
</body>
</html>