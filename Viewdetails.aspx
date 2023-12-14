<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Viewdetails.aspx.cs" Inherits="Viewdetails" %>


 

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


           <form runat="server" style="height: 900px">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
            <div class="row">
  <div class="col-9">
<asp:Button ID="btnlogout" runat="server" CssClass="btn btn-warning" Text="Logout" OnClick="btnlogout_Click" style="z-index: 1; position: absolute; top: 296px; left: 1292px" /></div>
  <div class="col-4"></div>
  <div class="col-6">
      
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <br />
      <br />
      <br />
      
      <asp:DataList ID="DataList1" runat="server" CellPadding="4" RepeatDirection="Horizontal" ForeColor="#333333" OnItemCommand="DataList1_ItemCommand">
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
     <ItemTemplate>


          <section class="u-align-center u-clearfix u-section-2" id="carousel_4e04">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1"><!--product--><!--product_options_json--><!--{"source":""}--><!--/product_options_json--><!--product_item-->
        <div class="u-align-center-lg u-align-center-md u-align-center-sm u-align-center-xs u-container-style u-expanded-width u-product u-white u-product-1">
          <div class="u-container-layout u-container-layout-1"><!--product_image-->
         
               <asp:Image ID="Image1" runat="server" class="u-image u-image-default u-product-control u-image-1" width="400" height="450" ImageUrl='<%#Eval("img") %>' />
            <div class="u-align-center u-container-style u-grey-5 u-group u-shape-rectangle u-group-1">
              <div class="u-container-layout u-container-layout-2"><!--product_price-->
                <div class="u-product-control u-product-price u-product-price-1">
                  <div class="u-price-wrapper u-spacing-10"><!--product_old_price-->
                    <div class="u-hide-price u-old-price" style="text-decoration: line-through !important;" wf-invisible="true"><!--product_old_price_content-->$12<!--/product_old_price_content--></div><!--/product_old_price--><!--product_regular_price-->
                    <div class="u-price" style="font-size: 3rem; font-weight: 700;">
                          <asp:Label ID="Label2" runat="server" class="u-price" Text='<%#Eval("Price") %>' Visible="false"></asp:Label>
                       <%-- <!--product_regular_price_content-->$9.95<!--/product_regular_price_content--></div><!--/product_regular_price-->--%>
                  </div>
                </div><!--/product_price--><!--product_title-->
                <h2 class="u-product-control u-text u-text-1">
                     <asp:Label ID="Label1" runat="server" class="u-product-title-link" href="#" Text='<%# Eval("productname") %>' Visible="false"></asp:Label>
                </h2><!--/product_title--><!--product_content-->
                <div class="u-product-control u-product-desc u-text u-text-2"><!--product_content_content-->
                  <p>Sample text. Lorem ipsum dolor sit amet, consectetur adipiscing elit nullam nunc justo sagittis suscipit ultrices.</p><!--/product_content_content-->
                </div><!--/product_content--><!--product_button--><!--options_json--><!--{"clickType":"add-to-cart","content":""}--><!--/options_json-->
                     <strong>Quantity :&nbsp;&nbsp; </strong>&nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem Value="1"></asp:ListItem>
                                                <asp:ListItem Value="2"></asp:ListItem>
                                                <asp:ListItem Value="3"></asp:ListItem>
                                            </asp:DropDownList>
 <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("Pid")%>' CommandName="addtocart" Text="Add To Cart" />
              </div>
            </div>
          </div>
        </div><!--/product_item--><!--/product-->
      </div>
    </section>


              <%--      <table class="w-100">
                        <tr>
                            <td style="width: 331px">
                                <asp:Image ID="Image1" runat="server" height="420" ImageUrl='<%#Eval("img") %>' width="327" />
                            </td>
                            <td>
                                <table class="w-100" style="height: 152px">
                                    <tr>
                                       <td>
                                            <p class="text-center">
                                                <b>Product id : </b><%#Eval("pid") %>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                         <td style="height: 40px">
                                            <h1 id="Name0" runat="server"><strong>Name :</strong> <%# Eval("productname") %></h1>
                                            <p runat="server">
                                                &nbsp;</p>
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td class="text-center">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("productname") %>' Visible="false"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">
                                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("Price") %>' Visible="false"></asp:Label>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td class="text-center">
                                            <strong>Quantity :&nbsp;&nbsp; </strong>&nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem Value="1"></asp:ListItem>
                                                <asp:ListItem Value="2"></asp:ListItem>
                                                <asp:ListItem Value="3"></asp:ListItem>
                                            </asp:DropDownList>
                                            <br />
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>Description :
                                            <br />
                                            </strong> <p class="text-break"><%#Eval("Pdesc") %></p>
                                            <p class="text-break">
                                                &nbsp;</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">
                                              <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("Pid")%>' CommandName="addtocart" Text="Add To Cart" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 331px">
                                <p class="text-center">
                                    <span><b>Price : </b><%#Eval("Price") %></span>Rupees</p>
                            </td>
                        </tr>
                    </table>--%>


                </ItemTemplate>
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />

    </asp:DataList></div>
</div>
    <div class="text-center" style="margin-left: 448px">
 </br> 
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <br />
        </form>
    </asp:Content>

