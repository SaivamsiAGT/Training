page 69797 DetailsofbothDocment
{
    PageType = Document;
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

            part(SUbLinesforstudens; 69798)
            {
                ApplicationArea = All;
                SubPageLink = "Dep_Name" = field(Dep_Name);/*  same table last  */
                UpdatePropagation = Both;
            }
        }
    }

    actions
    {
        area(Processing)
        {

        }
    }


}