// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

namespace System.FileSystem;

/// <summary>
/// Displays an account that was registered via the File Share connector.
/// </summary>
page 80400 "Local File Account"
{
    ApplicationArea = All;
    SourceTable = "Local File Account";
    Caption = 'Local File Account';
    Permissions = tabledata "Local File Account" = rimd;
    PageType = Card;
    Extensible = false;
    InsertAllowed = false;
    DataCaptionExpression = Rec.Name;

    layout
    {
        area(Content)
        {
            field(NameField; Rec.Name)
            {
                Caption = 'Account Name';
                ToolTip = 'Specifies the name of the storage account connection.';
                ShowMandatory = true;
                NotBlank = true;
            }
            field(BasePath; Rec."Base Path")
            {
                ApplicationArea = All;
                Caption = 'Base Path';
                ToolTip = 'Specifies the a base path of the account like D:\share\.';
                ShowMandatory = true;
                NotBlank = true;
            }
        }
    }

    var
        SecretEditable: Boolean;

    trigger OnOpenPage()
    begin
        Rec.SetCurrentKey(Name);
    end;

    trigger OnAfterGetCurrRecord()
    begin
        SecretEditable := CurrPage.Editable();
    end;
}