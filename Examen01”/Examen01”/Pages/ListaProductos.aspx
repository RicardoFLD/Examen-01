<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaProductos.aspx.cs" Inherits="Examen01_.Pages.ListaProductos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Lista de productos</h2>

    <asp:GridView ID="gvProductos" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"
        CssClass="table table-striped">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" />
            <asp:BoundField DataField="Nombre" HeaderText="Producto" />
            <asp:BoundField DataField="FechaRegistro" HeaderText="Fecha registro" DataFormatString="{0:yyyy-MM-dd}" />
            <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" />
            <asp:BoundField DataField="PrecioUnitario" HeaderText="Precio unitario" DataFormatString="{0:C}" />

            <asp:BoundField DataField="CostoTotal" HeaderText="Costo total" DataFormatString="{0:C}" />
            <asp:BoundField DataField="Estado" HeaderText="Estado" />
        </Columns>
    </asp:GridView>
    <asp:Button ID="btnNuevoProducto" runat="server" Text="Nuevo producto" OnClick="btnNuevoProducto_Click" CssClass="btn btn-primary" />
</asp:Content>