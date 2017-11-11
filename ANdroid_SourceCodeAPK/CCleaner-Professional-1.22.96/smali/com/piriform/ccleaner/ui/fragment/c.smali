.class public final Lcom/piriform/ccleaner/ui/fragment/c;
.super Lcom/piriform/ccleaner/ui/fragment/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/ui/fragment/t",
        "<",
        "Lcom/piriform/ccleaner/a/a/j;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Lcom/piriform/ccleaner/core/data/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/piriform/ccleaner/a/h;->a:Lcom/piriform/ccleaner/a/h;

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/t;-><init>(Lcom/piriform/ccleaner/a/h;)V

    .line 27
    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/core/data/e;)Lcom/piriform/ccleaner/ui/fragment/c;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/c;

    invoke-direct {v0}, Lcom/piriform/ccleaner/ui/fragment/c;-><init>()V

    .line 31
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 32
    const-string/jumbo v2, "ARG_TYPE"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 33
    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/fragment/c;->e(Landroid/os/Bundle;)V

    .line 34
    return-object v0
.end method

.method private b()Lcom/piriform/ccleaner/core/data/e;
    .locals 2

    .prologue
    .line 65
    .line 1568
    iget-object v0, p0, Landroid/support/v4/app/h;->p:Landroid/os/Bundle;

    .line 65
    const-string/jumbo v1, "ARG_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/e;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/piriform/ccleaner/ui/fragment/t;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 1088
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/t;->a:Landroid/widget/ExpandableListView;

    .line 50
    if-eqz v1, :cond_0

    .line 51
    const v2, 0x7f10000c

    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/c;->b()Lcom/piriform/ccleaner/core/data/e;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setTag(ILjava/lang/Object;)V

    .line 53
    :cond_0
    return-object v0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/fragment/t;->a(Landroid/app/Activity;)V

    .line 40
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/c;->b()Lcom/piriform/ccleaner/core/data/e;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/c;->d:Lcom/piriform/ccleaner/core/data/e;

    .line 41
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/c;->d:Lcom/piriform/ccleaner/core/data/e;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callType not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    return-void
.end method

.method protected final synthetic a(Lcom/piriform/ccleaner/a/a/a;)V
    .locals 4

    .prologue
    .line 20
    check-cast p1, Lcom/piriform/ccleaner/a/a/j;

    .line 2058
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/c;->d:Lcom/piriform/ccleaner/core/data/e;

    .line 2163
    iget-object v1, p1, Lcom/piriform/ccleaner/a/a/j;->k:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/piriform/ccleaner/a/a/j;->a(Ljava/util/List;Lcom/piriform/ccleaner/core/data/e;)Ljava/util/List;

    move-result-object v0

    .line 2059
    new-instance v1, Lcom/piriform/ccleaner/core/a/c;

    const-class v2, Lcom/piriform/ccleaner/core/data/e;

    iget-object v3, p0, Lcom/piriform/ccleaner/ui/fragment/c;->b:Lcom/piriform/ccleaner/core/a/h;

    invoke-direct {v1, v2, v3}, Lcom/piriform/ccleaner/core/a/c;-><init>(Ljava/lang/Class;Lcom/piriform/ccleaner/core/a/e;)V

    .line 2060
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/c;->b:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v2, v1}, Lcom/piriform/ccleaner/core/a/h;->a(Lcom/piriform/ccleaner/core/a/c;)V

    .line 2061
    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/c;->a(Ljava/util/List;)V

    .line 20
    return-void
.end method
