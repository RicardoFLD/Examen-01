<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaProductos.aspx.cs" Inherits="Examen01_.Pages.ListaProductos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Lista de Productos</h2>

    <asp:GridView ID="gvProductos" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"
        CssClass="table table-striped" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" />
            <asp:BoundField DataField="Nombre" HeaderText="Producto" />
            <asp:BoundField DataField="FechaRegistro" HeaderText="Fecha Registro" DataFormatString="{0:yyyy-MM-dd}" />
            <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" />
            <asp:BoundField DataField="PrecioUnitario" HeaderText="Precio Unitario" DataFormatString="{0:C}" />
        </Columns>
    </asp:GridView>

    <asp:Button ID="btnNuevoProducto" runat="server" Text="Nuevo producto" OnClick="btnNuevoProducto_Click" />
</asp:Content>