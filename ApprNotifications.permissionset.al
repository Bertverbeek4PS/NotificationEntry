permissionset 50100 "Appr. Notifications"
{
    Assignable = true;
    Caption = 'Approval Notifications', MaxLength = 30;
    Permissions = codeunit NotificationSubscriber = X,
        page "Approval Entry API" = X;
}