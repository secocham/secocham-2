<%@ Page Language="C#" %>

<!DOCTYPE html>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        int i;
        if (!IsPostBack)
        {
            for (i = 1960; i <= System.DateTime.Now.Year; i++)
                this.DropDownList1.Items.Add(i.ToString());
            for (i = 1; i <= 12; i++)
                this.DropDownList2.Items.Add(i.ToString());
            for (i = 1; i <= 31; i++)
                this.DropDownList3.Items.Add(i.ToString());

        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>验证控件的使用</title>
    <style type="text/css">
        .style1
        {
            width: 70%;
            height: 374px;
        }
        .style2
        {
        }
        .style3
        {
            width: 109px;
        }
        .style4
        {
            width: 109px;
            height: 28px;
        }
        .style5
        {
            height: 28px;
        }
        .style6
        {
            width: 109px;
            height: 13px;
        }
        .style7
        {
            height: 13px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1" style="font-size: 14px; border: 1px ridge #008080">
            <tr>
                <td align="center" bgcolor="#003300" class="style2" colspan="2" 
                    style="color: #FFFFFF; font-size: 20px">
                    用户注册</td>
            </tr>
            <tr>
                <td class="style4">
                    用户名称：</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="125px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="用户名称不能为空" ValidationGroup="1"></asp:RequiredFieldValidator>
&nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    用户密码：</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="22px" Width="125px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="用户密码不能为空" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    确认密码：</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="22px" Width="125px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="再次密码不能为空  " ValidationGroup="1"></asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" 
                        ControlToValidate="TextBox3" ErrorMessage="两次密码不一致" ValidationGroup="1"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    姓名：</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="22px" Width="125px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="姓名不能为空" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    性别：</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="22px" 
                        RepeatDirection="Horizontal" Width="109px">
                        <asp:ListItem Selected="True">男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    身高：</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Height="22px" Width="125px"></asp:TextBox>
&nbsp;厘米<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="用户名称不能为空" ValidationGroup="1"></asp:RequiredFieldValidator>
&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox5" 
                        ErrorMessage="身高必须在0-300之间" MaximumValue="300" MinimumValue="0" Type="Integer" 
                        ValidationGroup="1"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    出生年月：</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                    年<asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                    月<asp:DropDownList ID="DropDownList3" runat="server">
                    </asp:DropDownList>
                    日 
                </td>
            </tr>
            <tr>
                <td bgcolor="#003300" class="style6">
                </td>
                <td bgcolor="#003300" class="style7">
                </td>
            </tr>
            <tr>
                <td class="style3">
                    电话号码：</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="号码不能为空" ValidationGroup="2"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="格式不正确" 
                        ValidationExpression="(\d{3}-\d{8})|(\d{4}-\d{7})" ValidationGroup="2"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    身份证号：</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="TextBox8" ErrorMessage="格式不正确" 
                        ValidationExpression="\d{18}|\d{17}X" ValidationGroup="2"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    电子邮件：</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="电子邮件不能为空" ValidationGroup="2"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="格式不正确" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ValidationGroup="2"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    爱好：</td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="4" 
                        RepeatDirection="Horizontal" Width="311px">
                        <asp:ListItem>汽车</asp:ListItem>
                        <asp:ListItem>音乐</asp:ListItem>
                        <asp:ListItem>摄影</asp:ListItem>
                        <asp:ListItem>影视</asp:ListItem>
                        <asp:ListItem>购物</asp:ListItem>
                        <asp:ListItem>读书</asp:ListItem>
                        <asp:ListItem>计算机</asp:ListItem>
                        <asp:ListItem>旅游</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="注册" ValidationGroup="1" OnClick="Button1_Click1" />
&nbsp;
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="取消" 
                        ValidationGroup="2" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
