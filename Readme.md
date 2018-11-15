<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# ASPxGridView - How to set a different color for the modified cell in Batch Edit mode


<p>Starting with version 16.1, this scenario is supported out of the box with the column's <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebGridViewDataColumn_BatchEditModifiedCellStyletopic">BatchEditModifiedCellStyle</a> property:</p>


```aspx
<dx:GridViewDataSpinEditColumn FieldName="C2">
    <BatchEditModifiedCellStyle BackColor="LightCoral"></BatchEditModifiedCellStyle>
</dx:GridViewDataSpinEditColumn>
<dx:GridViewDataTextColumn FieldName="C3">
    <BatchEditModifiedCellStyle BackColor="LightYellow"></BatchEditModifiedCellStyle>
</dx:GridViewDataTextColumn>

```




<h3>Description</h3>

<p>To implement this scenario, handle the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewASPxGridView_HtmlDataCellPreparedtopic"><u>HtmlDataCellPrepared</u></a> event and add a custom attribute for each data cell: &nbsp;&nbsp;</p>
<code lang="cs">    protected void Grid_HtmlDataCellPrepared(object sender, ASPxGridViewTableDataCellEventArgs e) {
        e.Cell.Attributes.Add("fieldName", e.DataColumn.FieldName);
    }</code>
<p>Then, you can change the cell's color by modified the <strong><em>dxgvBatchEditModifiedCell</em></strong> CSS class based on the "fieldName" attribute of each cell:</p>
<code lang="css">    .dxgvBatchEditModifiedCell[fieldName="C2"]
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
    }</code>

<br/>


