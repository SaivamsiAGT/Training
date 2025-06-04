page 79792 DisplayDepartmentTableData
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = DepartmentTable;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Dep_id; Rec.Dep_id)
                {
                    ApplicationArea = all;
                }
                field(Dep_Name; Rec.Dep_Name)
                {
                    ApplicationArea = all;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}