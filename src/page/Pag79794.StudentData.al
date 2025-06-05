page 69794 StudentData
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = StudentTable;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Student_Id; Rec.Student_Id)
                {
                    ApplicationArea = all;
                }
                field(Name; Rec.Name)
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