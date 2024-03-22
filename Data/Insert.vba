Sub InsertPDFAsObject(ArgsSheetName As String, ArgsPDF_Path As String, ArgsCell As String)
    Dim filePath As String
    Dim sheetName As String
    Dim sheetCell As String
    Dim obj As Object
    
    ' Set the file path of the PDF to be inserted
    filePath = ArgsPDF_Path
    
    ' Set the name of the worksheet where you want to insert the PDF
    sheetName = ArgsSheetName

    ' Set the name of the Cell where you want to insert the PDF
    sheetCell = ArgsCell
    
    ' Activate the specified worksheet
    Sheets(sheetName).Activate
    
    ' Create a new object and insert the PDF file
    Set obj = ActiveSheet.OLEObjects.Add(Filename:=filePath, Link:=False, DisplayAsIcon:=False)
    
    ' Set the position and size of the object
    With obj
        .Top = Range(sheetCell).Top
        .Left = Range(sheetCell).Left
        .Width = 50
        .Height = 50
    End With
    
    ' Refresh the screen to display the object
    Application.ScreenUpdating = True
End Sub
