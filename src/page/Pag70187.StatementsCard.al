page 70187 StatementsCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Statements Card';

    layout
    {
        area(Content)
        {
            group(input)
            {
                field(Difficulty; Difficulty)
                {
                    ApplicationArea = all;
                    trigger OnValidate()
                    begin
                        GetSuggestion();
                    end;
                }
            }
            group(output)
            {
                field(Suggestion; Suggestion)
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field(Level; Level)
                {
                    ApplicationArea = all;
                    Editable = false;

                }
            }
        }
    }



    var
        Level: Text[30];
        Suggestion: Text[80];
        Difficulty: Integer;

    local procedure GetSuggestion()
    begin
        case Difficulty of
            1 .. 5:
                begin
                    Level := 'Biggner';
                    Suggestion := 'start e learn';
                end;
            6 .. 10:
                begin
                    Level := 'intemidate';
                    Suggestion := 'start coding';
                end;
            11 .. 15:
                begin
                    Level := 'Expert';
                    Suggestion := 'Explore more';
                end;
        end;
    end;
}