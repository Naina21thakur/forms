<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="form2.WebForm1" %>


          

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Styled Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .form-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
        }
        .form-container h1 {
            color: #333;
            font-size: 24px;
            margin-bottom: 25px;
            text-align: center;
        }
        .form-container label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }
        .form-container input[type="text"],
        .form-container input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .form-container input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .form-container input[type="submit"]:hover {
            background-color: #218838;
        }
    </style>
    <script type="text/javascript">
        function validateForm() {
            var name = document.getElementById('<%= txtName.ClientID %>').value;
            var roll = document.getElementById('<%= TxtRoll.ClientID %>').value;
            var mobile = document.getElementById('<%= TxtMobile.ClientID %>').value;
            var email = document.getElementById('<%= TxtEmail.ClientID %>').value;

            if (name == "") {
                alert("Name must be filled out");
                return false;
            }
            if (roll == "") {
                alert("Roll No must be filled out");
                return false;
            }
            if (mobile == "" || !/^\d{10}$/.test(mobile)) {
                alert("Please enter a valid 10-digit Mobile No");
                return false;
            }
            if (email == "" || !/^\S+@\S+\.\S+$/.test(email)) {
                alert("Please enter a valid Email Id");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <div class="form-container">
        <form id="form1" runat="server" onsubmit="return validateForm()">
            <h1>Registration Form</h1>
            <label for="<%= txtName.ClientID %>">Name:</label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            
            <label for="<%= TxtRoll.ClientID %>">Roll No:</label>
            <asp:TextBox ID="TxtRoll" runat="server"></asp:TextBox>
            
            <label for="<%= TxtMobile.ClientID %>">Mobile No:</label>
            <asp:TextBox ID="TxtMobile" runat="server"></asp:TextBox>
            
            <label for="<%= TxtEmail.ClientID %>">Email Id:</label>
            <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
            
            <asp:Button ID="btnSubmit" OnClick="btnSubmit_Click" runat="server" Text="Submit" CssClass="submit-button" />
        </form>
    </div>
</body>
</html>
