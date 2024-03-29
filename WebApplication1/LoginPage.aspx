﻿<%@ Page Language="C#" %>

<script runat="server">
    protected void Button1_Click(object sender, DirectEventArgs e)
    {
        var LocUser = new StudentA.Repositories.LocalUserRepository();
        var req = LocUser.CheckUserPw(e.ExtraParams["user"], e.ExtraParams["pass"]);
        if (req == null)
        {
            e.Success = false;
            e.ErrorMessage = "Invalid username or password.";
        }
    }
    protected void SignUp_Click(object sender, DirectEventArgs e)
    {
        Response.Redirect("SignUp.aspx");
    }

</script>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Login - StudentA</title>
    <link href="/resources/css/examples.css" rel="stylesheet" />

    <script>
        // Invalidate the login fields with the given reason.
        var invalidateLogin = function (reason) {
            App.txtUsername.setValidation(reason);
            App.txtPassword.setValidation(reason);
            App.txtUsername.validate();
            App.txtPassword.validate();

            Ext.MessageBox.show({
                title: 'Authentication error',
                msg: reason,
                buttons: Ext.MessageBox.OK,
                animateTarget: 'Window1',
                icon: 'Error'
            });
        };

        var handleLogin = function () {
            var form = App.Window1.el.up().dom; // Window1 is a direct child of the form element.

            App.Window1.close();
            setForm(form, "Default.aspx", form.target);
            form.submit();
            restoreForm(form);
        };

        var orgFormAction, orgFormTarget,
            btn = null, iframe = null;

        // If we are on IE, we will create a button and click it (at once),
        // so autoComplete is triggered.
        var handleClientClick = function () {
            var form = App.Window1.el.up().dom; // Window1 is a direct child of the form element.

            if (Ext.isIE) {
                if (iframe == null) {
                    iframe = document.createElement("IFRAME");
                    iframe.name = "ie_login_flush";
                    iframe.style.display = "none";
                    form.appendChild(iframe);
                }

                if (btn == null) {
                    btn = document.createElement("BUTTON");
                    btn.type = "submit";
                    btn.id = "submitButton";
                    btn.style.display = "none";
                    form.appendChild(btn);
                }

                // On WebForms, we have to force set the form settings as we run or else we'll
                // break directEvent calls.
                setForm(form, "about:blank", "ie_login_flush");
                btn.click();
                restoreForm(form);
            }
        }

        var setForm = function (form, action, target) {
            // Back up original settings once per execution.
            if (typeof orgFormAction == 'undefined') {
                orgFormAction = form.action;
            }
            if (typeof orgFormTarget == 'undefined') {
                orgFormTarget = form.target;
            }

            form.action = action;
            form.target = target;
        };

        var restoreForm = function (form) {
            form.action = orgFormAction;
            form.target = orgFormTarget;
        };
    </script>
</head>
<body>
    <form runat="server">
        <ext:ResourceManager runat="server" />

        <ext:Window
            ID="Window1"
            runat="server"
            Closable="false"
            Resizable="false"
            Height="200"
            Icon="Lock"
            Title="Login"
            Draggable="true"
            Width="350"
            Modal="false"
            BodyPadding="5"
            Layout="Form">
            <Items>
                <ext:TextField
                    ID="txtUsername"
                    runat="server"
                    Name="username"
                    FieldLabel="Username"
                    AllowBlank="false"
                    BlankText="Your username is required." />
                <ext:TextField
                    ID="txtPassword"
                    runat="server"
                    Name="password"
                    InputType="Password"
                    FieldLabel="Password"
                    AllowBlank="false"
                    BlankText="Your password is required." />
            </Items>
            <Buttons>
                <ext:Button
                    ID="Button1"
                    runat="server"
                    Text="Login"
                    Icon="Accept"
                    FormBind="true"
                    Handler="handleClientClick">
                    <DirectEvents>
                        <Click
                            OnEvent="Button1_Click"
                            Success="handleLogin"
                            Failure="invalidateLogin(result.errorMessage);"
                            ShowWarningOnFailure="false">
                            <EventMask ShowMask="true" Msg="Verifying..." MinDelay="1000" />
                            <ExtraParams>
                                <ext:Parameter Name="user" Value="App.txtUsername.value" Mode="Raw" />
                                <ext:Parameter Name="pass" Value="App.txtPassword.value" Mode="Raw" />
                            </ExtraParams>
                        </Click>
                    </DirectEvents>
                </ext:Button>
                <ext:Button
                    ID="Button2"
                    runat="server"
                    Text="Sign Up"
                    Icon="Add"
                    FormBind="true"
                    Handler="handleClientClick">
                    <DirectEvents>
                        <Click
                            OnEvent="SignUp_Click"
                            Failure="invalidateLogin(result.errorMessage);"
                            ShowWarningOnFailure="false">
                            <EventMask ShowMask="true" Msg="Verifying..." MinDelay="1000" />
                        </Click>
                    </DirectEvents>
                </ext:Button>
            </Buttons>
        </ext:Window>
    </form>
</body>
</html>
