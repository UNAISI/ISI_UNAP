<%@ Page Title="" Language="C#" MasterPageFile="~/app/ProfileMaster.Master" AutoEventWireup="true" CodeBehind="ModificarUsuario.aspx.cs" Inherits="SAG.app.Formulario_web1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="row">
    <div class="col-md-12">
        <div class="table-responsive">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Sds_Lista_Empleados" AllowSorting="True" BorderStyle="None" CssClass="table">
                <Columns>
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre"></asp:BoundField>
                    <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido"></asp:BoundField>
                    <asp:BoundField DataField="Departamento" HeaderText="Departamento" SortExpression="Departamento"></asp:BoundField>
                    <asp:BoundField DataField="Cargo" HeaderText="Cargo" SortExpression="Cargo"></asp:BoundField>
                    <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="Sds_Lista_Empleados" ConnectionString='<%$ ConnectionStrings:TribunalesDB2ConnectionString %>' SelectCommand="SELECT * FROM [vw_Datos_Empleado]"></asp:SqlDataSource>
        </div>
        <asp:SqlDataSource runat="server" ID="SDS_Lista_Usuarios" ConnectionString='<%$ ConnectionStrings:TribunalesDB2ConnectionString %>' SelectCommand="SELECT * FROM [Empleado]"></asp:SqlDataSource>
    </div>
</div>
</asp:Content>
