<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TP3.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 268px;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            width: 380px;
        }
        .auto-style6 {
            width: 268px;
            font-size: large;
        }
        .auto-style7 {
            width: 380px;
            font-size: large;
        }
        .auto-style8 {
            font-size: medium;
        }
        .auto-style9 {
            width: 380px;
            height: 26px;
        }
        .auto-style10 {
            width: 268px;
            height: 26px;
        }
        .auto-style11 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style2">&nbsp;&nbsp; <strong><span class="auto-style4">Localidades<br />
                        </span></strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nombre de Localidad:</td>
                    <td class="auto-style2"><strong><span class="auto-style4">
                        <asp:TextBox ID="txtLocalidad" runat="server" Width="185px" ValidationGroup="1"></asp:TextBox>
                        <br />
                        </span></strong></td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvLocalidades" runat="server" ControlToValidate="txtLocalidad" ValidationGroup="1">Ingresar una localidad</asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="brnLocalidad" runat="server" OnClick="brnLocalidad_Click" Text="Guardar Localidad" ValidationGroup="1" />
                        <br />
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style6"><strong>Usuarios</strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nombre de Usuario:</td>
                    <td class="auto-style2">
                        <br />
                        <strong><span class="auto-style4">
                        <asp:TextBox ID="txtUsuario" runat="server" Width="185px" ValidationGroup="2"></asp:TextBox>
                        </span></strong></td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="txtUsuario" ValidationGroup="2">Ingrese un nombre de usuario</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contraseña:</td>
                    <td class="auto-style2"><strong><span class="auto-style4">
                        <asp:TextBox ID="txtContraseña" runat="server" Width="185px" TextMode="Password" ValidationGroup="2"></asp:TextBox>
                        </span></strong></td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña" ValidationGroup="2">Ingrese una contraseña</asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="cvContraseña" runat="server" ControlToCompare="txtContraseña" ControlToValidate="txtRepetir" ValidationGroup="2">Repita la contraseña</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Repetir Contraseña:</td>
                    <td class="auto-style2"><strong><span class="auto-style4">
                        <asp:TextBox ID="txtRepetir" runat="server" Width="185px" TextMode="Password" ValidationGroup="2"></asp:TextBox>
                        </span></strong></td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvContraseña2" runat="server" ControlToValidate="txtRepetir" ValidationGroup="2">Ingrese una contraseña</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Correo electrónico:</td>
                    <td class="auto-style2"><strong><span class="auto-style4">
                        <asp:TextBox ID="txtCorreo" runat="server" Width="185px" ValidationGroup="2"></asp:TextBox>
                        </span></strong></td>
                    <td>
                        <asp:RegularExpressionValidator ID="revCorreo" runat="server" ControlToValidate="txtCorreo" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="2">Ingrese un correo válido</asp:RegularExpressionValidator>
&nbsp;<span class="auto-style4"><strong><br />
                        </strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCorreo" CssClass="auto-style8" ValidationGroup="2">Ingrese un correo</asp:RequiredFieldValidator>
                        </span></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CP:</td>
                    <td class="auto-style2"><strong><span class="auto-style4">
                        <asp:TextBox ID="txtCP" runat="server" Width="185px" ValidationGroup="2"></asp:TextBox>
                        </span></strong></td>
                    <td class="auto-style4">
                        <asp:CustomValidator ID="cvCP" runat="server" ControlToValidate="txtCP" CssClass="auto-style8" OnServerValidate="cvCP_ServerValidate" ValidationGroup="2">El código postal debe tener 4 digitos</asp:CustomValidator>
                        <br />
                        <span class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCP" CssClass="auto-style8" ValidationGroup="2">Ingrese un código postal</asp:RequiredFieldValidator>
                        </span></td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Localidades:</td>
                    <td class="auto-style10">
                        <asp:DropDownList ID="ddlLocalidades" runat="server" ValidationGroup="1">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style2">
                        <br />
                        <asp:Button ID="btnGuardarUsuario" runat="server" Text="Guardar Usuario" OnClick="btnGuardarUsuario_Click" ValidationGroup="2" />
                    </td>
                    <td><strong>
                        <asp:Label ID="lblBienvenido" runat="server"></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnInicio" runat="server" Text="Ir a inicio .apsx" OnClick="btnInicio_Click" />
&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
