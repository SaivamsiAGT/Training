page 69791 DepartmentPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = DepartmentTable;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Dep_Name; Rec.Dep_Name)
                {
                    ApplicationArea = all;
                    Editable = true;
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