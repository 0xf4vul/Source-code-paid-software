.class public Lcom/piriform/ccleaner/settings/analysis/AnalysisCustomizationActivity;
.super Lcom/piriform/ccleaner/ui/activity/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/a;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/piriform/ccleaner/settings/analysis/AnalysisCustomizationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    const-string/jumbo v1, "cleanType"

    sget-object v2, Lcom/piriform/ccleaner/cleaning/g;->c:Lcom/piriform/ccleaner/cleaning/g;

    .line 1027
    iget-object v2, v2, Lcom/piriform/ccleaner/cleaning/g;->d:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const-string/jumbo v1, "scheduledCleanId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 30
    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/piriform/ccleaner/settings/analysis/AnalysisCustomizationActivity;->c()Landroid/support/v4/app/m;

    move-result-object v0

    const v1, 0x7f100084

    invoke-virtual {v0, v1}, Landroid/support/v4/app/m;->a(I)Landroid/support/v4/app/h;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;

    .line 61
    if-eqz v0, :cond_0

    .line 1198
    iget-object v1, v0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->e:Lcom/piriform/ccleaner/ui/view/WarningDialogView;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1199
    iget-object v1, v0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->f:Lcom/piriform/ccleaner/settings/analysis/a$a;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/settings/analysis/a$a;->a()V

    .line 1200
    iget-object v0, v0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->e:Lcom/piriform/ccleaner/ui/view/WarningDialogView;

    .line 2093
    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->getHidingAnimation()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1201
    const/4 v0, 0x1

    .line 61
    :goto_0
    if-nez v0, :cond_1

    .line 62
    :cond_0
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/activity/a;->onBackPressed()V

    .line 64
    :cond_1
    return-void

    .line 1203
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/activity/a;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/settings/analysis/AnalysisCustomizationActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/piriform/ccleaner/settings/analysis/AnalysisCustomizationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "cleanType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/piriform/ccleaner/cleaning/g;->a:Lcom/piriform/ccleaner/cleaning/g;

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/cleaning/g;->a(Ljava/lang/String;Lcom/piriform/ccleaner/cleaning/g;)Lcom/piriform/ccleaner/cleaning/g;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/piriform/ccleaner/settings/analysis/AnalysisCustomizationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "scheduledCleanId"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 41
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->a(Lcom/piriform/ccleaner/cleaning/g;Ljava/lang/Long;)Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lcom/piriform/ccleaner/settings/analysis/AnalysisCustomizationActivity;->c()Landroid/support/v4/app/m;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/q;

    move-result-object v1

    const v2, 0x7f100084

    .line 44
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/q;->b(ILandroid/support/v4/app/h;)Landroid/support/v4/app/q;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/support/v4/app/q;->a()I

    .line 46
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 50
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 51
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/piriform/ccleaner/settings/analysis/AnalysisCustomizationActivity;->finish()V

    .line 53
    const/4 v0, 0x1

    .line 55
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/activity/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
