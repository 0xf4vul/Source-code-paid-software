.class public Lcom/piriform/ccleaner/ui/activity/CleanCacheActivity;
.super Lcom/piriform/ccleaner/ui/activity/a;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/s/f;


# instance fields
.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/piriform/ccleaner/core/a/j;

.field private o:J

.field private p:Lcom/piriform/ccleaner/ui/fragment/aq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/a;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/CleanCacheActivity;->m:Ljava/util/List;

    .line 29
    new-instance v0, Lcom/piriform/ccleaner/core/a/j;

    invoke-direct {v0}, Lcom/piriform/ccleaner/core/a/j;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/CleanCacheActivity;->n:Lcom/piriform/ccleaner/core/a/j;

    return-void
.end method

.method private a(Lcom/piriform/ccleaner/ui/fragment/aq$a;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/CleanCacheActivity;->p:Lcom/piriform/ccleaner/ui/fragment/aq;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/ui/fragment/aq;->a(Lcom/piriform/ccleaner/ui/fragment/aq$a;)V

    .line 98
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/CleanCacheActivity;->f()V

    .line 99
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/CleanCacheActivity;->n:Lcom/piriform/ccleaner/core/a/j;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/j;->a()V

    .line 104
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/CleanCacheActivity;->p:Lcom/piriform/ccleaner/ui/fragment/aq;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/CleanCacheActivity;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/fragment/aq;->a(Ljava/util/List;)V

    .line 106
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/CleanCacheActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 107
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/activity/CleanCacheActivity;->n:Lcom/piriform/ccleaner/core/a/j;

    new-instance v3, Lcom/piriform/ccleaner/ui/b/g;

    invoke-direct {v3, v0, p0}, Lcom/piriform/ccleaner/ui/b/g;-><init>(Lcom/piriform/ccleaner/core/data/AndroidPackage;Lcom/piriform/ccleaner/s/f;)V

    invoke-virtual {v2, v3}, Lcom/piriform/ccleaner/core/a/j;->a(Lcom/piriform/ccleaner/core/a/b;)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/CleanCacheActivity;->n:Lcom/piriform/ccleaner/core/a/j;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/j;->c()V

    .line 110
    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/core/data/AndroidPackage;)V
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p1}, Lcom/piriform/ccleaner/core/data/AndroidPackage;->b()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/activity/CleanCacheActivity;->startActivity(Landroid/content/Intent;)V

    .line 115
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/activity/a;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/activity/CleanCacheActivity;->setContentView(I)V

    .line 38
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/aq;

    sget-object v3, Lcom/piriform/ccleaner/ui/fragment/aq$a;->c:Lcom/piriform/ccleaner/ui/fragment/aq$a;

    invoke-direct {v0, v3}, Lcom/piriform/ccleaner/ui/fragment/aq;-><init>(Lcom/piriform/ccleaner/ui/fragment/aq$a;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/CleanCacheActivity;->p:Lcom/piriform/ccleaner/ui/fragment/aq;

    .line 1055
    invoke-static {p0}, Lcom/piriform/ccleaner/CCleanerApplication;->a(Landroid/content/Context;)Lcom/piriform/ccleaner/CCleanerApplication;

    move-result-object v0

    .line 1128
    iget-object v0, v0, Lcom/piriform/ccleaner/CCleanerApplication;->a:Lcom/piriform/ccleaner/a/g;

    .line 1056
    sget-object v3, Lcom/piriform/ccleaner/a/h;->d:Lcom/piriform/ccleaner/a/h;

    invoke-virtual {v0, v3}, Lcom/piriform/ccleaner/a/g;->a(Lcom/piriform/ccleaner/a/h;)Lcom/piriform/ccleaner/a/a/d;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/a/i;

    .line 1059
    if-eqz v0, :cond_0

    .line 1060
    iget-object v3, p0, Lcom/piriform/ccleaner/ui/activity/CleanCacheActivity;->m:Ljava/util/List;

    .line 2109
    iget-object v4, v0, Lcom/piriform/ccleaner/a/a/i;->i:Ljava/util/List;

    .line 1060
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2257
    iget-object v0, v0, Lcom/piriform/ccleaner/a/a/a;->h:Lcom/piriform/ccleaner/core/i;

    .line 3076
    iget-wide v4, v0, Lcom/piriform/ccleaner/core/i;->b:J

    .line 1061
    iput-wide v4, p0, Lcom/piriform/ccleaner/ui/activity/CleanCacheActivity;->o:J

    .line 4051
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/CleanCacheActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 42
    :goto_0
    if-eqz v0, :cond_2

    .line 5024
    const v0, 0x7f10008d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4066
    check-cast v0, Landroid/widget/ListView;

    .line 4067
    new-instance v3, Lcom/piriform/ccleaner/core/a/i;

    iget-object v4, p0, Lcom/piriform/ccleaner/ui/activity/CleanCacheActivity;->n:Lcom/piriform/ccleaner/core/a/j;

    invoke-direct {v3, p0, v4}, Lcom/piriform/ccleaner/core/a/i;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/core/a/j;)V

    .line 4068
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6024
    const v0, 0x7f10008c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4069
    check-cast v0, Lcom/piriform/ccleaner/ui/view/InfoBarView;

    .line 4070
    const v3, 0x7f080125

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/piriform/ccleaner/ui/activity/CleanCacheActivity;->m:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget-wide v6, p0, Lcom/piriform/ccleaner/ui/activity/CleanCacheActivity;->o:J

    invoke-static {v6, v7}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/piriform/ccleaner/ui/activity/CleanCacheActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/InfoBarView;->setLeftText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/CleanCacheActivity;->f()V

    .line 48
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 4051
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/CleanCacheActivity;->finish()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/CleanCacheActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 76
    const v1, 0x7f110001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 77
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/activity/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 82
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 83
    packed-switch v1, :pswitch_data_0

    .line 91
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/activity/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 85
    :pswitch_0
    sget-object v1, Lcom/piriform/ccleaner/ui/fragment/aq$a;->c:Lcom/piriform/ccleaner/ui/fragment/aq$a;

    invoke-direct {p0, v1}, Lcom/piriform/ccleaner/ui/activity/CleanCacheActivity;->a(Lcom/piriform/ccleaner/ui/fragment/aq$a;)V

    goto :goto_0

    .line 88
    :pswitch_1
    sget-object v1, Lcom/piriform/ccleaner/ui/fragment/aq$a;->a:Lcom/piriform/ccleaner/ui/fragment/aq$a;

    invoke-direct {p0, v1}, Lcom/piriform/ccleaner/ui/activity/CleanCacheActivity;->a(Lcom/piriform/ccleaner/ui/fragment/aq$a;)V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x7f10017f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
