// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

namespace System.FileSystem;

permissionset 80402 "Local File - Edit"
{
    Assignable = false;
    Access = Public;
    Caption = 'File Share - Edit';

    IncludedPermissionSets = "Local File - Read";

    Permissions =
        tabledata "Local File Account" = imd;
}
