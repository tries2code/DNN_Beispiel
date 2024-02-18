<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Settings.ascx.cs" Inherits="ZEA.Modul.DNN_Beispiel.Settings" %>


<!-- uncomment the code below to start using the DNN Form pattern to create and update settings -->

<%@ Register TagName="label" TagPrefix="dnn" Src="~/controls/labelcontrol.ascx" %>

	<h2 id="dnnSitePanel-BasicSettings" class="dnnFormSectionHead"><a href="" class="dnnSectionExpanded"><%=LocalizeString("BasicSettings")%></a></h2>
	<fieldset>
        <div class="dnnFormItem">
            <dnn:Label ID="lblTitle" runat="server" /> 
 
            <asp:TextBox ID="txTitle" runat="server" />
        </div>
        <div class="dnnFormItem">
            <dnn:label ID="lblUrlPrefix" runat="server" />
            <asp:TextBox ID="txtUrlPrefix" runat="server" />
        </div>
    </fieldset>

