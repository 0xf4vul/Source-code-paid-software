.class public Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity;
.super Lcom/piriform/ccleaner/ui/activity/a;
.source "SourceFile"


# instance fields
.field m:Lcom/piriform/ccleaner/n/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/piriform/ccleaner/cleaning/e;->b:Lcom/piriform/ccleaner/cleaning/e;

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->a(Landroid/content/Context;Lcom/piriform/ccleaner/cleaning/e;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 76
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity;->finish()V

    .line 77
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 25
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/activity/a;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity;)V

    .line 29
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity;->m:Lcom/piriform/ccleaner/n/a;

    .line 1091
    iget-object v0, v0, Lcom/piriform/ccleaner/n/a;->a:Lcom/piriform/ccleaner/n/c;

    const-string/jumbo v1, "notificationQuickCleanConfigured"

    invoke-virtual {v0, v1, v3}, Lcom/piriform/ccleaner/n/c;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity;->f()V

    .line 35
    :goto_0
    return-void

    .line 32
    :cond_0
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity;->setContentView(I)V

    .line 2038
    sget-object v0, Lcom/piriform/ccleaner/cleaning/g;->b:Lcom/piriform/ccleaner/cleaning/g;

    invoke-static {v0}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->a(Lcom/piriform/ccleaner/cleaning/g;)Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;

    move-result-object v0

    .line 2040
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity;->c()Landroid/support/v4/app/m;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/q;

    move-result-object v1

    const v2, 0x7f100084

    .line 2041
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/q;->b(ILandroid/support/v4/app/h;)Landroid/support/v4/app/q;

    move-result-object v0

    .line 2042
    invoke-virtual {v0}, Landroid/support/v4/app/q;->a()I

    .line 3024
    const v0, 0x7f100090

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2044
    check-cast v0, Landroid/widget/Button;

    .line 4024
    const v1, 0x7f100091

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2045
    check-cast v1, Landroid/widget/Button;

    .line 2047
    const v2, 0x7f0800e2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 4066
    new-instance v2, Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity$2;

    invoke-direct {v2, p0}, Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity$2;-><init>(Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity;)V

    .line 2049
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5056
    new-instance v0, Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity$1;-><init>(Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity;)V

    .line 2050
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6024
    const v0, 0x7f10008f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2052
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
