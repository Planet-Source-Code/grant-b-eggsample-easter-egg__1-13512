VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Egg"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Private strKP As String * 2

Property Let char(intKey As Integer)
    'check through keystring for 'Hi' and display
    'hidden message if found.
    
    Select Case intKey
        Case vbKeyH: strKP = Mid$(strKP, 2) & "H"
        Case vbKeyI: strKP = Mid$(strKP, 2) & "i"
        Case Else: strKP = ""
    End Select
    If strKP = "Hi" Then doegg
End Property

Private Sub doegg()
    'Display EGG. You can change this to play sounds,
    'run animation or whatever you want.
    
    MsgBox "This is the hidden egg! You can of course make this load a new form instead"
End Sub
