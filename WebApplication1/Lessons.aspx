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
        #asd {
           margin-left:1180px;
        }
        #GridPanel1{
            margin-left:150px;
            margin-top:20px;
        }
       
    </style>
</head>
<body>
    <form runat="server">
        <ext:ResourceManager runat="server" />


        <ext:Toolbar runat="server" Fixed="True" >
            <Items>
                <ext:Button runat="server" Text="Home" OnDirectClick="HomeClick"/>
                <ext:Container runat="server" >
                  
                </ext:Container>
                <ext:Button runat="server" Text="Lessons" OnDirectClick="LessonClick">
                  
                    
                </ext:Button>
                <ext:Button runat="server" Text="My Exams"  OnDirectClick="Unnamed_Click">
                </ext:Button>
                <ext:Button runat="server" Text="Profile" ID="asd" OnDirectClick="ProfileClick">
                    
                </ext:Button>
                  
            </Items>
        </ext:Toolbar>

         <ext:GridPanel
            ID="GridPanel1"
            runat="server"
            Title="Array Grid"
            Width="1200"
            >
            <Store>
                <ext:Store ID="Store1" runat="server" OnReadData="MyData_Refresh" PageSize="10">
                    <Model>
                        <ext:Model runat="server">
                            <Fields>
                                <ext:ModelField Name="company" />
                                <ext:ModelField Name="price" Type="Float" />
                                <ext:ModelField Name="change" Type="Float" />
                                <ext:ModelField Name="pctChange" Type="Float" />
                                <ext:ModelField Name="Enter" Type="Object" />
                            </Fields>
                        </ext:Model>
                    </Model>
                </ext:Store>
            </Store>
            <ColumnModel runat="server">
                <Columns>
                    <ext:RowNumbererColumn runat="server" Width="35" />
                    <ext:Column runat="server" Text="Company" DataIndex="company" Flex="1" />
                    <ext:Column runat="server" Text="Price" Width="75" DataIndex="price">
                    </ext:Column>
                    <ext:Column runat="server" Text="Change" Width="75" DataIndex="change">
                    </ext:Column>
                    <ext:Column runat="server" Text="Change" Width="75" DataIndex="pctChange">
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
                        <ext:Button runat="server" Text="Print" Icon="Printer" Handler="this.up('grid').print();" />
                        <ext:Button runat="server" Text="Print current grid page" Icon="Printer" Handler="this.up('grid').print({currentPageOnly : true});" />
                    </Items>
                </ext:Toolbar>
            </TopBar>
        </ext:GridPanel>
    </form>
    
</body>
</html>