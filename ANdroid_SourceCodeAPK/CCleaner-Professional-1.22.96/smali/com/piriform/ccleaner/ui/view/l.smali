.class public final Lcom/piriform/ccleaner/ui/view/l;
.super Landroid/support/v7/widget/RecyclerView$g;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p1, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v0, p2}, Lcom/piriform/ccleaner/ui/view/l;-><init>(Landroid/graphics/Rect;I)V

    .line 13
    return-void
.end method

.method private constructor <init>(Landroid/graphics/Rect;I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$g;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/view/l;->a:Landroid/graphics/Rect;

    .line 17
    iput p2, p0, Lcom/piriform/ccleaner/ui/view/l;->b:I

    .line 18
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)V
    .locals 4

    .prologue
    .line 22
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/l;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/view/l;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/piriform/ccleaner/ui/view/l;->b:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 24
    invoke-static {p2}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/view/View;)I

    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/l;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 30
    :cond_0
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 31
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/l;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 33
    :cond_1
    return-void
.end method
