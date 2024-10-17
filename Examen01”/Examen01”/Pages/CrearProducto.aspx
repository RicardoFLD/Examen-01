<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearProducto.aspx.cs" Inherits="Examen01_.Pages.CrearProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Crear producto</h2>

    <asp:Label ID="lblNombre" runat="server" Text="Nombre del producto:"></asp:Label><br />
    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox><br />
    <br />

    <asp:Label ID="lblCantidad" runat="server" Text="Cantidad:"></asp:Label><br />
    <asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox><br />
    <br />

    <asp:Label ID="lblPrecio" runat="server" Text="Precio Unitario:"></asp:Label><br />
    <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox><br />
    <br />

    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
    <a href="ListaProductos.aspx">Cancelar</a>
</asp:Content>
