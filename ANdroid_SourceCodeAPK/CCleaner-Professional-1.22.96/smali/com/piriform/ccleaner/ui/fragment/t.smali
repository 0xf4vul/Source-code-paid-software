.class public abstract Lcom/piriform/ccleaner/ui/fragment/t;
.super Landroid/support/v4/app/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/piriform/ccleaner/a/a/a;",
        ">",
        "Landroid/support/v4/app/h;"
    }
.end annotation


# instance fields
.field a:Landroid/widget/ExpandableListView;

.field protected b:Lcom/piriform/ccleaner/core/a/h;

.field final c:Lcom/piriform/ccleaner/a/h;


# direct methods
.method protected constructor <init>(Lcom/piriform/ccleaner/a/h;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/h;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/t;->c:Lcom/piriform/ccleaner/a/h;

    .line 38
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/t;->g()Landroid/support/v4/app/i;

    move-result-object v1

    .line 1068
    invoke-static {v1}, Lcom/piriform/ccleaner/CCleanerApplication;->a(Landroid/content/Context;)Lcom/piriform/ccleaner/CCleanerApplication;

    move-result-object v0

    .line 1128
    iget-object v0, v0, Lcom/piriform/ccleaner/CCleanerApplication;->a:Lcom/piriform/ccleaner/a/g;

    .line 2084
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/t;->c:Lcom/piriform/ccleaner/a/h;

    .line 1069
    invoke-virtual {v0, v2}, Lcom/piriform/ccleaner/a/g;->a(Lcom/piriform/ccleaner/a/h;)Lcom/piriform/ccleaner/a/a/d;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/piriform/ccleaner/a/a/a;

    .line 46
    if-nez v6, :cond_0

    .line 48
    invoke-virtual {v1}, Landroid/support/v4/app/i;->finish()V

    .line 55
    :goto_0
    return-object v3

    .line 50
    :cond_0
    const v0, 0x7f030046

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 3016
    const v0, 0x7f1000e0

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/t;->a:Landroid/widget/ExpandableListView;

    .line 3060
    new-instance v0, Lcom/piriform/ccleaner/core/a/h;

    .line 3061
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/t;->g()Landroid/support/v4/app/i;

    move-result-object v1

    .line 3062
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/t;->g()Landroid/support/v4/app/i;

    move-result-object v2

    invoke-static {v2}, Lcom/piriform/ccleaner/CCleanerApplication;->a(Landroid/content/Context;)Lcom/piriform/ccleaner/CCleanerApplication;

    move-result-object v2

    .line 3133
    iget-object v2, v2, Lcom/piriform/ccleaner/CCleanerApplication;->b:Lcom/piriform/ccleaner/n/a;

    .line 3062
    new-instance v4, Lcom/piriform/ccleaner/core/a/k;

    new-instance v8, Lcom/piriform/ccleaner/core/a/n;

    invoke-direct {v8}, Lcom/piriform/ccleaner/core/a/n;-><init>()V

    invoke-direct {v4, v8}, Lcom/piriform/ccleaner/core/a/k;-><init>(Lcom/piriform/ccleaner/core/a/f;)V

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/core/a/h;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/n/a;Lcom/piriform/ccleaner/core/a/h$a;Lcom/piriform/ccleaner/core/a/k;Z)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/t;->b:Lcom/piriform/ccleaner/core/a/h;

    .line 3064
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/t;->a:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/t;->b:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 53
    invoke-virtual {p0, v6}, Lcom/piriform/ccleaner/ui/fragment/t;->a(Lcom/piriform/ccleaner/a/a/a;)V

    move-object v3, v7

    goto :goto_0
.end method

.method protected abstract a(Lcom/piriform/ccleaner/a/a/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/piriform/ccleaner/core/data/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/t;->b:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->f()V

    .line 76
    new-instance v0, Lcom/piriform/ccleaner/ui/b/p;

    invoke-direct {v0}, Lcom/piriform/ccleaner/ui/b/p;-><init>()V

    .line 77
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/f;

    .line 78
    invoke-static {v0}, Lcom/piriform/ccleaner/ui/b/p;->a(Ljava/lang/Object;)Lcom/piriform/ccleaner/core/a/b;

    move-result-object v0

    .line 79
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/t;->b:Lcom/piriform/ccleaner/core/a/h;

    sget-object v3, Lcom/piriform/ccleaner/a/c;->a:Lcom/piriform/ccleaner/a/c;

    invoke-virtual {v2, v0, v3}, Lcom/piriform/ccleaner/core/a/h;->b(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/a/c;)V

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method
