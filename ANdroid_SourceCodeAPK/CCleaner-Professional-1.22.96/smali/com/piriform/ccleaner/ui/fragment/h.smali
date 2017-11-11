.class public final Lcom/piriform/ccleaner/ui/fragment/h;
.super Lcom/piriform/ccleaner/ui/fragment/aa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/ui/fragment/aa",
        "<",
        "Lcom/piriform/ccleaner/a/a/j;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/piriform/ccleaner/d/c;

.field private c:Lcom/piriform/ccleaner/core/data/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/aa;-><init>()V

    return-void
.end method

.method private O()Lcom/piriform/ccleaner/core/data/e;
    .locals 2

    .prologue
    .line 132
    .line 1568
    iget-object v0, p0, Landroid/support/v4/app/h;->p:Landroid/os/Bundle;

    .line 132
    const-string/jumbo v1, "ARG_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/e;

    return-object v0
.end method

.method public static a(Lcom/piriform/ccleaner/core/data/e;)Lcom/piriform/ccleaner/ui/fragment/h;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/h;

    invoke-direct {v0}, Lcom/piriform/ccleaner/ui/fragment/h;-><init>()V

    .line 33
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 34
    const-string/jumbo v2, "ARG_TYPE"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 35
    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/fragment/h;->e(Landroid/os/Bundle;)V

    .line 36
    return-object v0
.end method


# virtual methods
.method protected final I()Lcom/piriform/ccleaner/a/h;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/piriform/ccleaner/a/h;->a:Lcom/piriform/ccleaner/a/h;

    return-object v0
.end method

.method protected final J()V
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/h;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->c()Ljava/util/List;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/h;->b:Lcom/piriform/ccleaner/d/c;

    .line 1022
    new-instance v2, Lcom/piriform/ccleaner/k/a/d;

    iget-object v3, v1, Lcom/piriform/ccleaner/d/c;->a:Lcom/piriform/ccleaner/a/a/j;

    invoke-direct {v2, v3, v1}, Lcom/piriform/ccleaner/k/a/d;-><init>(Lcom/piriform/ccleaner/a/a/j;Lcom/piriform/ccleaner/d/c;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-virtual {v2, v1}, Lcom/piriform/ccleaner/k/a/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 113
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/piriform/ccleaner/ui/fragment/aa;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/h;->U()Landroid/widget/ListView;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_0

    .line 83
    const v2, 0x7f10000c

    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/h;->O()Lcom/piriform/ccleaner/core/data/e;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setTag(ILjava/lang/Object;)V

    .line 85
    :cond_0
    return-object v0
.end method

.method protected final a(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/h;->h()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090008

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/fragment/aa;->a(Landroid/app/Activity;)V

    .line 72
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/h;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Lcom/novoda/notils/b/a;

    const-string/jumbo v1, "Cannot start this fragment without correct arguments"

    invoke-direct {v0, v1}, Lcom/novoda/notils/b/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/h;->O()Lcom/piriform/ccleaner/core/data/e;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/h;->c:Lcom/piriform/ccleaner/core/data/e;

    .line 76
    return-void
.end method

.method protected final synthetic a(Lcom/piriform/ccleaner/a/a/a;)V
    .locals 6

    .prologue
    .line 26
    check-cast p1, Lcom/piriform/ccleaner/a/a/j;

    .line 2046
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/h;->c:Lcom/piriform/ccleaner/core/data/e;

    .line 2117
    iget-object v1, p1, Lcom/piriform/ccleaner/a/a/j;->i:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/piriform/ccleaner/a/a/j;->a(Ljava/util/List;Lcom/piriform/ccleaner/core/data/e;)Ljava/util/List;

    move-result-object v1

    .line 2048
    new-instance v0, Lcom/piriform/ccleaner/core/a/c;

    const-class v2, Lcom/piriform/ccleaner/core/data/e;

    iget-object v3, p0, Lcom/piriform/ccleaner/ui/fragment/h;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-direct {v0, v2, v3}, Lcom/piriform/ccleaner/core/a/c;-><init>(Ljava/lang/Class;Lcom/piriform/ccleaner/core/a/e;)V

    .line 2049
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/h;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v2, v0}, Lcom/piriform/ccleaner/core/a/h;->a(Lcom/piriform/ccleaner/core/a/c;)V

    .line 3055
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/h;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->f()V

    .line 3056
    new-instance v0, Lcom/piriform/ccleaner/ui/b/p;

    invoke-direct {v0}, Lcom/piriform/ccleaner/ui/b/p;-><init>()V

    .line 3057
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/d;

    .line 3058
    invoke-static {v0}, Lcom/piriform/ccleaner/ui/b/p;->a(Ljava/lang/Object;)Lcom/piriform/ccleaner/core/a/b;

    move-result-object v0

    .line 3059
    iget-object v3, p0, Lcom/piriform/ccleaner/ui/fragment/h;->ac:Lcom/piriform/ccleaner/core/a/h;

    sget-object v4, Lcom/piriform/ccleaner/a/c;->a:Lcom/piriform/ccleaner/a/c;

    invoke-virtual {v3, v0, v4}, Lcom/piriform/ccleaner/core/a/h;->b(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/a/c;)V

    goto :goto_0

    .line 2051
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 3064
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/h;->g()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/i;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090005

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 3065
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3066
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/h;->i:Lcom/piriform/ccleaner/ui/view/InfoBarView;

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/ui/view/InfoBarView;->setLeftText(Ljava/lang/CharSequence;)V

    .line 26
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/ui/activity/c;)V
    .locals 3

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/h;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    sget-object v0, Lcom/piriform/ccleaner/ui/activity/c;->c:Lcom/piriform/ccleaner/ui/activity/c;

    if-ne p1, v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/h;->f:Landroid/widget/TextView;

    const v1, 0x7f08007f

    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/ui/fragment/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/h;->g:Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/h;->g:Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/h;->aa:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;->setDisplayedChild(I)V

    .line 96
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/h;->e:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/h;->T()V

    .line 107
    return-void
.end method

.method protected final synthetic b(Lcom/piriform/ccleaner/a/a/a;)V
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/piriform/ccleaner/a/a/j;

    .line 3102
    new-instance v0, Lcom/piriform/ccleaner/d/c;

    invoke-direct {v0, p1, p0}, Lcom/piriform/ccleaner/d/c;-><init>(Lcom/piriform/ccleaner/a/a/j;Lcom/piriform/ccleaner/ui/fragment/h;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/h;->b:Lcom/piriform/ccleaner/d/c;

    .line 26
    return-void
.end method

.method protected final r_()Ljava/lang/String;
    .locals 6

    .prologue
    .line 122
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/h;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->getGroupCount()I

    move-result v0

    .line 123
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/h;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090005

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final t_()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method
