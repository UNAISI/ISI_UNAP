<%@ Page Title="" Language="C#" MasterPageFile="~/app/ProfileMaster.Master" AutoEventWireup="true" CodeBehind="IngresarUsuario.aspx.cs" Inherits="SAG.app.Acceso.Administrador.IngresarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="panel-default">
                    <div class="panel-heading">
                        <h3>Datos de Usuario</h3>
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label for="Txt_cedula">ID Usuario</label>
                            <asp:TextBox ID="Txt_cedula" runat="server" Font-Size="Large" CssClass="form-control"></asp:TextBox> 
                        </div>

                        <div class="form-group">
                            <label for="Txt_password">Password</label>
                            <asp:TextBox ID="Txt_password" runat="server" Font-Size="Large" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="Lst_tipoUsuario">Tipo de Usuario</label>
                            <asp:ListBox ID="Lst_tipoUsuario" CssClass="form-control" runat="server" DataSourceID="Sds_rol_Usuario" DataTextField="nombreRol" DataValueField="idRol" Rows="1" Font-Size="Large"></asp:ListBox>
                            <asp:SqlDataSource ID="Sds_rol_Usuario" runat="server" ConnectionString="<%$ ConnectionStrings:TribunalesDB2ConnectionString %>" SelectCommand="SELECT * FROM [RolUsuario]"></asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12" >
                <div class="panel-default">
                    <div class="panel-heading">
                        <h3>Datos Personales</h3>
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label for="Txt_nombre">Nombre</label>
                            <asp:TextBox ID="Txt_nombre" runat="server" CssClass="form-control" Font-Size="Large"></asp:TextBox>
                
                            <label for="Txt_apellido">Apellido</label>
                            <asp:TextBox ID="Txt_apellido" runat="server" CssClass="form-control" Font-Size="Large"></asp:TextBox>
                
                            <label for="Txt_direccion">Direccion</label>
                            <asp:TextBox ID="Txt_direccion" runat="server" CssClass="form-control" Font-Size="Large"></asp:TextBox>
                
                            <label for="Lsb_puesto">Puesto</label>
                            <asp:ListBox ID="Lsb_puesto" runat="server" DataSourceID="Sds_lista_Puesto" DataTextField="nombreCargo" DataValueField="idCargo" Rows="1" Font-Size="Large" CssClass="form-control"></asp:ListBox>
                            <asp:SqlDataSource ID="Sds_lista_Puesto" runat="server" ConnectionString="<%$ ConnectionStrings:TribunalesDB2ConnectionString %>" SelectCommand="SELECT * FROM [Cargo]"></asp:SqlDataSource>
                            <br />
                
                            <label for="Lst_Departamento">Departamento</label>
                            <asp:ListBox ID="Lst_Departamento" runat="server" DataSourceID="Sds_departamento" DataTextField="nombre" DataValueField="idDepartamento" OnSelectedIndexChanged="ListBox2_SelectedIndexChanged" Rows="1" Font-Size="Large" CssClass="form-control"></asp:ListBox>
                        </div>
                        <asp:SqlDataSource runat="server" ID="Sds_departamento" ConnectionString='<%$ ConnectionStrings:TribunalesDB2ConnectionString %>' SelectCommand="SELECT * FROM [Departamento]"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    <div class="panel-footer">
        <asp:Button ID="btn_Registrar" runat="server" Text="Registrar" CssClass="btn btn-default" OnClick="btn_Registrar_Click" />
        &nbsp;&nbsp;&nbsp;
		<button type="reset" class="btn btn-default">Cancelar</button>
        &nbsp;<asp:Literal ID="Ltl_Mensaje" runat="server"></asp:Literal>
    </div>
</asp:Content>
