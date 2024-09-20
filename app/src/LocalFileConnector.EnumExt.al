// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

namespace System.FileSystem;

/// <summary>
/// Enum extension to register the File Share connector.
/// </summary>
enumextension 80400 "Local File Connector" extends "File System Connector"
{
    /// <summary>
    /// The File Share connector.
    /// </summary>
    value(80400; "Local File")
    {
        Caption = 'Local File';
        Implementation = "File System Connector" = "Local File Connector Impl.";
    }
}