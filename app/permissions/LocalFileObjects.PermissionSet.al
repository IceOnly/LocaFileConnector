// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

namespace System.FileSystem;

permissionset 80400 "Local File - Objects"
{
    Assignable = false;
    Access = Public;
    Caption = 'File Share - Objects';

    Permissions =
        table "Local File Account" = X,
        codeunit "Local File Connector Impl." = X,
        page "Local File Account Wizard" = X,
        page "Local File Account" = X;
}
