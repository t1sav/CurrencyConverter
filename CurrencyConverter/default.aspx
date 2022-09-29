<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="CurrencyConverter._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <strong>Currency Converter<br />
        <br />
        </strong>
        <asp:TextBox ID="valueTextBox" runat="server" AutoPostBack="True" OnTextChanged="valueTextBox_TextChanged"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:RadioButton ID="euroRadio" runat="server" AutoPostBack="True" GroupName="fromGroup" OnCheckedChanged="euroRadio_CheckedChanged" Text="Euro" />
        <br />
        <asp:RadioButton ID="dollarRadio" runat="server" AutoPostBack="True" GroupName="fromGroup" OnCheckedChanged="dollarRadio_CheckedChanged" Text="US Dollar" />
        <br />
        <asp:RadioButton ID="randRadio" runat="server" AutoPostBack="True" GroupName="fromGroup" OnCheckedChanged="randRadio_CheckedChanged" Text="Rand" />
        <br />
        <asp:RadioButton ID="kundRadio" runat="server" AutoPostBack="True" GroupName="fromGroup" OnCheckedChanged="kundRadio_CheckedChanged" Text="Kuna" />
        <br />
        <br />
        <asp:Label ID="resultLabel" runat="server"></asp:Label>
        <br />
        <br />
    </form>
</body>
</html>
