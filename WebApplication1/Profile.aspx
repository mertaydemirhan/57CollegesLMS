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
             float:right;
        }
        #profilediv{
            margin:60px;
           
        }
        #asd {
           margin-left:1180px;
        }
       #Button1{
           position:absolute;
           margin-left:1370px;
           margin-top:50px;
           padding:10px 20px 10px 20px;
           border-radius:15px;
           width:100px;
           height:50px;
           
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
    <form runat="server">
        <ext:ResourceManager runat="server" />


        <ext:Toolbar runat="server" Fixed="True" >
            <Items>
                <ext:Button runat="server" Text="Home"   OnDirectClick="HomeClick" />
                <ext:Container runat="server" >
                  
                </ext:Container>
                <ext:Button runat="server" Text="Lessons" OnDirectClick="LessonClick">
                  
                    
                </ext:Button>
                <ext:Button runat="server" Text="My Exams" OnDirectClick="Unnamed_Click">
                </ext:Button>
                <ext:Button runat="server" Text="Profile" ID="asd" OnDirectClick="ProfileClick">
                  
                </ext:Button>
                  
            </Items>
        </ext:Toolbar>
        
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
    <ext:GridPanel
        ID="GridPanel2"
        runat="server"
        Title="Coming Exams"
        Width="700"
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
                            <ext:ModelField Name="Ene" Type="Date" DateFormat="M/d hh:mmtt" />
                        </Fields>
                    </ext:Model>
                </Model>
            </ext:Store>
        </Store>
        <ColumnModel>
            <Columns>
                <ext:Column runat="server" Text="Company" DataIndex="company" Flex="1" />
                <ext:Column runat="server" Text="Price" DataIndex="price">
                    <Renderer Format="UsMoney" />
                </ext:Column>
                <ext:Column runat="server" Text="Change" DataIndex="change">
                    <Renderer Fn="change" />
                </ext:Column>
                <ext:Column runat="server" Text="Change" DataIndex="pctChange">
                    <Renderer Fn="pctChange" />
                </ext:Column>
                <ext:DateColumn runat="server" Text="Last Updated" DataIndex="lastChange" Width="120" />
            </Columns>
        </ColumnModel>
        <SelectionModel>
            <ext:RowSelectionModel runat="server" />
        </SelectionModel>
       
    </ext:GridPanel>
      <ext:GridPanel
        ID="GridPanel1"
        runat="server"
        Title="Coming Classes"
        Width="700"
        Height="300">
        <Store>
            <ext:Store ID="Store1" runat="server">
                <Model>
                    <ext:Model runat="server">
                        <Fields>
                            <ext:ModelField Name="company" />
                            <ext:ModelField Name="price" Type="Float" />
                            <ext:ModelField Name="change" Type="Float" />
                            <ext:ModelField Name="pctChange" Type="Float" />
                            <ext:ModelField Name="lastChange" Type="Date" DateFormat="M/d hh:mmtt" />
                        </Fields>
                    </ext:Model>
                </Model>
            </ext:Store>
        </Store>
        <ColumnModel>
            <Columns>
                <ext:Column runat="server" Text="Company" DataIndex="company" Flex="1" />
                <ext:Column runat="server" Text="Price" DataIndex="price">
                    <Renderer Format="UsMoney" />
                </ext:Column>
                <ext:Column runat="server" Text="Change" DataIndex="change">
                    <Renderer Fn="change" />
                </ext:Column>
                <ext:Column runat="server" Text="Change" DataIndex="pctChange">
                    <Renderer Fn="pctChange" />
                </ext:Column>
                <ext:DateColumn runat="server" Text="Last Updated" DataIndex="lastChange" Width="120" />

            </Columns>
        </ColumnModel>
        <SelectionModel>
            <ext:RowSelectionModel runat="server" />
        </SelectionModel>
        
    </ext:GridPanel>
    <ext:Button runat="server" Text="Edit" ID="Button1" CtCls="Button1" >
                  
                </ext:Button>
</body>
</html>