.class public Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "SourceFile"


# instance fields
.field private final M:Landroid/support/v7/widget/LinearLayoutManager;

.field private final N:Landroid/support/v7/widget/RecyclerView$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    new-instance v0, Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView$1;-><init>(Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;->N:Landroid/support/v7/widget/RecyclerView$c;

    .line 40
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;->M:Landroid/support/v7/widget/LinearLayoutManager;

    .line 41
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;->M:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;->M:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method


# virtual methods
.method public setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;->N:Landroid/support/v7/widget/RecyclerView$c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$a;->b(Landroid/support/v7/widget/RecyclerView$c;)V

    .line 55
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 56
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;->N:Landroid/support/v7/widget/RecyclerView$c;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$a;->a(Landroid/support/v7/widget/RecyclerView$c;)V

    .line 57
    return-void
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This view sets its own layout manager!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
