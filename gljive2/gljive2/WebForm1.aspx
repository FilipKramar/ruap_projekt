<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="gljive2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    
    <link href="Stylesheet1.css" rel="stylesheet" type="text/css" />
    <title>Ruap Mushrooms</title>
</head>
<body>
    <form class="container" id="form1" runat="server">
        <div><h1>Mushrooms</h1>
        </div>
        <table>
            <tr>
                <td><h3>Class</h3>
    <asp:DropDownList ID="klass" runat="server">
        <asp:ListItem Value="e">Edable</asp:ListItem>
        <asp:ListItem Value="p">Poison</asp:ListItem>
    </asp:DropDownList></td>
                <td><h3>Cap Shape</h3>
 <asp:DropDownList ID="capshape" runat="server">
     <asp:ListItem Value="b">Bell</asp:ListItem>
     <asp:ListItem Value="c">conical</asp:ListItem>
     <asp:ListItem Value="f">flat</asp:ListItem>
     <asp:ListItem Value="k">knobbed</asp:ListItem>
     <asp:ListItem Value="s">sunken</asp:ListItem>
     <asp:ListItem Value="x">convex</asp:ListItem>
 </asp:DropDownList></td>
                <td> <h3>Cap Surface</h3>
  <asp:DropDownList ID="capsurface" runat="server">
      <asp:ListItem Value="f">fibrous</asp:ListItem>
      <asp:ListItem Value="g">grooves</asp:ListItem>
      <asp:ListItem Value="y">scaly</asp:ListItem>
      <asp:ListItem Value="s">smooth</asp:ListItem>
         </asp:DropDownList></td>
            </tr>
            <tr>
                <td> <h3>Cap Color</h3>
  <asp:DropDownList ID="capcolor" runat="server">
      <asp:ListItem Value="n">brown</asp:ListItem>
      <asp:ListItem Value="b">buff</asp:ListItem>
      <asp:ListItem Value="c">cinnamon</asp:ListItem>
      <asp:ListItem Value="g">gray</asp:ListItem>
      <asp:ListItem Value="r">green</asp:ListItem>
      <asp:ListItem Value="p">pink</asp:ListItem>
      <asp:ListItem Value="u">purple</asp:ListItem>
      <asp:ListItem Value="e">red</asp:ListItem>
      <asp:ListItem Value="w">white</asp:ListItem>
      <asp:ListItem Value="y">yellow</asp:ListItem>
  </asp:DropDownList>

                </td>
                <td><h3>Gill Attachment</h3> 
 <asp:DropDownList ID="gillatt" runat="server">
      <asp:ListItem Value="a">attached</asp:ListItem>
      <asp:ListItem Value="d">descending</asp:ListItem>
      <asp:ListItem Value="f">free</asp:ListItem>
      <asp:ListItem Value="n">notched</asp:ListItem>
  </asp:DropDownList></td>
                <td><h3>Gill Spacing</h3>
 <asp:DropDownList ID="gilspac" runat="server">
      <asp:ListItem Value="c">close</asp:ListItem>
      <asp:ListItem Value="w">crowded</asp:ListItem>
      <asp:ListItem Value="d">distant</asp:ListItem>
  </asp:DropDownList>

                </td>
                </tr>
              <tr>
                
        <td> <h3>Gill Size</h3> 

 <asp:DropDownList ID="gilsize" runat="server">
      <asp:ListItem Value="b">broad</asp:ListItem>
      <asp:ListItem Value="n">narrow</asp:ListItem>
  </asp:DropDownList></td>
                <td>
                    <h3>Gill Color</h3>
         <asp:DropDownList ID="gilcol" runat="server">
      <asp:ListItem Value="k">black</asp:ListItem>
      <asp:ListItem Value="b">buff</asp:ListItem>
      <asp:ListItem Value="h">chocolate</asp:ListItem>
      <asp:ListItem Value="g">gray</asp:ListItem>
      <asp:ListItem Value="n">brown</asp:ListItem>
      <asp:ListItem Value="p">pink</asp:ListItem>
      <asp:ListItem Value="u">purple</asp:ListItem>
      <asp:ListItem Value="e">red</asp:ListItem>
      <asp:ListItem Value="w">white</asp:ListItem>
      <asp:ListItem Value="y">yellow</asp:ListItem>
      <asp:ListItem Value="r">green</asp:ListItem>
      <asp:ListItem Value="o">orange</asp:ListItem>
  </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
           <h3>Stalk Shape</h3> 
 <asp:DropDownList ID="stalkshap" runat="server">
      <asp:ListItem Value="t">tapering</asp:ListItem>
      <asp:ListItem Value="e">enlarging</asp:ListItem>
  </asp:DropDownList>
                 
                </td>
                <td> <h3>Stalk Root</h3> 
         <asp:DropDownList ID="stalkroot" runat="server">
      <asp:ListItem Value="b">bulbous</asp:ListItem>
      <asp:ListItem Value="c">club</asp:ListItem>
      <asp:ListItem Value="u">cup</asp:ListItem>
      <asp:ListItem Value="e">equal</asp:ListItem>
      <asp:ListItem Value="z">rhizomorphs</asp:ListItem>
      <asp:ListItem Value="r">rooted</asp:ListItem>
      <asp:ListItem Value="?">missing</asp:ListItem>
  </asp:DropDownList>

                </td>
                <td>
           <h3>Veil Color</h3> 
         <asp:DropDownList ID="veilcol" runat="server">
      <asp:ListItem Value="n">brown</asp:ListItem>
      <asp:ListItem Value="o">orange</asp:ListItem>
             <asp:ListItem Value="w">white</asp:ListItem>
      <asp:ListItem Value="y">yellow</asp:ListItem>
  </asp:DropDownList>

                </td>
            </tr>
            <tr>
                <td> <h3>Ring Number</h3>
      <asp:DropDownList ID="ringnumb" runat="server">
      <asp:ListItem Value="n">none</asp:ListItem>
      <asp:ListItem Value="o">one</asp:ListItem>
      <asp:ListItem Value="t">two</asp:ListItem>
     
  </asp:DropDownList></td>
                <td><h3>Ring Type</h3> 
<asp:DropDownList ID="ringtype" runat="server">
      <asp:ListItem Value="c">cobwebby</asp:ListItem>
      <asp:ListItem Value="e">evanescent</asp:ListItem>
      <asp:ListItem Value="f">flaring</asp:ListItem>
    <asp:ListItem Value="l">large</asp:ListItem>
      <asp:ListItem Value="n">none</asp:ListItem>
      <asp:ListItem Value="p">pendant</asp:ListItem>
      <asp:ListItem Value="s">sheathing</asp:ListItem>
      <asp:ListItem Value="z">zone</asp:ListItem>
     
  </asp:DropDownList></td>
                <td><h3>Habitat</h3>
            <asp:DropDownList ID="habitiat" runat="server">
      <asp:ListItem Value="g">grasses</asp:ListItem>
      <asp:ListItem Value="l">leaves</asp:ListItem>
      <asp:ListItem Value="m">meadows</asp:ListItem>
      <asp:ListItem Value="p">paths</asp:ListItem>
      <asp:ListItem Value="u">urban</asp:ListItem>
      <asp:ListItem Value="w">waste</asp:ListItem>
      <asp:ListItem Value="d">woods</asp:ListItem>
   
  </asp:DropDownList></td>
            </tr>
        </table>

        
        <br />
        <asp:Button ID="Button1" runat="server" Text="Check Mushroom" OnClick="Button1_Click" />
      <br />
        <br />
        <h2>
    <asp:Label ID="Labelrez" runat="server" Text="Results will show here"></asp:Label></h2>
            </form>
</body>
</html>
