.class public final Lcom/piriform/ccleaner/ui/fragment/m;
.super Lcom/piriform/ccleaner/ui/fragment/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/ui/fragment/n",
        "<",
        "Lcom/piriform/ccleaner/a/a/o;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/n;-><init>()V

    return-void
.end method


# virtual methods
.method protected final I()Lcom/piriform/ccleaner/a/h;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/piriform/ccleaner/a/h;->s:Lcom/piriform/ccleaner/a/h;

    return-object v0
.end method

.method protected final K()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/m;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/content/ContentResolver;Lcom/piriform/ccleaner/f/m;)Lcom/piriform/ccleaner/f/p;
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lcom/piriform/ccleaner/a/a/p;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/m;->O()Lcom/piriform/ccleaner/f/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/piriform/ccleaner/f/d;->h()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/piriform/ccleaner/a/a/p;-><init>(Lcom/piriform/ccleaner/f/m;Ljava/io/File;)V

    .line 51
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/m;->O()Lcom/piriform/ccleaner/f/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/piriform/ccleaner/f/d;->e()Ljava/io/File;

    move-result-object v1

    .line 53
    new-instance v2, Lcom/piriform/ccleaner/f/u;

    invoke-direct {v2, p2, v1, v0}, Lcom/piriform/ccleaner/f/u;-><init>(Lcom/piriform/ccleaner/f/m;Ljava/io/File;Lcom/piriform/ccleaner/v/b;)V

    .line 1088
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/piriform/ccleaner/f/u;->c:Z

    .line 56
    return-object v2
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
    .line 81
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/m;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 82
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/m;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090027

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

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .prologue
    .line 27
    const v0, 0x7f110006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 28
    const v0, 0x7f10017e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/m;->P()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 29
    return-void
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 33
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 34
    const v1, 0x7f100183

    if-ne v0, v1, :cond_0

    .line 35
    sget-object v0, Lcom/piriform/ccleaner/ui/fragment/ah$a;->b:Lcom/piriform/ccleaner/ui/fragment/ah$a;

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/m;->a(Lcom/piriform/ccleaner/ui/fragment/ah$a;)V

    .line 36
    const/4 v0, 0x1

    .line 38
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/fragment/n;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final b(Lcom/piriform/ccleaner/f/j;)Lcom/piriform/ccleaner/core/a/b;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/piriform/ccleaner/ui/b/l;

    invoke-direct {v0, p1}, Lcom/piriform/ccleaner/ui/b/l;-><init>(Lcom/piriform/ccleaner/f/j;)V

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f0800ae

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/m;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final q_()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method
