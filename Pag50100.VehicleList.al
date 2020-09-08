page 50100 "Vehicle List"
{

    ApplicationArea = All;
    Caption = 'Vehicle List';
    PageType = List;
    SourceTable = Vehicle;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Model; Model)
                {
                    ApplicationArea = All;
                }
                field("Serial No."; "Serial No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field(Transmission; Transmission)
                {
                    ApplicationArea = All;
                }
                field("List Price"; "List Price")
                {
                    ApplicationArea = All;
                }
                field("Date of Manufacturing"; "Date of Manufacturing")
                {
                    ApplicationArea = All;
                }
                field("Salesperson Code"; "Salesperson Code")
                {
                    ApplicationArea = All;
                }
                field("Salesperson Name"; "Salesperson Name")
                {
                    ApplicationArea = All;
                }
                field("Customer No."; "Customer No.")
                {
                    ApplicationArea = All;
                }
                // field(CustomerName; CustomerName)
                // {
                //     ApplicationArea = All;
                //     Editable = false;
                // }
                // field(CustomerName; Customer.Name)
                // {
                //     ApplicationArea = All;
                //     Editable = false;
                // }
                field("Customer Name"; "Customer Name")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    // METHODE 1 START -->
    // trigger OnAfterGetRecord()
    // begin
    //     clear(CustomerName);
    //     clear(Customer);

    //     customer.SetRange("No.", Rec."Customer No.");
    //     if Customer.FindFirst() then begin
    //         CustomerName := Customer.Name;
    //     end;
    // end;

    // trigger OnNewRecord(BelowxRec: Boolean)
    // begin
    //     clear(CustomerName);
    // end;
    // METHODE 1 ENDE <--

    // METHODE 2 START -->
    // trigger OnAfterGetRecord()
    // begin
    //     if not customer.get(rec."Customer No.") then
    //         clear(Customer);
    // end;
    // METHODE 2 ENDE <--

    // METHODE 3 START -->
    // Siehe Tabelle
    // METHODE 3 ENDE <--

    var
        CustomerName: Text;
        Customer: Record Customer;
}
