<%@ Page Title="" Language="C#" MasterPageFile="~/app/ProfileMaster.Master" AutoEventWireup="true" CodeBehind="AsignarSolicitud.aspx.cs" Inherits="SAG.app.Acceso.Administrador.AsignarSolicitud" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-sm-12 col-md-6">
            <div class="table-responsive">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Codigo_Solicitud" DataSourceID="Sds_Lista_Solicitudes" CssClass="table">
                    <Columns>
                        <asp:BoundField DataField="Codigo_Solicitud" HeaderText="Codigo_Solicitud" ReadOnly="True" SortExpression="Codigo_Solicitud"></asp:BoundField>
                        <asp:BoundField DataField="Departamento" HeaderText="Departamento" SortExpression="Departamento"></asp:BoundField>
                        <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha"></asp:BoundField>
                        <asp:BoundField DataField="Tipo_Solicitud" HeaderText="Tipo_Solicitud" SortExpression="Tipo_Solicitud"></asp:BoundField>
                    </Columns>
                </asp:GridView>
            </div>
            <asp:SqlDataSource runat="server" ID="Sds_Lista_Solicitudes" ConnectionString='<%$ ConnectionStrings:TribunalesDB2ConnectionString %>' SelectCommand="SELECT * FROM [vw_solicitudes]"></asp:SqlDataSource>
        </div>
        <div class="col-sm-12 col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3>Asignar Solicitud</h3>
                </div>
                <div class="panel-body">

                </div>
            </div>
        </div>
    </div>
</asp:Content>
