<%@ Page Title="" Language="C#" MasterPageFile="~/app/ProfileMaster.Master" AutoEventWireup="true" CodeBehind="ListarSolicitudes.aspx.cs" Inherits="SAG.app.Acceso.Encargado.ListarSolicitudes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="table-responsive">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Sds_Lista_Solitud" CssClass="table table-hover" AllowSorting="True" BorderStyle="None">
                    <Columns>
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre"></asp:BoundField>
                        <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido"></asp:BoundField>
                        <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha"></asp:BoundField>
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion"></asp:BoundField>
                        <asp:BoundField DataField="Articulo" HeaderText="Articulo" SortExpression="Articulo"></asp:BoundField>
                        <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad"></asp:BoundField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource runat="server" ID="Sds_Lista_Solitud" ConnectionString='<%$ ConnectionStrings:TribunalesDB2ConnectionString %>' SelectCommand="pa_extraer_SolicitudMaterial" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:SessionParameter SessionField="id" Name="id" Type="Int32"></asp:SessionParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
