<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">   
    <div style="border-style: double; width: 881px; height: 563px; margin-left: 239px; margin-top: 32px;">
 
        <script type="text/javascript">
            function validation() {

                /////////////////////////// First Name //////////////////////////////////


                if (document.getElementById('<%=txtfname.ClientID%>').value == "") {
                    alert('Please enter your first name');
                    document.getElementById('<%=txtfname.ClientID%>').focus();
                    return false;
                }

                if (document.getElementById('<%=txtfname.ClientID%>').value != "") {
                    var regex = /^[a-zA-Z ]*$/;
                    if (!document.getElementById('<%=txtfname.ClientID%>').value.match(regex)) {

                        alert('Please enter only alphabets in first name');
                        document.getElementById('<%=txtfname.ClientID%>').focus();
                        return false;
                    }
                }
                if (document.getElementById('<%=txtfname.ClientID%>').value != "") {
                    str = document.getElementById('<%=txtfname.ClientID%>').value
                    if (str.length < 3) {
                        alert('Please Enter atlease 4 Character');
                        document.getElementById('<%=txtfname.ClientID%>').focus();
                        return false;
                    }
                }
                if (document.getElementById('<%=txtfname.ClientID%>').value != "") {
                    str = document.getElementById('<%=txtfname.ClientID%>').value
                    if (str.length > 50) {
                        alert('Name can contain maximum 50 characters')
                        document.getElementById('<%=txtfname.ClientID%>').focus();
                        return false;
                    }
                }

                /////////////////////////// Last Name //////////////////////////////////


                 if (document.getElementById('<%=txtlname.ClientID%>').value == "") {
                    alert('Please enter your last name');
                    document.getElementById('<%=txtlname.ClientID%>').focus();
                    return false;
                }

                if (document.getElementById('<%=txtlname.ClientID%>').value != "") {
                    var regex = /^[a-zA-Z ]*$/;
                    if (!document.getElementById('<%=txtlname.ClientID%>').value.match(regex)) {

                        alert('Please enter only alphabets in last name');
                        document.getElementById('<%=txtlname.ClientID%>').focus();
                        return false;
                    }
                }
                if (document.getElementById('<%=txtlname.ClientID%>').value != "") {
                    str = document.getElementById('<%=txtlname.ClientID%>').value
                    if (str.length < 3) {
                        alert('Please enter atleast 4 character');
                        document.getElementById('<%=txtlname.ClientID%>').focus();
                        return false;
                    }
                }
                if (document.getElementById('<%=txtlname.ClientID%>').value != "") {
                    str = document.getElementById('<%=txtlname.ClientID%>').value
                    if (str.length > 50) {
                        alert('Name can contain maximum 50 characters')
                        document.getElementById('<%=txtlname.ClientID%>').focus();
                        return false;
                    }
                }

                ////////////////////////////Username//////////////////////////////////

                if (document.getElementById('<%=Username.ClientID%>').value == "") {
                    alert('Please enter your Username');
                    document.getElementById('<%=Username.ClientID%>').focus();
                    return false;
                }

                if (document.getElementById('<%=Username.ClientID%>').value != "") {
                    var regex = /^[a-zA-Z0-9]*$/;
                    if (!document.getElementById('<%=Username.ClientID%>').value.match(regex)) {

                        alert('Please enter only alphabets in Username');
                        document.getElementById('<%=Username.ClientID%>').focus();
                        return false;
                    }
                }
                if (document.getElementById('<%=Username.ClientID%>').value != "") {
                    str = document.getElementById('<%=Username.ClientID%>').value
                    if (str.length < 3) {
                        alert('Please enter your full Username');
                        document.getElementById('<%=Username.ClientID%>').focus();
                        return false;
                    }
                }
                if (document.getElementById('<%=Username.ClientID%>').value != "") {
                    str = document.getElementById('<%=Username.ClientID%>').value
                    if (str.length > 50) {
                        alert('Name can contain maximum 50 characters')
                        document.getElementById('<%=Username.ClientID%>').focus();
                        return false;
                    }
                }
      
                ///////////////////////////////////// Email /////////////////////////////////////////////


                if (document.getElementById('<%=Email.ClientID%>').value == "") {
                    alert('Email Id cannot be Blank')
                    document.getElementById('<%=Email.ClientID%>').focus();
                    return false;
                }

                email1 = document.getElementById('<%=Email.ClientID%>').value
                var regex1 = /^[a-zA-Z0-9@._]*$/;
                if (!email1.match(regex1)) {
                    alert("Your email address is not in correct format!!!")
                    document.getElementById('<%=Email.ClientID%>').focus();
                    return false;
                }

                if (!email1.match(/^([a-zA-Z0-9])+([.a-zA-Z0-9_-])*@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-]+)+/)) {
                    alert("Your email address is not in correct format")
                    document.getElementById('<%=Email.ClientID%>').focus();
                    return false;
                }

                if (document.getElementById('<%=Email.ClientID%>').value != "") {
                    str = document.getElementById('<%=Email.ClientID%>').value
                    if (str.length > 50) {
                        alert('Email contain maximum 50 character')
                        document.getElementById('<%=Email.ClientID%>').focus();
                        return false
                    }
                }


                ///////////////////////////////////////// Address 1 /////////////////////////////


                if (document.getElementById('<%=Add1.ClientID%>').value == "") {
                    alert('Address field should not be blank !');
                    document.getElementById('<%=Add1.ClientID%>').focus();
                    return false;
                }
        
            if (document.getElementById('<%=Add1.ClientID%>').value != "") {
                    str = document.getElementById('<%=Add1.ClientID%>').value
                if (str.length < 3) {
                    alert('Please enter your full Address');
                    document.getElementById('<%=Add1.ClientID%>').focus();
                    return false;
                }
            }
            if (document.getElementById('<%=Add1.ClientID%>').value != "") {
                    str = document.getElementById('<%=Add1.ClientID%>').value
                if (str.length > 50) {
                    alert('Address can contain maximum 50 characters')
                    document.getElementById('<%=Add1.ClientID%>').focus();
                    return false;
                }
            }


                ///////////////////////////////////////// Address 2 /////////////////////////////


                if (document.getElementById('<%=Add2.ClientID%>').value == "") {
                    alert('Address field should not be blank !');
                    document.getElementById('<%=Add2.ClientID%>').focus();
                    return false;
                }

                if (document.getElementById('<%=Add2.ClientID%>').value != "") {
                    str = document.getElementById('<%=Add2.ClientID%>').value
                if (str.length < 3) {
                    alert('Please enter your full Address');
                    document.getElementById('<%=Add2.ClientID%>').focus();
                    return false;
                }
            }
            if (document.getElementById('<%=Add2.ClientID%>').value != "") {
                    str = document.getElementById('<%=Add2.ClientID%>').value
                if (str.length > 50) {
                    alert('Address can contain maximum 50 characters')
                    document.getElementById('<%=Add2.ClientID%>').focus();
                    return false;
                }
            }


                ////////////////////////////////////////////// Mobile //////////////////////////////////////////

                if (document.getElementById('<%=Mobile.ClientID%>').value == "") {
                    alert('Please enter your mobile number');
                    document.getElementById('<%=Mobile.ClientID%>').focus();
                return false;
            }

            if (document.getElementById('<%=Mobile.ClientID%>').value != "") {
                    str = document.getElementById('<%=Mobile.ClientID%>').value
                if (str.length < 10) {
                    alert('Mobile Number should contain min 10 digits')
                    document.getElementById('<%=Mobile.ClientID%>').focus();
                    return false
                }
            }
            if (document.getElementById('<%=Mobile.ClientID%>').value != "") {
                    str = document.getElementById('<%=Mobile.ClientID%>').value
                if (str.length > 12) {
                    alert('Mobile Number should contain max 12 digits')
                    document.getElementById('<%=Mobile.ClientID%>').focus();
                    return false
                }
            }

                //////////////////////////////Password/////////////////////////////////


                if (document.getElementById('<%=Password.ClientID%>').value == "") {
                    alert('Please Enter a password !')
                    document.getElementById('<%=Password.ClientID%>').focus();
                    return false;
                }

                var pwd = document.getElementById('<%=Password.ClientID%>').value
                var regex1 = /^(?=.*[0-9]+.*)(?=.*[a-zA-Z]+.*)[0-9a-zA-Z]{6,}$/
                if (!pwd.match(regex1)) {
                    alert("Password Should be Atleast one Charactor and number!")
                    document.getElementById('<%=Password.ClientID%>').focus();
                    return false;
                }

                if (document.getElementById('<%=Password.ClientID%>').value != "") {
                    str = document.getElementById('<%=Password.ClientID%>').value
                if (str.length > 50) {
                    alert('Password contain maximum 50 character')
                    document.getElementById('<%=Password.ClientID%>').focus();
                    return false
                }
            }


                ////////////////////////////// Retype-Password /////////////////////////////////


                if (document.getElementById('<%=Conformpwd.ClientID%>').value == "") {
                    alert('Please enter your name');
                    document.getElementById('<%=Conformpwd.ClientID%>').focus();
                    return false;
                }

               var confirmpwd = document.getElementById('<%=Conformpwd.ClientID%>').value
                var regex1 = /^(?=.*[0-9]+.*)(?=.*[a-zA-Z]+.*)[0-9a-zA-Z]{6,}$/
                if (!confirmpwd.match(regex1)) {
                    alert("Password Should be Atleast one Charactor and number!")
                    document.getElementById('<%=Conformpwd.ClientID%>').focus();
                    return false;
                }

                var Password = document.getElementById('<%=Password.ClientID%>').value
                var retypepwd = document.getElementById('<%=Conformpwd.ClientID%>').value
                if(Password != retypepwd)
                {
                    alert("Password do not match");
                    return false;
                }
                return true;
            }
        </script>


    <form style="height: 452px; margin:20px;" id="form" runat="server">
  <div class="form-row">

    <div class="form-group col-md-6">
   <label for="Name">First Name</label>
        <input type="text" id="txtfname" runat="server" class="form-control" />
    </div>

       <div class="form-group col-md-6">
   <label for="Name">Last Name</label>
        <input type="text" id="txtlname" runat="server" class="form-control" />
    </div>

         <div class="form-group col-md-6">
   <label for="Name">Username</label>
        <input type="text" id="Username" runat="server" class="form-control" />
    </div>
       <div class="form-group col-md-6">
      <label for="inputEmail4">Email</label>
      <input type="Text" class="form-control" id="Email" runat="server" placeholder="Email">
    </div>
       <div class="form-group col-md-6">
   <label for="Name">Address 1</label>
        <input type="text" id="Add1" runat="server" class="form-control" />
    </div>
           <div class="form-group col-md-6">
   <label for="Name">Address 2</label>
        <input type="text" id="Add2" runat="server" class="form-control" />
    </div>
           <div class="form-group col-md-6">
   <label for="Name">Mobile</label>
        <input type="text" id="Mobile" runat="server" class="form-control" />
    </div>
         <div class="form-group col-md-6" aria-orientation="vertical">
      <label for="inputPassword4">Password</label>
             <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                 <asp:ListItem Selected="True">Male</asp:ListItem>
                 <asp:ListItem>Female</asp:ListItem>
             </asp:RadioButtonList>
             </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Password</label>
      <input type="password" id="Password" runat="server" class="form-control" placeholder="Password">
    </div>
         <div class="form-group col-md-6">
      <label for="inputPassword4">Retype-pwd</label>
      <input type="password" id="Conformpwd" runat="server" class="form-control" placeholder="Password">
    </div>
  </div>
       
        <asp:Button ID="Button1" runat="server" Text="Submit"  CssClass="btn btn-primary" OnClientClick="return validation()" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="Reset"  OnClick="Button2_Click" />
</form>
        </div>
</asp:Content>

