<%@ Page Title="" Language="C#" MasterPageFile="~/app/Maestra.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SAG.app.Account.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .nuevoEstilo1 {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-sm-12 col-md-8 col-lg-6">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h1>Iniciar Sesion</h1>
					</div>
					<div class="panel-body">
							<div class="form-group">
								<label for="usuario">Usuario</label>
                                <asp:TextBox ID="usuario" runat="server" CssClass="form-control"></asp:TextBox>
							</div>
							<div class="form-group">
								<label for="password">Password</label>
                                <asp:TextBox ID="password" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
							</div>
                            <asp:Button ID="btnsub" runat="server" CssClass="btn btn-default" Text="Aceptar" OnClick="btnsub_Click"/>
							&nbsp;&nbsp;&nbsp;
							<button type="reset" class="btn btn-default">Cancelar</button>
					        <br />
					        <br />
                            &nbsp;<asp:Label ID="MsjError" runat="server" CssClass="nuevoEstilo1" style="font-size: medium; text-align: left; font-weight: 700; color:red;"></asp:Label>
					        <br />
                            
                            
					</div>
				</div>
			</div>
</asp:Content>
