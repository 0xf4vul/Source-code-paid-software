.class final Lcom/piriform/ccleaner/storageanalyzer/frontend/a;
.super Landroid/support/v7/widget/RecyclerView$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/storageanalyzer/frontend/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v7/widget/LinearLayoutManager;

.field private final b:Lcom/piriform/ccleaner/storageanalyzer/frontend/a$a;

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/LinearLayoutManager;Lcom/piriform/ccleaner/storageanalyzer/frontend/a$a;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$l;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/a;->a:Landroid/support/v7/widget/LinearLayoutManager;

    .line 14
    iput-object p2, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/a;->b:Lcom/piriform/ccleaner/storageanalyzer/frontend/a$a;

    .line 15
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 19
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/a;->a:Landroid/support/v7/widget/LinearLayoutManager;

    .line 9365
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_1

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    .line 9366
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v0

    .line 20
    :goto_1
    iget-boolean v2, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/a;->c:Z

    if-eqz v2, :cond_3

    .line 21
    iget v2, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/a;->d:I

    if-le v0, v2, :cond_0

    .line 22
    iput-boolean v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/a;->c:Z

    .line 32
    :cond_0
    :goto_2
    return-void

    .line 9365
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 9366
    goto :goto_1

    .line 25
    :cond_3
    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/a;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->k()I

    move-result v1

    .line 26
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    .line 27
    iput v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/a;->d:I

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/a;->c:Z

    .line 29
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/a;->b:Lcom/piriform/ccleaner/storageanalyzer/frontend/a$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/a$a;->a()V

    goto :goto_2
.end method
