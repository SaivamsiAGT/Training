page 50589 Amstrong
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(tocreate)
            {
                field(ArmstrongNumber; ArmstrongNumber)
                {
                    ApplicationArea = all;


                    trigger OnValidate()
                    var
                        Result, counter1, counter2, power, number, powernumber : Integer;
                        resultset: List of [Integer];
                        countertext: Text[5];
                        Newline: Text;
                    begin
                        for counter1 := 1 to 10000 do begin
                            countertext := Format(counter1);
                            powernumber := StrLen(countertext);
                            for counter2 := 1 to StrLen(countertext) do begin
                                Evaluate(number, CopyStr(countertext, counter2, 1));
                                Result += power(number, powernumber);
                            end;
                            if Result = counter1 then
                                resultset.Add(counter1);
                            Clear(Result);
                        end;
                        Newline := '\';
                        foreach counter1 in resultset do
                            ArmstrongNumbers += Newline + Format(Counter1);

                        Message(ArmstrongNumbers);
                    end;
                }
            }
        }
    }

    var
        ArmstrongNumbers: Text;
        ArmstrongNumber: Text[20];

}