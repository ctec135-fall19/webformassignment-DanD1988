﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SinglePageModel.Default" %>
<%@ Import Namespace="AutoLotDAL.Models" %>
<%@ Import Namespace="AutoLotDAL.DataOperations" %> 

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<script runat="server">
    public IEnumerable<AutoLotDAL.Models.Car> GetData()
    {
        return new InventoryDAL().GetAllInventory();
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="carsGridView" runat="server" ItemType="AutoLotDAL.Models.Car" SelectMethod="GetData">
        </asp:GridView>
    </form>
</body>
</html>
