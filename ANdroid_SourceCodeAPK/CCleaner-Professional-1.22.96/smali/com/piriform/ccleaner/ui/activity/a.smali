.class public abstract Lcom/piriform/ccleaner/ui/activity/a;
.super Landroid/support/v7/app/e;
.source "SourceFile"


# instance fields
.field public r:Lcom/piriform/ccleaner/ui/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v7/app/e;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 26
    invoke-super {p0}, Landroid/support/v7/app/e;->onContentChanged()V

    .line 1058
    new-instance v0, Lcom/c/a/a;

    invoke-direct {v0, p0}, Lcom/c/a/a;-><init>(Landroid/app/Activity;)V

    .line 1141
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/c/a/a;->b:Z

    .line 1142
    iget-boolean v1, v0, Lcom/c/a/a;->a:Z

    if-eqz v1, :cond_0

    .line 1143
    iget-object v1, v0, Lcom/c/a/a;->c:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1060
    :cond_0
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0093

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1209
    iget-boolean v2, v0, Lcom/c/a/a;->a:Z

    if-eqz v2, :cond_1

    .line 1210
    iget-object v0, v0, Lcom/c/a/a;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 28
    :cond_1
    new-instance v0, Lcom/piriform/ccleaner/ui/f;

    invoke-direct {v0}, Lcom/piriform/ccleaner/ui/f;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/a;->r:Lcom/piriform/ccleaner/ui/f;

    .line 29
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/a;->r:Lcom/piriform/ccleaner/ui/f;

    .line 3024
    const v0, 0x7f10008b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2021
    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, v1, Lcom/piriform/ccleaner/ui/f;->a:Landroid/support/v7/widget/Toolbar;

    .line 2022
    iget-object v0, v1, Lcom/piriform/ccleaner/ui/f;->a:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_2

    .line 2023
    iget-object v0, v1, Lcom/piriform/ccleaner/ui/f;->a:Landroid/support/v7/widget/Toolbar;

    .line 3130
    invoke-virtual {p0}, Landroid/support/v7/app/e;->e()Landroid/support/v7/app/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/g;->a(Landroid/support/v7/widget/Toolbar;)V

    .line 4110
    invoke-virtual {p0}, Landroid/support/v7/app/e;->e()Landroid/support/v7/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/g;->a()Landroid/support/v7/app/a;

    move-result-object v0

    .line 5033
    const/4 v1, 0x0

    sget-object v2, Lcom/piriform/ccleaner/h$a;->ActionBar:[I

    const v3, 0x7f010049

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 5036
    const/4 v2, 0x3

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 5038
    invoke-virtual {v0, v2}, Landroid/support/v7/app/a;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5040
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5041
    :cond_2
    return-void

    .line 5040
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 48
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 49
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/a;->finish()V

    .line 51
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/e;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/support/v7/app/e;->onStart()V

    .line 35
    invoke-static {p0}, Lcom/piriform/ccleaner/CCleanerApplication;->a(Landroid/content/Context;)Lcom/piriform/ccleaner/CCleanerApplication;

    move-result-object v0

    .line 5123
    iget-object v0, v0, Lcom/piriform/ccleaner/CCleanerApplication;->f:Lcom/piriform/ccleaner/b/a;

    .line 36
    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/b/a;->a(Landroid/app/Activity;)V

    .line 37
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/support/v7/app/e;->onStop()V

    .line 42
    invoke-static {p0}, Lcom/piriform/ccleaner/CCleanerApplication;->a(Landroid/content/Context;)Lcom/piriform/ccleaner/CCleanerApplication;

    move-result-object v0

    .line 6123
    iget-object v0, v0, Lcom/piriform/ccleaner/CCleanerApplication;->f:Lcom/piriform/ccleaner/b/a;

    .line 43
    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/b/a;->b(Landroid/app/Activity;)V

    .line 44
    return-void
.end method
