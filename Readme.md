<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128535359/16.1.10%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E5140)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# ASPxGridView - How to set a different color for the modified cell in Batch Edit mode
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e5140/)**
<!-- run online end -->


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


