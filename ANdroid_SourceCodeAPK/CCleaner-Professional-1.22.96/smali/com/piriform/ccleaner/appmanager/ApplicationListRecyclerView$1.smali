.class final Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView$1;
.super Landroid/support/v7/widget/RecyclerView$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;)V
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView$1;->a:Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(II)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 14
    .line 1020
    iget-object v2, p0, Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView$1;->a:Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;

    invoke-static {v2}, Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;->a(Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->j()I

    move-result v2

    .line 1021
    iget-object v3, p0, Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView$1;->a:Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;

    invoke-static {v3}, Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;->a(Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager;->k()I

    move-result v3

    .line 1022
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    add-int v4, p1, p2

    .line 1026
    if-lt v4, v2, :cond_3

    if-gt v4, v3, :cond_3

    move v2, v1

    .line 1022
    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 14
    :cond_1
    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView$1;->a:Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;->c(I)V

    .line 17
    :cond_2
    return-void

    :cond_3
    move v2, v0

    .line 1026
    goto :goto_0
.end method
