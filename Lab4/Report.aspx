<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="Lab4.Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>
            Report For <asp:Label ID="lblFirstName" runat="server"></asp:Label>
            <asp:Label ID="lblLastName" runat="server"></asp:Label>
        </h1>
    
    </div>

        <table class="auto-style1">
            <tr>
                <td>Total Assets</td>
                <td>
                    <asp:Label ID="lblTotalAsset" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Total Liabilities</td>
                <td>
                    <asp:Label ID="lblLiabilities" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Amount of Loan (Requested)</td>
                <td>
                    <asp:Label ID="lblLoanReq" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Interest Rate (Requested)</td>
                <td>
                    <asp:Label ID="lblIntRateReq" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Result</td>
                <td>
                    <asp:Label ID="lblResult" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btn_backHome" runat="server" OnClick="btn_backHome_Click" Text="Back to Home Page" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </form>
</body>
</html>
