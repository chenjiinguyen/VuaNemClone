<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PhuKien.aspx.cs" Inherits="PhuKien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <div class="main">
             <div class="sitemap">
                <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
                 <asp:SiteMapPath ID="SiteMapPath1" runat="server" PathDirection="CurrentToRoot">
                 </asp:SiteMapPath>
            </div>
            <div class="left" style="height: auto; width: 180px; text-align: left;float:left">
              <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False">
                   <Columns>
                       <asp:ButtonField HeaderText="GIÁ" />
                   </Columns>
                 </asp:GridView>
                 <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" Height="38px">
                   <Columns>
                       <asp:ButtonField HeaderText="MÀU" />
                   </Columns>
                 </asp:GridView>
                 <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False">
                   <Columns>
                       <asp:ButtonField HeaderText="KÍCH THƯỚC" />
                   </Columns>
                 </asp:GridView>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                   <Columns>
                       <asp:ButtonField HeaderText="ĐẶC ĐIỂM" />
                   </Columns>
                 </asp:GridView>
                 <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False">
                   <Columns>
                       <asp:ButtonField HeaderText="THƯƠNG HIỆU" />
                   </Columns>
                 </asp:GridView>
                 <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False">
                   <Columns>
                       <asp:ButtonField HeaderText="CHẤT LIỆU" />
                   </Columns>
                 </asp:GridView>
            </div>
             
            <div class="content" style="float:right; height: 58px; width:545px">
                <asp:DataList ID="dataLoai" runat="server" Width="100%" RepeatColumns="3" RepeatDirection="Horizontal" >
            <ItemTemplate>
            <table style="border-style: solid; border-width: 1px; width:41%;">
                <tr>
                    <td class="auto-style1" style="width: 157px">
                        
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "/Hinhanh/nembanchay/"+Eval("HinhMinhHoa") %>' Width="104%" />
                        
                    </td>
                </tr>
                <caption>
                    &lt;<tr>
                        <td style="text-align: center; width: 157px;">
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "/ChiTietSanPham.aspx?id="+Eval("MaSP") %>' Text='<%# "Chi Tiết" %>'>
                             <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenNem") %>'></asp:Label>
                        </asp:HyperLink>
                        </td>
                    </tr>
                </caption>
                <tr>
                </tr>
                <tr>
                    <td style="text-align: left; width: 157px;">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Gia") %>'></asp:Label>
                    </td>
                    <td style="text-align: right">               
                        <asp:Button ID="Button1" runat="server" BackColor="#FF0066" ForeColor="White" Text="Mua Ngay" />                        
                    </td> 
                </tr>

            </table>
        </ItemTemplate>
    </asp:DataList>
            </div>
        </div>

        
     
    </form>
</asp:Content>

