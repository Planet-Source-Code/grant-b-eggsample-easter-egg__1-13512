VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "Easter Egg"
   ClientHeight    =   1260
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   3630
   LinkTopic       =   "Form1"
   ScaleHeight     =   1260
   ScaleWidth      =   3630
   StartUpPosition =   3  'Windows Default
   Begin VB.Label Label1 
      Caption         =   "Type 'Hi' with the form focused and watch for the 'Easter Egg'. Add one to your next app and see how many people find it!"
      Height          =   735
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3135
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim Test As New Egg

Private Sub Form_KeyDow(KeyCode As Integer, Shift As Integer)
    'process each keystroke to decide if 'egg'
    'should be shown or not.
    Test.char = KeyCode
End Sub

Private Sub Form_Load()
    Me.KeyPreview = True 'makes sure, no matter which
                         'object on form has focus,
                         'egg will still work.
End Sub


