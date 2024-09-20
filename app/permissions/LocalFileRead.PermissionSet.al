// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

namespace System.FileSystem;

permissionset 80401 "Local File - Read"
{
    Assignable = false;
    Access = Public;
    Caption = 'File Share - Read';

    IncludedPermissionSets = "Local File - Objects";

    Permissions =
        tabledata "Local File Account" = r;
}
