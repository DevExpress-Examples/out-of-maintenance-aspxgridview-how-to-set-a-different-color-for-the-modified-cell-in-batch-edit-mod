'INSTANT VB NOTE: This code snippet uses implicit typing. You will need to set 'Option Infer On' in the VB file or set 'Option Infer' at the project level:

<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>
<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<style type="text/css">
	.dxgvBatchEditModifiedCell[fieldName="C2"]
	{
		background-color: LightCoral !important;
	}

	.dxgvBatchEditModifiedCell[fieldName="C3"]
	{
		background-color: LightYellow !important;
	}

	.dxgvBatchEditModifiedCell[fieldName="C4"]
	{
		background-color: LightBlue !important;
	}

	.dxgvBatchEditModifiedCell[fieldName="C5"]
	{
		background-color: LightSalmon !important;
	}
</style>

</head>
<body>
	<form id="frmMain" runat="server">
	<dx:ASPxGridView ID="Grid" runat="server" KeyFieldName="ID" OnBatchUpdate="Grid_BatchUpdate"
		OnRowInserting="Grid_RowInserting" OnRowUpdating="Grid_RowUpdating" OnRowDeleting="Grid_RowDeleting" OnHtmlDataCellPrepared="Grid_HtmlDataCellPrepared">
		<Columns>
			<dx:GridViewCommandColumn ShowNewButtonInHeader="true" ShowDeleteButton="true" />
			<dx:GridViewDataColumn FieldName="C1" />
			<dx:GridViewDataSpinEditColumn FieldName="C2" />
			<dx:GridViewDataTextColumn FieldName="C3" />
			<dx:GridViewDataCheckColumn FieldName="C4" />
			<dx:GridViewDataDateColumn FieldName="C5" />
		</Columns>
		<SettingsEditing Mode="Batch" />
	</dx:ASPxGridView>
	</form>
</body>
</html>