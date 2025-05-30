table 79793 StudentTable
{
    DataClassification = ToBeClassified;
    LookupPageID = DisplayDepartmentTableData;

    fields
    {
        field(1; Student_Id; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(2; Name; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Dep_Name; code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = DepartmentTable.Dep_Name;
        }

    }

    keys
    {
        key(Key1; Student_Id)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}