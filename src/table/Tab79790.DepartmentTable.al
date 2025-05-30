table 79790 DepartmentTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Dep_id; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; Dep_Name; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; Dep_id, Dep_Name)
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
    var
        LastRecord: Record DepartmentTable;
    begin
        if LastRecord.FindLast() then
            Dep_id := LastRecord.Dep_id + 1
        else
            Dep_id := 1;

        Message('Name %1  and id %2 has been Sucessfully inserted', Rec.Dep_Name, Rec.Dep_id);
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