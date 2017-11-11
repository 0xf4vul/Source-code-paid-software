.class public final Lcom/piriform/ccleaner/appmanager/g;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final a:Lcom/piriform/ccleaner/ui/view/InfoBarView;

.field private final b:Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;

.field private final c:Lcom/piriform/ccleaner/appmanager/o;

.field private final d:Lcom/piriform/ccleaner/q/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/q/c$a",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/piriform/ccleaner/appmanager/o;)V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Lcom/piriform/ccleaner/appmanager/g$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/appmanager/g$1;-><init>(Lcom/piriform/ccleaner/appmanager/g;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/g;->d:Lcom/piriform/ccleaner/q/c$a;

    .line 34
    iput-object p2, p0, Lcom/piriform/ccleaner/appmanager/g;->c:Lcom/piriform/ccleaner/appmanager/o;

    .line 36
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/g;->c:Lcom/piriform/ccleaner/appmanager/o;

    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/g;->d:Lcom/piriform/ccleaner/q/c$a;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/appmanager/o;->a(Lcom/piriform/ccleaner/q/c$a;)V

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1016
    const v0, 0x7f10008c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 39
    check-cast v0, Lcom/piriform/ccleaner/ui/view/InfoBarView;

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/g;->a:Lcom/piriform/ccleaner/ui/view/InfoBarView;

    .line 2016
    const v0, 0x7f10014e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 40
    check-cast v0, Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/g;->b:Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;

    .line 42
    new-instance v0, Lcom/piriform/ccleaner/appmanager/p;

    invoke-direct {v0, p2}, Lcom/piriform/ccleaner/appmanager/p;-><init>(Lcom/piriform/ccleaner/appmanager/o;)V

    .line 43
    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/g;->b:Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 45
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/piriform/ccleaner/appmanager/g;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2072
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/g;->c:Lcom/piriform/ccleaner/appmanager/o;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/appmanager/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2073
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/g;->c:Lcom/piriform/ccleaner/appmanager/o;

    .line 2122
    iget-object v0, v0, Lcom/piriform/ccleaner/appmanager/o;->c:Lcom/piriform/ccleaner/q/c;

    invoke-interface {v0}, Lcom/piriform/ccleaner/q/c;->e()I

    move-result v0

    .line 2074
    const v1, 0x7f090015

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 3082
    :goto_0
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/g;->c:Lcom/piriform/ccleaner/appmanager/o;

    .line 4065
    iget-wide v4, v0, Lcom/piriform/ccleaner/appmanager/o;->a:J

    .line 3082
    invoke-static {v4, v5}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v4

    .line 3083
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/g;->c:Lcom/piriform/ccleaner/appmanager/o;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/appmanager/o;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3084
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/g;->c:Lcom/piriform/ccleaner/appmanager/o;

    .line 4127
    const-wide/16 v2, 0x0

    .line 4128
    iget-object v0, v0, Lcom/piriform/ccleaner/appmanager/o;->c:Lcom/piriform/ccleaner/q/c;

    invoke-interface {v0}, Lcom/piriform/ccleaner/q/c;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 4129
    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/data/AndroidPackage;->a()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 4130
    goto :goto_1

    .line 2076
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/g;->c:Lcom/piriform/ccleaner/appmanager/o;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/appmanager/o;->b()I

    move-result v0

    .line 2077
    const v1, 0x7f090025

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 3084
    :cond_1
    invoke-static {v2, v3}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 3085
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_2
    iget-object v2, p0, Lcom/piriform/ccleaner/appmanager/g;->a:Lcom/piriform/ccleaner/ui/view/InfoBarView;

    invoke-virtual {v2, v1}, Lcom/piriform/ccleaner/ui/view/InfoBarView;->setLeftText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/g;->a:Lcom/piriform/ccleaner/ui/view/InfoBarView;

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/ui/view/InfoBarView;->setRightText(Ljava/lang/CharSequence;)V

    .line 69
    return-void

    .line 3087
    :cond_2
    const v0, 0x7f08015e

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v4, v3, v6

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public final getAppList()Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/g;->b:Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;

    return-object v0
.end method

.method public final setListAdapter(Lcom/piriform/ccleaner/appmanager/p;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/g;->b:Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 53
    return-void
.end method

.method public final setSpinnerVisible(Z)V
    .locals 2

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/g;->a:Lcom/piriform/ccleaner/ui/view/InfoBarView;

    .line 2051
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/view/InfoBarView;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/g;->a:Lcom/piriform/ccleaner/ui/view/InfoBarView;

    .line 2055
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/view/InfoBarView;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
