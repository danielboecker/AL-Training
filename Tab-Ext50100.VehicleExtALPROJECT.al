tableextension 50100 "VehicleExtALPROJECT" extends Vehicle
{
    fields
    {
        field(50000; "Salesperson Code"; Code[20])
        {
            Caption = 'Salesperson Code';
            DataClassification = ToBeClassified;
            TableRelation = "Salesperson/Purchaser".Code;
        }
        field(50001; "Customer Name"; Text[50])
        {
            Caption = 'Customer Name';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup (Customer.Name where("No." = field("Customer No.")));
        }
        field(50002; "Salesperson Name"; Text[50])
        {
            Caption = 'Salesperson Name';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup ("Salesperson/Purchaser".Name where(Code = field("Salesperson Code")));
        }
        field(50003; "Customer Name 2"; Text[50])
        {
            Caption = 'Customer Name 2';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup (Customer."Name 2" where("No." = field("Customer No.")));
        }

    }

}