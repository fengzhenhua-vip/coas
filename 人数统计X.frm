VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} 人数统计X 
   Caption         =   "人数统计"
   ClientHeight    =   3225
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   5640
   OleObjectBlob   =   "人数统计X.frx":0000
   StartUpPosition =   1  '所有者中心
End
Attribute VB_Name = "人数统计X"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub 执行统计_Click()
    Dim i, j, k, m, n, p, q, r, s As Integer
    Dim InName, OutName As String
    If 输入报表名.Value = "" Then
      MsgBox "请填写输入报表名 ！"
    End If
    If 输入起始行.Value = "" Then
      MsgBox "请填写输入起始行 ！"
    End If
    If 输入名称列.Value = "" Then
      MsgBox "请输填写入名称列 ！"
    End If
    If 输入数据列.Value = "" Then
      MsgBox "请填写输入数据列 ！"
    End If
    If 输出报表名.Value = "" Then
      MsgBox "请填写输出报表名 ！"
    End If
    If 输出起始行.Value = "" Then
      MsgBox "请填写输出起始行 ！"
    End If
    If 输出名称列.Value = "" Then
      MsgBox "请输填写出名称列 ！"
    End If
    If 输出数据列.Value = "" Then
      MsgBox "请填写输出数据列 ！"
    End If
    If 最低分.Value = "" Then
      MsgBox "请填写最低分 ！"
    End If
    If 最高分.Value = "" Then
      MsgBox "请填写最高分 ！"
    End If
    If 输入报表名.Value <> "" And 输入起始行.Value <> "" And 输入名称列.Value <> "" And 输入数据列.Value <> "" Then
        If 输出报表名.Value <> "" And 输出起始行.Value <> "" And 输出名称列.Value <> "" And 输出数据列.Value <> "" Then
            InName = 输入报表名.Value: OutName = 输出报表名.Value
            i = CInt(输入起始行.Value): m = CInt(输出起始行.Value)
            j = CInt(输入名称列.Value): n = CInt(输出名称列.Value)
            k = CInt(输入数据列.Value): p = CInt(输出数据列.Value)
            r = CDbl(最低分.Value): s = CDbl(最高分.Value)
            Call 标准VBA分数段人数(InName, i, j, k, OutName, m, n, p, r, s)
        End If
    End If
End Sub
