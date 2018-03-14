<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab4.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Loan_calculator_101056010</title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }

        .auto-style2 {
            width: 653px;
        }

        .auto-style3 {
            height: 23px;
            width: 126px;
        }

        .auto-style4 {
            width: 126px;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            width: 312px;
        }
        .auto-style7 {
            width: 244px;
        }
        .auto-style8 {
            width: 312px;
            height: 23px;
        }
        .auto-style9 {
            width: 244px;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="Image/loan.jpg" width="500px" height="300px" />
            <h2>Loan Calculator</h2>
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">First Name</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>

                </td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtFirstName" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Last Name</td>
                <td>
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtLastName" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Area Code</td>
                <td>
                    <asp:TextBox ID="txtAreaCode" runat="server"></asp:TextBox>

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtAreaCode" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1_zip" runat="server" ErrorMessage="Enter a valid zip code" OnServerValidate="CustomValidator1_zip_ServerValidate" ControlToValidate="txtAreaCode" Display="Dynamic" ForeColor="#CC3300"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Phone Number</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>

                </td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtPhone" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter a valid Phone Number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ControlToValidate="txtPhone" ForeColor="#CC3300"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                
                    </td>
                <td></td>
            </tr>
        </table>
         <h2>
             Financial Info
         </h2>

        <table class="auto-style5">
            <tr>
                <td class="auto-style6">Gross Income</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtGrossIncome" runat="server"></asp:TextBox>

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtGrossIncome" Display="Dynamic" ErrorMessage="Field cannot be empty" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtGrossIncome" Display="Dynamic" ErrorMessage="Value must be greater than 0" ForeColor="#CC3300" Operator="GreaterThan" Type="Double" ValueToCompare="0"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Values of Assets (House, Car, Boats etc)</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtValueAsset" runat="server"></asp:TextBox>

                </td>
                <td class="auto-style1">
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtValueAsset" Display="Dynamic" ErrorMessage="Value cannot be negetive" ForeColor="#CC3300" Operator="GreaterThanEqual" Type="Double" ValueToCompare="0"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Investments</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtInvestment" runat="server"></asp:TextBox>

                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txtInvestment" Display="Dynamic" ErrorMessage="Value cannot be negetive" ForeColor="#CC3300" Operator="GreaterThanEqual" Type="Double" ValueToCompare="0"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Others Sources of Income</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtSourceInc" runat="server"></asp:TextBox>

                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="txtSourceInc" Display="Dynamic" ErrorMessage="Value cannot be negetive" ForeColor="#CC3300" Operator="GreaterThanEqual" Type="Double" ValueToCompare="0"></asp:CompareValidator>
                </td>
            </tr>
        </table>
        <h2>
            Loan Info
        </h2>

        <table class="auto-style5">
            <tr>
                <td class="auto-style1">Total liabilities of Applicants
                    <br />
                    (Credit cards and other loans)</td>
                <td class="auto-style1">Amount of Loan</td>
                <td class="auto-style1">Intereste rate Requested</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtLiabilities" runat="server"></asp:TextBox>

                </td>
                <td>
                    <asp:TextBox ID="txtLoanAmt" runat="server"></asp:TextBox>

                </td>
                <td>
                    <asp:TextBox ID="txtIntRateReq" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:CompareValidator ID="CompareValidator5" runat="server" ControlToValidate="txtLiabilities" Display="Dynamic" ErrorMessage="Value must be possitive" ForeColor="#CC3300" Operator="GreaterThanEqual" Type="Double" ValueToCompare="0"></asp:CompareValidator>
                </td>
                <td>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtLoanAmt" ErrorMessage="Value must be between 1000 and 1,000,000 " ForeColor="#CC3300" MaximumValue="1000000" MinimumValue="1000" Type="Double"></asp:RangeValidator>
                </td>
                <td>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtIntRateReq" ErrorMessage="Value must be between 2 and 20" ForeColor="#CC3300" MaximumValue="20" MinimumValue="2" Type="Double"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td><asp:Button ID="Button1" runat="server" Text="Calculate" OnClick="Button1_Click1" BackColor="#339966" Width="56%" /></td>
            </tr>
        </table>
        <p>
            &nbsp;</p>

    </form>
   
</body>
</html>
