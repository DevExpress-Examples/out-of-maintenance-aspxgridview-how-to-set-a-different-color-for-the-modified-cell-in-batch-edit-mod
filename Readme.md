<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx](./VB/Default.aspx))
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



<br/>


