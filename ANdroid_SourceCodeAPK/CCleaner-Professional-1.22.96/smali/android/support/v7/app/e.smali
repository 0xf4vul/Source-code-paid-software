.class public Landroid/support/v7/app/e;
.super Landroid/support/v4/app/i;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/ap$a;
.implements Landroid/support/v7/app/b$b;
.implements Landroid/support/v7/app/f;


# instance fields
.field private m:Landroid/support/v7/app/g;

.field private n:I

.field private o:Z

.field private p:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/i;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/e;->n:I

    return-void
.end method

.method private f()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 392
    .line 1430
    invoke-static {p0}, Landroid/support/v4/app/v;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_6

    .line 1447
    invoke-static {p0, v0}, Landroid/support/v4/app/v;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v2

    .line 395
    if-eqz v2, :cond_5

    .line 396
    invoke-static {p0}, Landroid/support/v4/app/ap;->a(Landroid/content/Context;)Landroid/support/v4/app/ap;

    move-result-object v3

    .line 3198
    const/4 v0, 0x0

    .line 3199
    instance-of v2, p0, Landroid/support/v4/app/ap$a;

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 3200
    check-cast v0, Landroid/support/v4/app/ap$a;

    invoke-interface {v0}, Landroid/support/v4/app/ap$a;->a_()Landroid/content/Intent;

    move-result-object v0

    .line 3202
    :cond_0
    if-nez v0, :cond_7

    .line 3203
    invoke-static {p0}, Landroid/support/v4/app/v;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    move-object v2, v0

    .line 3206
    :goto_0
    if-eqz v2, :cond_2

    .line 3209
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 3210
    if-nez v0, :cond_1

    .line 3211
    iget-object v0, v3, Landroid/support/v4/app/ap;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 3213
    :cond_1
    invoke-virtual {v3, v0}, Landroid/support/v4/app/ap;->a(Landroid/content/ComponentName;)Landroid/support/v4/app/ap;

    .line 4162
    iget-object v0, v3, Landroid/support/v4/app/ap;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4319
    :cond_2
    iget-object v0, v3, Landroid/support/v4/app/ap;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4320
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4324
    :cond_3
    iget-object v0, v3, Landroid/support/v4/app/ap;->a:Ljava/util/ArrayList;

    iget-object v2, v3, Landroid/support/v4/app/ap;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/Intent;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    .line 4325
    new-instance v2, Landroid/content/Intent;

    aget-object v4, v0, v1

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v4, 0x1000c000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v0, v1

    .line 4328
    iget-object v1, v3, Landroid/support/v4/app/ap;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/support/v4/b/b;->a(Landroid/content/Context;[Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 4329
    new-instance v1, Landroid/content/Intent;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 4330
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4331
    iget-object v0, v3, Landroid/support/v4/app/ap;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 402
    :cond_4
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_1
    const/4 v0, 0x1

    .line 415
    :goto_2
    return v0

    .line 406
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/support/v7/app/e;->finish()V

    goto :goto_1

    .line 4463
    :cond_5
    invoke-static {p0, v0}, Landroid/support/v4/app/v;->b(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_1

    :cond_6
    move v0, v1

    .line 415
    goto :goto_2

    :cond_7
    move-object v2, v0

    goto :goto_0
.end method


# virtual methods
.method public final A_()V
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Landroid/support/v7/app/e;->e()Landroid/support/v7/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/g;->g()V

    .line 240
    return-void
.end method

.method public final a_()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 430
    invoke-static {p0}, Landroid/support/v4/app/v;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/support/v7/app/e;->e()Landroid/support/v7/app/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/g;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    return-void
.end method

.method public final d()Landroid/support/v7/app/b$a;
    .locals 1

    .prologue
    .line 482
    invoke-virtual {p0}, Landroid/support/v7/app/e;->e()Landroid/support/v7/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/g;->i()Landroid/support/v7/app/b$a;

    move-result-object v0

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 526
    invoke-static {p1}, Landroid/support/v4/view/f;->c(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 527
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v1, v1, -0x7001

    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_1

    .line 529
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 530
    if-nez v1, :cond_0

    .line 5110
    invoke-virtual {p0}, Landroid/support/v7/app/e;->e()Landroid/support/v7/app/g;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/g;->a()Landroid/support/v7/app/a;

    move-result-object v1

    .line 532
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/app/a;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/app/a;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 533
    iput-boolean v0, p0, Landroid/support/v7/app/e;->o:Z

    .line 541
    :goto_0
    return v0

    .line 536
    :cond_0
    if-ne v1, v0, :cond_1

    iget-boolean v1, p0, Landroid/support/v7/app/e;->o:Z

    if-eqz v1, :cond_1

    .line 537
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/app/e;->o:Z

    goto :goto_0

    .line 541
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/i;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final e()Landroid/support/v7/app/g;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Landroid/support/v7/app/e;->m:Landroid/support/v7/app/g;

    if-nez v0, :cond_0

    .line 519
    invoke-static {p0, p0}, Landroid/support/v7/app/g;->a(Landroid/app/Activity;Landroid/support/v7/app/f;)Landroid/support/v7/app/g;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/e;->m:Landroid/support/v7/app/g;

    .line 521
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/e;->m:Landroid/support/v7/app/g;

    return-object v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/support/v7/app/e;->e()Landroid/support/v7/app/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/g;->a(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/support/v7/app/e;->e()Landroid/support/v7/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/g;->b()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Landroid/support/v7/app/e;->p:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/support/v7/widget/aw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    new-instance v0, Landroid/support/v7/widget/aw;

    invoke-super {p0}, Landroid/support/v4/app/i;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/aw;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/support/v7/app/e;->p:Landroid/content/res/Resources;

    .line 549
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/e;->p:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/support/v4/app/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/e;->p:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Landroid/support/v7/app/e;->e()Landroid/support/v7/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/g;->g()V

    .line 245
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 161
    invoke-virtual {p0}, Landroid/support/v7/app/e;->e()Landroid/support/v7/app/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/g;->a(Landroid/content/res/Configuration;)V

    .line 162
    iget-object v0, p0, Landroid/support/v7/app/e;->p:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 165
    invoke-super {p0}, Landroid/support/v4/app/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 166
    iget-object v1, p0, Landroid/support/v7/app/e;->p:Landroid/content/res/Resources;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 168
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 470
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/support/v7/app/e;->e()Landroid/support/v7/app/g;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/support/v7/app/g;->j()V

    .line 73
    invoke-virtual {v0, p1}, Landroid/support/v7/app/g;->a(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {v0}, Landroid/support/v7/app/g;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/app/e;->n:I

    if-eqz v0, :cond_0

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 80
    invoke-virtual {p0}, Landroid/support/v7/app/e;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/app/e;->n:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/app/e;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 85
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onCreate(Landroid/os/Bundle;)V

    .line 86
    return-void

    .line 82
    :cond_1
    iget v0, p0, Landroid/support/v7/app/e;->n:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/e;->setTheme(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Landroid/support/v4/app/i;->onDestroy()V

    .line 210
    invoke-virtual {p0}, Landroid/support/v7/app/e;->e()Landroid/support/v7/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/g;->h()V

    .line 211
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 195
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/i;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    .line 1110
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/e;->e()Landroid/support/v7/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/g;->a()Landroid/support/v7/app/a;

    move-result-object v0

    .line 200
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {v0}, Landroid/support/v7/app/a;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 202
    invoke-direct {p0}, Landroid/support/v7/app/e;->f()Z

    move-result v0

    goto :goto_0

    .line 204
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 493
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/i;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .prologue
    .line 504
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/i;->onPanelClosed(ILandroid/view/Menu;)V

    .line 505
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onPostCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Landroid/support/v7/app/e;->e()Landroid/support/v7/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/g;->c()V

    .line 99
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Landroid/support/v4/app/i;->onPostResume()V

    .line 173
    invoke-virtual {p0}, Landroid/support/v7/app/e;->e()Landroid/support/v7/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/g;->f()V

    .line 174
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 509
    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 510
    invoke-virtual {p0}, Landroid/support/v7/app/e;->e()Landroid/support/v7/app/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/g;->b(Landroid/os/Bundle;)V

    .line 511
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Landroid/support/v4/app/i;->onStart()V

    .line 179
    invoke-virtual {p0}, Landroid/support/v7/app/e;->e()Landroid/support/v7/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/g;->d()V

    .line 180
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Landroid/support/v4/app/i;->onStop()V

    .line 185
    invoke-virtual {p0}, Landroid/support/v7/app/e;->e()Landroid/support/v7/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/g;->e()V

    .line 186
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/i;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 216
    invoke-virtual {p0}, Landroid/support/v7/app/e;->e()Landroid/support/v7/app/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/g;->a(Ljava/lang/CharSequence;)V

    .line 217
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Landroid/support/v7/app/e;->e()Landroid/support/v7/app/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/g;->b(I)V

    .line 141
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/support/v7/app/e;->e()Landroid/support/v7/app/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/g;->a(Landroid/view/View;)V

    .line 146
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/support/v7/app/e;->e()Landroid/support/v7/app/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/g;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    return-void
.end method

.method public setTheme(I)V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/app/i;->setTheme(I)V

    .line 92
    iput p1, p0, Landroid/support/v7/app/e;->n:I

    .line 93
    return-void
.end method
