.class public Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity;
.super Lcom/piriform/ccleaner/ui/activity/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity;)V
    .locals 1

    .prologue
    .line 24
    .line 9073
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity;->setResult(I)V

    .line 9074
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity;->finish()V

    .line 24
    return-void
.end method

.method private static a(Landroid/appwidget/AppWidgetManager;Landroid/content/ComponentName;)[I
    .locals 1

    .prologue
    .line 136
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    .line 138
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_0
.end method


# virtual methods
.method public final f()V
    .locals 6

    .prologue
    .line 66
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity;->setResult(ILandroid/content/Intent;)V

    .line 67
    invoke-static {p0}, Lcom/piriform/ccleaner/CCleanerApplication;->a(Landroid/content/Context;)Lcom/piriform/ccleaner/CCleanerApplication;

    move-result-object v0

    .line 7123
    iget-object v0, v0, Lcom/piriform/ccleaner/CCleanerApplication;->f:Lcom/piriform/ccleaner/b/a;

    .line 68
    sget-object v1, Lcom/piriform/ccleaner/b/b;->b:Lcom/piriform/ccleaner/b/b;

    sget-object v2, Lcom/piriform/ccleaner/b/m;->b:Lcom/piriform/ccleaner/b/m;

    .line 8115
    iget-object v2, v2, Lcom/piriform/ccleaner/b/m;->aF:Ljava/lang/String;

    .line 68
    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;Ljava/lang/String;J)V

    .line 69
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity;->finish()V

    .line 70
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 28
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/activity/a;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0, v2}, Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity;->setResult(I)V

    .line 1123
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 1125
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/piriform/ccleaner/widget/QuickCleanAppWidgetProvider;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1127
    invoke-static {v1, v3}, Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity;->a(Landroid/appwidget/AppWidgetManager;Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 1129
    array-length v1, v1

    if-le v1, v0, :cond_0

    .line 31
    :goto_0
    if-eqz v0, :cond_1

    .line 2040
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2041
    const v1, 0x7f0800e5

    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    .line 2078
    new-instance v3, Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity$1;

    invoke-direct {v3, p0}, Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity$1;-><init>(Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity;)V

    .line 2042
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    .line 2087
    new-instance v3, Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity$2;

    invoke-direct {v3, p0}, Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity$2;-><init>(Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity;)V

    .line 2043
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2096
    new-instance v2, Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity$3;

    invoke-direct {v2, p0}, Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity$3;-><init>(Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity;)V

    .line 2044
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2045
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 37
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 1129
    goto :goto_0

    .line 34
    :cond_1
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity;->setContentView(I)V

    .line 3049
    sget-object v0, Lcom/piriform/ccleaner/cleaning/g;->b:Lcom/piriform/ccleaner/cleaning/g;

    invoke-static {v0}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->a(Lcom/piriform/ccleaner/cleaning/g;)Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;

    move-result-object v0

    .line 3051
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity;->c()Landroid/support/v4/app/m;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/q;

    move-result-object v1

    const v3, 0x7f100084

    .line 3052
    invoke-virtual {v1, v3, v0}, Landroid/support/v4/app/q;->b(ILandroid/support/v4/app/h;)Landroid/support/v4/app/q;

    move-result-object v0

    .line 3053
    invoke-virtual {v0}, Landroid/support/v4/app/q;->a()I

    .line 4024
    const v0, 0x7f100090

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3055
    check-cast v0, Landroid/widget/Button;

    .line 5024
    const v1, 0x7f100091

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3056
    check-cast v1, Landroid/widget/Button;

    .line 5114
    new-instance v3, Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity$5;

    invoke-direct {v3, p0}, Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity$5;-><init>(Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity;)V

    .line 3058
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6105
    new-instance v0, Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity$4;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity$4;-><init>(Lcom/piriform/ccleaner/ui/activity/QuickCleanWidgetConfigurationActivity;)V

    .line 3060
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7024
    const v0, 0x7f10008f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3062
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
