// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

page 70051003 Addresses
{
    PageType = List;
    SourceTable = Address;
    SourceTableTemporary = True;
    InsertAllowed = False;
    DeleteAllowed = False;
    ModifyAllowed = False;
    ShowFilter = False;
    LinksAllowed = False;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Address;Address) {}
                field(Locality;Locality) {}
                field("Town/City";"Town/City") {}
                field(County;County) {}
            }
        }
    }
    
    procedure SetRecords(var tempAddress : Record Address temporary);
    begin
        Copy(tempAddress,true);
    end;
}