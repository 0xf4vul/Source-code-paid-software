.class public final Lcom/piriform/ccleaner/storageanalyzer/frontend/h;
.super Landroid/support/v7/widget/RecyclerView$u;
.source "SourceFile"


# instance fields
.field final n:Lcom/piriform/ccleaner/ui/view/ListViewItem;

.field final o:Lcom/piriform/ccleaner/ui/view/c;

.field final p:Lcom/piriform/ccleaner/storageanalyzer/frontend/s;

.field private final q:Lcom/piriform/ccleaner/storageanalyzer/frontend/t;


# direct methods
.method private constructor <init>(Lcom/piriform/ccleaner/ui/view/ListViewItem;Lcom/piriform/ccleaner/ui/view/c;Lcom/piriform/ccleaner/storageanalyzer/frontend/t;Lcom/piriform/ccleaner/storageanalyzer/frontend/s;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$u;-><init>(Landroid/view/View;)V

    .line 29
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/h;->n:Lcom/piriform/ccleaner/ui/view/ListViewItem;

    .line 30
    iput-object p2, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/h;->o:Lcom/piriform/ccleaner/ui/view/c;

    .line 31
    iput-object p3, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/h;->q:Lcom/piriform/ccleaner/storageanalyzer/frontend/t;

    .line 32
    iput-object p4, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/h;->p:Lcom/piriform/ccleaner/storageanalyzer/frontend/s;

    .line 33
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Lcom/piriform/ccleaner/storageanalyzer/frontend/t;Lcom/piriform/ccleaner/storageanalyzer/frontend/s;)Lcom/piriform/ccleaner/storageanalyzer/frontend/h;
    .locals 5

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/piriform/ccleaner/ui/view/ListViewItem;

    invoke-direct {v1, v0}, Lcom/piriform/ccleaner/ui/view/ListViewItem;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v2, Lcom/piriform/ccleaner/ui/view/c;

    invoke-direct {v2, v0}, Lcom/piriform/ccleaner/ui/view/c;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setContentView(Landroid/view/View;)V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setCheckable(Z)V

    .line 47
    new-instance v0, Landroid/support/v7/widget/RecyclerView$i;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/support/v7/widget/RecyclerView$i;-><init>(II)V

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/h;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/piriform/ccleaner/storageanalyzer/frontend/h;-><init>(Lcom/piriform/ccleaner/ui/view/ListViewItem;Lcom/piriform/ccleaner/ui/view/c;Lcom/piriform/ccleaner/storageanalyzer/frontend/t;Lcom/piriform/ccleaner/storageanalyzer/frontend/s;)V

    return-object v0
.end method

.method static synthetic a(Lcom/piriform/ccleaner/storageanalyzer/frontend/h;)Lcom/piriform/ccleaner/storageanalyzer/frontend/t;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/h;->q:Lcom/piriform/ccleaner/storageanalyzer/frontend/t;

    return-object v0
.end method
