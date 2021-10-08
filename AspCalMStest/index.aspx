<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="AspCalMStest.index" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Devops calculator app</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600&display=swap" rel="stylesheet" />
    <link href="fontawesome/css/all.min.css" rel="stylesheet" />
    
      <link href="Scripts/tooplate-chilling-cafe.css" rel="stylesheet" />
      <style type="text/css">
          .auto-style1 {
              width: 273px;
          }
          .auto-style2 {
              z-index: 1;
          }
      </style>
     
  </head>
  <body>
      <form id="form1" runat="server">
    <div class="tm-container">
      <div class="tm-text-white tm-page-header-container">
       
        <h1 class="tm-page-header">Calculator app</h1>
      </div>
      <div class="tm-main-content">
       
        <!-- Coffee Menu -->
        <section class="tm-section">
          <h2 class="tm-section-header">Enter Values to Divide</h2>
          <div class="tm-responsive-table">
            
                  
                      <table >
                          <tr>
                              <td class="auto-style2">Value1</td>
                              <td class="auto-style1">
                                  <asp:TextBox ID="tbVal1" runat="server"  style="z-index: 1"></asp:TextBox>
                              </td>
                              <td rowspan="3">
                                  <asp:DropDownList ID="ddoperator" runat="server" Font-Bold="True" Font-Size="12pt" Height="89px" Width="188px">
                                      <asp:ListItem Value="-1">Select</asp:ListItem>
                                      <asp:ListItem Value="0">Addition (+)</asp:ListItem>
                                      <asp:ListItem Value="1">Subtraction (-)</asp:ListItem>
                                      <asp:ListItem Value="2">Multiplication (x)</asp:ListItem>
                                      <asp:ListItem Value="3">Division (/)</asp:ListItem>
                                  </asp:DropDownList>
                              </td>
                          </tr>
                          <tr>
                              <td class="auto-style2">Value2</td>
                              <td class="auto-style1">
                                  <asp:TextBox ID="tbVal2" runat="server"  style="z-index: 1"></asp:TextBox>
                              </td>
                          </tr>

                          <tr>
                              <td class="auto-style2">
                                  <asp:Button ID="Button1" runat="server"  Font-Bold="True" Text="Result" OnClick="Button1_Click" CssClass="auto-style2" Font-Size="22pt" Height="46px" Width="114px" />
                              </td>
                              <td class="auto-style1">
                                  <asp:Label ID="lblResult" runat="server"  Text="Label" Visible="False" Font-Bold="True" Font-Size="Larger"></asp:Label>
                              </td>
                          </tr>

                      </table>


           
             
          </div>
        </section>

      
      </div>
      <footer>
        <p class="tm-text-white tm-footer-text">
          &nbsp;Copyright DevOps class
          
        </p>
      </footer>
    </div>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script>
      $(function() {
        // Adjust intro image height based on width.
        $(window).resize(function() {
          var img = $("#tm-intro-img");
          var imgWidth = img.width();
          // 640x425 ratio
          var imgHeight = (imgWidth * 425) / 640;
          if (imgHeight < 300) {
            imgHeight = 300;
          }
          img.css("min-height", imgHeight + "px");
        });
      });
    </script>
      </form>
  </body>
</html>