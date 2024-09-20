// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

namespace System.FileSystem;

/// <summary>
/// Holds the information for all file accounts that are registered via the File Share connector
/// </summary>
table 80400 "Local File Account"
{
    Access = Internal;

    Caption = 'Local File Account';

    fields
    {
        field(1; "Id"; Guid)
        {
            DataClassification = SystemMetadata;
            Caption = 'Primary Key';
        }

        field(2; Name; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Name of account';
        }
        field(3; "Base Path"; Text[2048])
        {
            Caption = 'Base Path';
        }
    }

    keys
    {
        key(PK; Id)
        {
            Clustered = true;
        }
    }
}