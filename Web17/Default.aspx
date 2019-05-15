<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web17.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    Имя:&nbsp;</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Укажите имя пользователя" ForeColor="Red">*</asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td>
                    Отчество:&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Укажите отчество пользователя" ForeColor="Red">*</asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td>
                    Email:&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Укажите email пользователя" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email задан неверно" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnSave" runat="server" Text="Сохранить" OnClick="btnSave_Click" />
                    <asp:Label ID="lblOutput" runat="server"></asp:Label>
                </td>                
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
