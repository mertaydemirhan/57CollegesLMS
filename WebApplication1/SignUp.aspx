<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="StudentA.SignUp" %>

<script runat="server">
    private object TestData
    {
        get
        {
            return new object[]
            {
                    new object[] {"Adana"},
                    new object[] {"Adiyaman"},
                    new object[] {"Afyon"},
                    new object[] {"Agri"},
                    new object[] {"Aksaray"},
                    new object[] {"Amasya"},
                    new object[] {"Ankara"},
                    new object[] {"Antalya"},
                    new object[] {"Ardahan"},
                    new object[] {"Artvin"},
                    new object[] {"Aydin"},
                    new object[] {"Balikesir"},
                    new object[] {"Bartin"},
                    new object[] {"Batman"},
                    new object[] {"Bayburt"},
                    new object[] {"Bilecik"},
                    new object[] {"Bingol"},
                    new object[] {"Bitlis"},
                    new object[] {"Bolu"},
                    new object[] {"Burdur"},
                    new object[] {"Bursa"},
                    new object[] {"Canakkale"},
                    new object[] {"Cankiri"},
                    new object[] {"Corum"},
                    new object[] {"Denizli"},
                    new object[] {"Diyarbakir"},
                    new object[] {"Duzce"},
                    new object[] {"Edirne"},
                    new object[] {"Elazig"},
                    new object[] {"Erzincan"},
                    new object[] {"Erzurum"},
                    new object[] {"Eskisehir"},
                    new object[] {"Gaziantep"},
                    new object[] {"Giresun"},
                    new object[] {"Gumushane"},
                    new object[] {"Hakkari"},
                    new object[] {"Hatay"},
                    new object[] {"Igdir"},
                    new object[] {"Isparta"},
                    new object[] {"Istanbul"},
                    new object[] {"Izmir"},
                    new object[] {"Kahramanmaras"},
                    new object[] {"Karabuk"},
                    new object[] {"Karaman"},
                    new object[] {"Kars"},
                    new object[] {"Kastamonu"},
                    new object[] {"Kayseri"},
                    new object[] {"Kilis"},
                    new object[] {"Kirikkale"},
                    new object[] {"Kirklareli"},
                    new object[] {"Kirsehir"},
                    new object[] {"Kocaeli"},
                    new object[] {"Konya"},
                    new object[] {"Kutahya"},
                    new object[] {"Malatya"},
                    new object[] {"Manisa"},
                    new object[] {"Mardin"},
                    new object[] {"Mersin"},
                    new object[] {"Mugla"},
                    new object[] {"Mus"},
                    new object[] {"Nevsehir"},
                    new object[] {"Nigde"},
                    new object[] {"Ordu"},
                    new object[] {"Osmaniye"},
                    new object[] {"Rize"},
                    new object[] {"Sakarya"},
                    new object[] {"Samsun"},
                    new object[] {"Sanliurfa"},
                    new object[] {"Siirt"},
                    new object[] {"Sinop"},
                    new object[] {"Sirnak"},
                    new object[] {"Sivas"},
                    new object[] {"Tekirdag"},
                    new object[] {"Tokat"},
                    new object[] {"Trabzon"},
                    new object[] {"Tunceli"},
                    new object[] {"Usak"},
                    new object[] {"Van"},
                    new object[] {"Yalova"},
                    new object[] {"Yozgat"},
                    new object[] {"Zonguldak" },
            new object[] { "Alabama"},
            new object[] { "Alaska"},
            new object[] { "Arizona"},
            new object[] { "Arkansas"},
            new object[] { "California"},
            new object[] { "Colorado"},
            new object[] { "Connecticut"},
            new object[] { "Delaware"},
            new object[] { "District of Columbia"},
            new object[] { "Florida"},
            new object[] { "Georgia"},
            new object[] { "Hawaii"},
            new object[] { "Idaho"},
            new object[] { "Illinois"},
            new object[] { "Indiana"},
            new object[] { "Iowa"},
            new object[] { "Kansas"},
            new object[] { "Kentucky"},
            new object[] { "Louisiana"},
            new object[] { "Maine"},
            new object[] { "Maryland"},
            new object[] { "Massachusetts"},
            new object[] { "Michigan"},
            new object[] { "Minnesota"},
            new object[] { "Mississippi"},
            new object[] { "Missouri"},
            new object[] { "Montana"},
            new object[] { "Nebraska"},
            new object[] { "Nevada"},
            new object[] { "New Hampshire"},
            new object[] { "New Jersey"},
            new object[] { "New Mexico"},
            new object[] { "New York"},
            new object[] { "North Carolina"},
            new object[] { "North Dakota"},
            new object[] { "Ohio"},
            new object[] { "Oklahoma"},
            new object[] { "Oregon"},
            new object[] { "Pennsylvania"},
            new object[] { "Rhode Island"},
            new object[] { "South Carolina"},
            new object[] { "South Dakota"},
            new object[] { "Tennessee"},
            new object[] { "Texas"},
            new object[] { "Utah"},
            new object[] { "Vermont"},
            new object[] { "Virginia"},
            new object[] { "Washington"},
            new object[] { "West Virginia"},
            new object[] { "Wisconsin"},
            new object[] { "Wyoming"}
        };
        }
    }
    protected void Register(object sender, DirectEventArgs e)
    {
        var LocUser = new StudentA.Model.LocalUser();
        //e.Name["test"] = "";
        var req = (LocUser); //eExtraParams["user"], eExtraParams["pass"]
        if (req == null)
        {
            e.Success = false;
            e.ErrorMessage = "Invalid username or password";
        }
    }
</script>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Register Form - ExtNET Examples</title>
    <link href="/resources/css/examplescss" rel="stylesheet" />
</head>
<body>
    <ext:ResourceManager runat="server" />

    <ext:Viewport runat="server">
        <LayoutConfig>
            <ext:VBoxLayoutConfig Align="Center" Pack="Center" />
        </LayoutConfig>
        <Items>
            <ext:FormPanel
                runat="server"
                Width="400"
                Height="500"
                Frame="true"
                Title="Register"
                BodyPadding="13"
                AutoScroll="true">
                <FieldDefaults LabelAlign="Right" LabelWidth="115" MsgTarget="Side" />
                <Items>
                    <ext:FieldSet runat="server" Title="User Info" DefaultWidth="300">
                        <Items>
                            <ext:TextField
                                runat="server"
                                FieldLabel="Email"
                                Name="email"
                                Vtype="email" />

                            <ext:TextField
                                runat="server"
                                AllowBlank="false"
                                FieldLabel="Password"
                                Name="pass"
                                EmptyText="password"
                                InputType="password" />

                            <ext:TextField
                                runat="server"
                                AllowBlank="false"
                                FieldLabel="Verify"
                                Name="pass"
                                EmptyText="password"
                                InputType="password" />
                        </Items>
                    </ext:FieldSet>

                    <ext:FieldSet runat="server" Title="Contact Information" DefaultWidth="300">
                        <Items>
                            <ext:TextField
                                runat="server"
                                FieldLabel="First Name"
                                Name="first"
                                EmptyText="First Name" />

                            <ext:TextField
                                runat="server"
                                FieldLabel="Last Name"
                                Name="last"
                                EmptyText="Last Name" />

                            <ext:ComboBox
                                runat="server"
                                FieldLabel="State"
                                Name="state"
                                DisplayField="name"
                                ValueField="abbr"
                                QueryMode="Local"
                                TypeAhead="true"
                                EmptyText="Select a state">
                                <Store>
                                    <ext:Store runat="server" Data="<%# TestData %>" AutoDataBind="true">
                                        <Model>
                                            <ext:Model runat="server">
                                                <Fields>
                                                    <ext:ModelField Name="name" />
                                                </Fields>
                                            </ext:Model>
                                        </Model>

                                        <Reader>
                                            <ext:ArrayReader />
                                        </Reader>
                                    </ext:Store>
                                </Store>
                            </ext:ComboBox>

                            <ext:DateField
                                runat="server"
                                FieldLabel="Date of birth"
                                Name="dob"
                                AllowBlank="false"
                                MaxDate="<%# DateTime.Today %>"
                                AutoDataBind="true" />
                        </Items>
                    </ext:FieldSet>
                </Items>
                <Buttons>
                    <ext:Button
                        runat="server"
                        Text="Register"
                        Disabled="true"
                        FormBind="true"
                        OnEvent="Register()" />
                </Buttons>
            </ext:FormPanel>
        </Items>
    </ext:Viewport>
</body>
</html>

