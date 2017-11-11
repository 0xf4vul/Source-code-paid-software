.class public final Lcom/piriform/ccleaner/core/a/i;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/core/a/e;
.implements Lcom/piriform/ccleaner/core/a/q;


# instance fields
.field private b:Lcom/piriform/ccleaner/core/a/j;

.field private final c:Landroid/content/Context;

.field private d:Lcom/piriform/ccleaner/core/a/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/piriform/ccleaner/core/a/j;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/piriform/ccleaner/core/a/i;->c:Landroid/content/Context;

    .line 1050
    iput-object p2, p0, Lcom/piriform/ccleaner/core/a/i;->b:Lcom/piriform/ccleaner/core/a/j;

    .line 2035
    iput-object p0, p2, Lcom/piriform/ccleaner/core/a/j;->b:Lcom/piriform/ccleaner/core/a/e;

    .line 3031
    iput-object p0, p2, Lcom/piriform/ccleaner/core/a/j;->c:Lcom/piriform/ccleaner/core/a/q;

    .line 1053
    invoke-virtual {p2}, Lcom/piriform/ccleaner/core/a/j;->c()V

    .line 17
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/piriform/ccleaner/core/a/i;->notifyDataSetChanged()V

    .line 59
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/i;->b:Lcom/piriform/ccleaner/core/a/j;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/j;->b()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    .line 5031
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/i;->b:Lcom/piriform/ccleaner/core/a/j;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/core/a/j;->a(I)Lcom/piriform/ccleaner/core/a/b;

    move-result-object v0

    .line 8
    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 36
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/i;->b:Lcom/piriform/ccleaner/core/a/j;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/core/a/j;->a(I)Lcom/piriform/ccleaner/core/a/b;

    move-result-object v0

    .line 3050
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/b;->b:Lcom/piriform/ccleaner/core/a/g;

    .line 4038
    iget v0, v0, Lcom/piriform/ccleaner/core/a/g;->t:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/i;->b:Lcom/piriform/ccleaner/core/a/j;

    iget-object v1, p0, Lcom/piriform/ccleaner/core/a/i;->c:Landroid/content/Context;

    .line 4111
    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/core/a/j;->a(I)Lcom/piriform/ccleaner/core/a/b;

    move-result-object v2

    invoke-virtual {v2, p2, p3, v1}, Lcom/piriform/ccleaner/core/a/b;->a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 4181
    instance-of v2, v1, Lcom/piriform/ccleaner/ui/view/b;

    if-eqz v2, :cond_0

    .line 4182
    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/j;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    move-object v0, v1

    .line 4183
    check-cast v0, Lcom/piriform/ccleaner/ui/view/b;

    invoke-interface {v0, v2}, Lcom/piriform/ccleaner/ui/view/b;->setDividerVisible(Z)V

    .line 41
    :cond_0
    return-object v1

    .line 4182
    :cond_1
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/piriform/ccleaner/core/a/j;->d()I

    move-result v0

    return v0
.end method

.method public final s_()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/i;->d:Lcom/piriform/ccleaner/core/a/q;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/i;->d:Lcom/piriform/ccleaner/core/a/q;

    invoke-interface {v0}, Lcom/piriform/ccleaner/core/a/q;->s_()V

    .line 66
    :cond_0
    return-void
.end method
