.class final Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity$1;->a:Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity$1;->a:Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity;

    iget-object v0, v0, Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity;->m:Lcom/piriform/ccleaner/n/a;

    .line 1095
    iget-object v0, v0, Lcom/piriform/ccleaner/n/a;->a:Lcom/piriform/ccleaner/n/c;

    const-string/jumbo v1, "notificationQuickCleanConfigured"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/n/c;->a(Ljava/lang/String;Z)V

    .line 60
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity$1;->a:Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity;->a(Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity;)V

    .line 61
    return-void
.end method
