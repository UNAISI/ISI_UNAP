<%@ Page Title="" Language="C#" MasterPageFile="~/app/ProfileMaster.Master" AutoEventWireup="true" CodeBehind="SolicitarMaterial.aspx.cs" Inherits="SAG.app.Acceso.Mantenimiento.SolicitarMantenimiento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-sm-12 col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading"><h3>Encabezado</h3></div>
                <div class="panel-body">
                    <div class="form-group">
                        <label for="Txt_idSoli">ID Solicitud</label>
                        <asp:TextBox ID="Txt_idSoli" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="Cld_fecha">Fecha</label>
                        <asp:Calendar ID="Cld_fecha" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                            <TodayDayStyle BackColor="#CCCCCC" />
                        </asp:Calendar>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-12 col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading"><h3>Detalle de solicitud</h3></div>
                <div class="panel-body">
                    <div class="form-group">
                        <label for="Lstbx_articulo">Articulo</label>
                        <asp:ListBox ID="Lstbx_articulo" runat="server" DataSourceID="Sds_listaArticulos" DataTextField="descripcion" DataValueField="idArticulo" CssClass="form-control" Rows="1"></asp:ListBox>
                        <asp:SqlDataSource runat="server" ID="Sds_listaArticulos" ConnectionString='<%$ ConnectionStrings:TribunalesDB2ConnectionString %>' SelectCommand="SELECT i.idArticulo, a.descripcion FROM Articulo AS a INNER JOIN Inventario AS i ON a.idArticulo = i.idArticulo"></asp:SqlDataSource>
                    </div>
                    <div class="form-group">
                        <label for="Txt_descripcionProblema">Descripcion de la solicitud</label>
                        <asp:TextBox ID="Txt_descripcionProblema" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="Txt_tipoUso">Tipo de Uso</label>
                        <asp:TextBox ID="Txt_tipoUso" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="Txt_cantidad">Cantidad Requerida</label>
                        <asp:TextBox ID="Txt_cantidad" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="panel-footer">
        <asp:Button ID="Btn_Aceptar" runat="server" Text="Enviar" CssClass="btn btn-default" OnClick="Btn_Aceptar_Click"/>
        &nbsp;<asp:Button ID="Btn_Cancelar" runat="server" Text="Cancelar" CssClass="btn btn-default" OnClick="Btn_Cancelar_Click"/>
        <asp:Literal ID="Ltl_Mensaje" runat="server"></asp:Literal>
    </div>
</asp:Content>
