tableextension 50101 "CustomerExtALPROJECT" extends Customer
{
    fields
    {
        field(50000; "No. of Vehicles"; Integer)
        {
            Caption = 'No. of Vehicles';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count (Vehicle where("Customer No." = field("No.")));
        }
    }

}