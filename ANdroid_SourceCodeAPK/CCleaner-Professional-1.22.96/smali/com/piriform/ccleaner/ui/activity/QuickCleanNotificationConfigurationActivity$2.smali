.class final Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity$2;
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
    .line 66
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity$2;->a:Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity$2;->a:Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity;->finish()V

    .line 70
    return-void
.end method
