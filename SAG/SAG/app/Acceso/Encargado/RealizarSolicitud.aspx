<%@ Page Title="" Language="C#" MasterPageFile="~/app/ProfileMaster.Master" AutoEventWireup="true" CodeBehind="RealizarSolicitud.aspx.cs" Inherits="SAG.app.Acceso.Encargado.SolicitarPersonal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-6 col-sm-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h2>Tipo de Solicitud</h2>
                </div>
                <div class="panel-body">
                    <h5><span class="label label-info">Se debe de especificar el tipo de solicitud 
                        escogida previamente, por motivos de protocolo</span></h5>
                    <div class="form-group">
                        <label for="Ltb_Tipo_Soli"></label>
                        <asp:ListBox ID="Ltb_Tipo_Soli" runat="server" DataSourceID="Sds_tipo_Solicitud" CssClass="form-control" DataTextField="nombreTipo" DataValueField="idTipoSoli" Rows="1" Font-Size="Larger"></asp:ListBox>
                    </div>
                    <asp:SqlDataSource runat="server" ID="Sds_tipo_Solicitud" ConnectionString='<%$ ConnectionStrings:TribunalesDB2ConnectionString %>' SelectCommand="SELECT * FROM [Tipo_Solicitud]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-sm-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3>Datos de Solicitud</h3>
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <label for="Txt_IdSolicitud">ID Solicitud</label>
                        <asp:TextBox ID="Txt_IdSolicitud" runat="server" CssClass="form-control"></asp:TextBox>
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
    </div>
    <div class="panel-footer">
        <asp:Button ID="Btn_Aceptar" runat="server" Text="Enviar" CssClass="btn btn-default" OnClick="Btn_Aceptar_Click"/>
        &nbsp;<asp:Button ID="Btn_Cancelar" runat="server" Text="Cancelar" CssClass="btn btn-default" OnClick="Btn_Cancelar_Click"/>
        <asp:Literal ID="Ltl_Mensaje" runat="server"></asp:Literal>
    </div>
</asp:Content>
