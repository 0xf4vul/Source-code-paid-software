.class public final Lcom/piriform/ccleaner/appmanager/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/appmanager/d$a;


# instance fields
.field final a:[Lcom/piriform/ccleaner/appmanager/g;

.field private final b:Lcom/piriform/ccleaner/appmanager/d;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/piriform/ccleaner/appmanager/d;)V
    .locals 5

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p2, p0, Lcom/piriform/ccleaner/appmanager/h;->b:Lcom/piriform/ccleaner/appmanager/d;

    .line 13
    sget v0, Lcom/piriform/ccleaner/appmanager/f;->d:I

    new-array v0, v0, [Lcom/piriform/ccleaner/appmanager/g;

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/h;->a:[Lcom/piriform/ccleaner/appmanager/g;

    .line 14
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/piriform/ccleaner/appmanager/f;->d:I

    if-ge v0, v1, :cond_0

    .line 15
    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/h;->a:[Lcom/piriform/ccleaner/appmanager/g;

    .line 7020
    new-instance v2, Lcom/piriform/ccleaner/appmanager/g;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/piriform/ccleaner/appmanager/h;->b:Lcom/piriform/ccleaner/appmanager/d;

    .line 8020
    iget-object v4, v4, Lcom/piriform/ccleaner/appmanager/d;->a:[Lcom/piriform/ccleaner/appmanager/o;

    aget-object v4, v4, v0

    .line 7020
    invoke-direct {v2, v3, v4}, Lcom/piriform/ccleaner/appmanager/g;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/appmanager/o;)V

    .line 15
    aput-object v2, v1, v0

    .line 14
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method private b(I)Landroid/support/v7/widget/RecyclerView$a;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/h;->a:[Lcom/piriform/ccleaner/appmanager/g;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/piriform/ccleaner/appmanager/g;->getAppList()Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/piriform/ccleaner/appmanager/ApplicationListRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/appmanager/h;->b(I)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    .line 9636
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->d:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->a()V

    .line 48
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/h;->a:[Lcom/piriform/ccleaner/appmanager/g;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/piriform/ccleaner/appmanager/g;->a()V

    .line 49
    return-void
.end method

.method public final a(II)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/appmanager/h;->b(I)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    .line 8745
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->d:Landroid/support/v7/widget/RecyclerView$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/support/v7/widget/RecyclerView$b;->b(II)V

    .line 36
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/h;->a:[Lcom/piriform/ccleaner/appmanager/g;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/piriform/ccleaner/appmanager/g;->a()V

    .line 37
    return-void
.end method

.method public final b(II)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/appmanager/h;->b(I)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    .line 8796
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->d:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView$b;->a(I)V

    .line 42
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/h;->a:[Lcom/piriform/ccleaner/appmanager/g;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/piriform/ccleaner/appmanager/g;->a()V

    .line 43
    return-void
.end method
