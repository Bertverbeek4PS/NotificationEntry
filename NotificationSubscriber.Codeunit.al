codeunit 50100 NotificationSubscriber
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Approvals Mgmt.", OnBeforeCreateApprovalEntryNotification, '', true, true)]
    local procedure OnBeforeCreateApprovalEntryNotification(ApprovalEntry: Record "Approval Entry"; var IsHandled: Boolean; WorkflowStepInstance: Record "Workflow Step Instance")
    var
        User: Record "User";
        WebClientUrl: Text[250];
    begin
        WebClientUrl := CopyStr(GetUrl(ClientType::Web, CompanyName(), ObjectType::Page, Page::"Approval Entries", ApprovalEntry), 1, MaxStrLen(WebClientUrl));

        User.SetRange("User Name", ApprovalEntry."Approver ID");
        if User.FindFirst() then
            MyBusinessOnBeforeCreateApprovalEntryNotification(ApprovalEntry.SystemId, User."Contact Email", WebClientUrl);

    end;

    [ExternalBusinessEvent('OnBeforeCreateApprovalEntryNotification', 'Send Approval Notifications', 'When Approval Notification is created', EventCategory::WorkflowNotifications)]
    local procedure MyBusinessOnBeforeCreateApprovalEntryNotification(SystemId: Guid; Email: Text[250]; WebClientUrl: Text[250])
    begin
    end;
}