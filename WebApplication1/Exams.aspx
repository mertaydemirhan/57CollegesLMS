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
     protected void Page_Load(object sender, EventArgs e)
    {
        if (!X.IsAjaxRequest)
        {
            this.BindData();
        }
    }
     protected void Unnamed_Click2(object sender, EventArgs e)
    {
          Response.Redirect("Exam.aspx");
    }
      protected void MyData_Refresh(object sender, StoreReadDataEventArgs e)
    {
        this.BindData();
    }
      private void BindData()
    {
        Store store = this.GridPanel1.GetStore();

        store.DataSource = this.Data;
        store.DataBind();
    }
   private object[] Data
    {
        get
        {
            DateTime now = DateTime.Now;

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
    
    <script>
        var template = '<span style="color:{0};">{1}</span>';

        var change = function (value) {
            return Ext.String.format(template, (value > 0) ? "green" : "red", value);
        };

        var pctChange = function (value) {
            return Ext.String.format(template, (value > 0) ? "green" : "red", value + "%");
        };
    </script>
    <ext:XScript runat="server">
        <script type="text/javascript">
            var handlePageSizeSelect = function (item, records) {
                var curPageSize = #{ GridPanel1 }.store.pageSize,
                    wantedPageSize = parseInt(item.getValue(), 10);

                if (wantedPageSize != curPageSize) {
                    #{ GridPanel1 }.store.pageSize = wantedPageSize;
                    #{ GridPanel1 }.
                    store.reload();
                }
            }
        </script>
    </ext:XScript>
    <style>
       
        #outercont{
           margin-top:50px;
            width:1200px;
            margin-left:auto;
            margin-right:auto;
        }
        #GridPanel1{
   
            
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
                                <ext:Button runat="server" Text="Notifications"  height="35" Margin="5" >
                </ext:Button>
                            </Items>
                        </ext:Menu>
                    </Menu>
                </ext:Button>
                  </div>
        <div id="outercont">
         <ext:GridPanel
            ID="GridPanel1"
            runat="server"
            Title="Exams"
            Width="1200"
            >
            <Store>
                <ext:Store ID="Store1" runat="server" OnReadData="MyData_Refresh" PageSize="10">
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
            <ColumnModel runat="server">
                <Columns>
                    <ext:Column runat="server" Text="Exam Name" DataIndex="name" Flex="1" />
                    <ext:Column runat="server" Text="Start Date" Width="175" DataIndex="startdate">
                    </ext:Column>
                    <ext:Column runat="server" Text="End Date" Width="175" DataIndex="enddate">
                    </ext:Column>
                    <ext:Column runat="server" Text="Time" Width="175" DataIndex="time">
                    </ext:Column>
                    <ext:ComponentColumn runat="server" Text="Enter" DataIndex="Enter">
                        <Component><ext:Button runat="server" Text="Enter Exam">  </ext:Button></Component>
                    </ext:ComponentColumn>
                </Columns>
            </ColumnModel>
            <SelectionModel>
                <ext:RowSelectionModel runat="server" Mode="Multi" />
            </SelectionModel>
            <View>
                <ext:GridView runat="server" StripeRows="true" />
            </View>
            <BottomBar>
                 <ext:PagingToolbar runat="server">
                    <Items>
                        <ext:Label runat="server" Text="Page size:" />
                        <ext:ToolbarSpacer runat="server" Width="10" />
                        <ext:ComboBox runat="server" Width="80">
                            <Items>
                                <ext:ListItem Text="1" />
                                <ext:ListItem Text="2" />
                                <ext:ListItem Text="10" />
                                <ext:ListItem Text="20" />
                            </Items>
                            <SelectedItems>
                                <ext:ListItem Value="10" />
                            </SelectedItems>
                            <Listeners>
                                <Select Fn="handlePageSizeSelect" />
                            </Listeners>
                        </ext:ComboBox>
                    </Items>
                    <Plugins>
                        <ext:ProgressBarPager runat="server" />
                    </Plugins>
                </ext:PagingToolbar>
            </BottomBar>
            <TopBar>
                <ext:Toolbar runat="server">
                    <Items>
                        <ext:Button runat="server" Text="Print" Handler="this.up('grid').print();" />
                        <ext:Button runat="server" Text="Print current page"  Handler="this.up('grid').print({currentPageOnly : true});" />
                    </Items>
                </ext:Toolbar>
            </TopBar>
        </ext:GridPanel>
            </div>
    </form>
    
</body>
</html>