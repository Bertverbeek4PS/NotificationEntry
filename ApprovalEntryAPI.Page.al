page 50100 "Approval Entry API"
{
    PageType = API;
    Editable = false;
    APIPublisher = 'BertVerbeek';
    APIGroup = 'base';
    APIVersion = 'v1.0';
    EntityName = 'approvalEntry';
    EntitySetName = 'approvalEntries';
    SourceTable = "Approval Entry";
    ODataKeyFields = SystemId;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(tableId; Rec."Table ID") { }
                field(documentType; Rec."Document Type") { }
                field(documentNumber; Rec."Document No.") { }
                field(sequenceNumber; Rec."Sequence No.") { }
                field(approvalCode; Rec."Approval Code") { }
                field(senderId; Rec."Sender ID") { }
                field(salespersPurchCode; Rec."Salespers./Purch. Code") { }
                field(approverId; Rec."Approver ID") { }
                field(status; Rec.Status) { }
                field(dateTimeSentforApproval; Rec."Date-Time Sent for Approval") { }
                field(lastDateTimeModified; Rec."Last Date-Time Modified") { }
                field(lastModifiedByUserId; Rec."Last Modified By User ID") { }
                field(dueDate; Rec."Due Date") { }
                field(amount; Rec.Amount) { }
                field(amountLCY; Rec."Amount (LCY)") { }
                field(currencyCode; Rec."Currency Code") { }
                field(approvalType; Rec."Approval Type") { }
                field(limitType; Rec."Limit Type") { }
                field(availableCreditLimitLCY; Rec."Available Credit Limit (LCY)") { }
                field(recordIdToApprove; Rec."Record ID to Approve") { }
                field(delegationDateFormula; Rec."Delegation Date Formula") { }
                field(entryNumber; Rec."Entry No.") { }
                field(workflowStepInstanceId; Rec."Workflow Step Instance ID") { }
                field(id; Rec.SystemId) { }
                field(systemCreatedAt; Rec.SystemCreatedAt) { }
                field(systemCreatedBy; Rec.SystemCreatedBy) { }
                field(lastModifiedDateTime; Rec.SystemModifiedAt) { }
                field(systemModifiedBy; Rec.SystemModifiedBy) { }
            }
        }
    }
}
