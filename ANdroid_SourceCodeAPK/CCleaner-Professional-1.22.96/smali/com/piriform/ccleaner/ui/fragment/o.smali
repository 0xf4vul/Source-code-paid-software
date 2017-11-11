.class public final Lcom/piriform/ccleaner/ui/fragment/o;
.super Lcom/piriform/ccleaner/ui/fragment/aa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/ui/fragment/aa",
        "<",
        "Lcom/piriform/ccleaner/a/a/t;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/piriform/ccleaner/d/e;

.field private c:Lcom/piriform/ccleaner/core/data/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/aa;-><init>()V

    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/core/data/h;)Lcom/piriform/ccleaner/ui/fragment/o;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/o;

    invoke-direct {v0}, Lcom/piriform/ccleaner/ui/fragment/o;-><init>()V

    .line 30
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 31
    const-string/jumbo v2, "ARG_TYPE"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 32
    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/fragment/o;->e(Landroid/os/Bundle;)V

    .line 33
    return-object v0
.end method


# virtual methods
.method protected final I()Lcom/piriform/ccleaner/a/h;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/piriform/ccleaner/a/h;->b:Lcom/piriform/ccleaner/a/h;

    return-object v0
.end method

.method protected final J()V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/o;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->c()Ljava/util/List;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/o;->b:Lcom/piriform/ccleaner/d/e;

    .line 2022
    new-instance v2, Lcom/piriform/ccleaner/k/a/f;

    iget-object v3, v1, Lcom/piriform/ccleaner/d/e;->a:Lcom/piriform/ccleaner/a/a/t;

    invoke-direct {v2, v3, v1}, Lcom/piriform/ccleaner/k/a/f;-><init>(Lcom/piriform/ccleaner/a/a/t;Lcom/piriform/ccleaner/d/e;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-virtual {v2, v1}, Lcom/piriform/ccleaner/k/a/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    return-void
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
    .line 108
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/o;->h()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090014

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
    .line 61
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/fragment/aa;->a(Landroid/app/Activity;)V

    .line 62
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/o;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Lcom/novoda/notils/b/a;

    const-string/jumbo v1, "Cannot start this fragment without correct arguments"

    invoke-direct {v0, v1}, Lcom/novoda/notils/b/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1568
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/h;->p:Landroid/os/Bundle;

    .line 65
    const-string/jumbo v1, "ARG_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/h;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/o;->c:Lcom/piriform/ccleaner/core/data/h;

    .line 66
    return-void
.end method

.method protected final synthetic a(Lcom/piriform/ccleaner/a/a/a;)V
    .locals 4

    .prologue
    .line 23
    check-cast p1, Lcom/piriform/ccleaner/a/a/t;

    .line 2043
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/o;->c:Lcom/piriform/ccleaner/core/data/h;

    .line 2141
    iget-object v1, p1, Lcom/piriform/ccleaner/a/a/t;->i:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/piriform/ccleaner/a/a/t;->a(Ljava/util/List;Lcom/piriform/ccleaner/core/data/h;)Ljava/util/List;

    move-result-object v0

    .line 2045
    new-instance v1, Lcom/piriform/ccleaner/core/a/c;

    const-class v2, Lcom/piriform/ccleaner/core/data/h;

    iget-object v3, p0, Lcom/piriform/ccleaner/ui/fragment/o;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-direct {v1, v2, v3}, Lcom/piriform/ccleaner/core/a/c;-><init>(Ljava/lang/Class;Lcom/piriform/ccleaner/core/a/e;)V

    .line 2046
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/o;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v2, v1}, Lcom/piriform/ccleaner/core/a/h;->a(Lcom/piriform/ccleaner/core/a/c;)V

    .line 3051
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/o;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/core/a/h;->f()V

    .line 3052
    new-instance v1, Lcom/piriform/ccleaner/ui/b/p;

    invoke-direct {v1}, Lcom/piriform/ccleaner/ui/b/p;-><init>()V

    .line 3053
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/g;

    .line 3054
    invoke-static {v0}, Lcom/piriform/ccleaner/ui/b/p;->a(Ljava/lang/Object;)Lcom/piriform/ccleaner/core/a/b;

    move-result-object v0

    .line 3055
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/o;->ac:Lcom/piriform/ccleaner/core/a/h;

    sget-object v3, Lcom/piriform/ccleaner/a/c;->a:Lcom/piriform/ccleaner/a/c;

    invoke-virtual {v2, v0, v3}, Lcom/piriform/ccleaner/core/a/h;->b(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/a/c;)V

    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/ui/activity/c;)V
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/o;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    sget-object v0, Lcom/piriform/ccleaner/ui/activity/c;->c:Lcom/piriform/ccleaner/ui/activity/c;

    if-ne p1, v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/o;->f:Landroid/widget/TextView;

    const v1, 0x7f0800cc

    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/ui/fragment/o;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/o;->g:Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/o;->g:Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/o;->aa:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;->setDisplayedChild(I)V

    .line 76
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/o;->e:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/o;->T()V

    .line 87
    return-void
.end method

.method protected final synthetic b(Lcom/piriform/ccleaner/a/a/a;)V
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lcom/piriform/ccleaner/a/a/t;

    .line 3082
    new-instance v0, Lcom/piriform/ccleaner/d/e;

    invoke-direct {v0, p1, p0}, Lcom/piriform/ccleaner/d/e;-><init>(Lcom/piriform/ccleaner/a/a/t;Lcom/piriform/ccleaner/ui/fragment/o;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/o;->b:Lcom/piriform/ccleaner/d/e;

    .line 23
    return-void
.end method

.method protected final r_()Ljava/lang/String;
    .locals 6

    .prologue
    .line 102
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/o;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->getGroupCount()I

    move-result v0

    .line 103
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/o;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090011

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
    .line 97
    const/4 v0, 0x1

    return v0
.end method
