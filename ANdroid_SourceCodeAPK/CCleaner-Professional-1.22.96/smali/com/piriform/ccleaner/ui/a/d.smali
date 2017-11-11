.class public final Lcom/piriform/ccleaner/ui/a/d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final a:Lcom/piriform/ccleaner/ui/a/g;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/ui/a/g;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/a/d;->a:Lcom/piriform/ccleaner/ui/a/g;

    .line 14
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/piriform/ccleaner/ui/a/e;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/d;->a:Lcom/piriform/ccleaner/ui/a/g;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/ui/a/g;->a(I)Lcom/piriform/ccleaner/ui/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/d;->a:Lcom/piriform/ccleaner/ui/a/g;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/a/g;->a()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/ui/a/d;->a(I)Lcom/piriform/ccleaner/ui/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 28
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/ui/a/d;->a(I)Lcom/piriform/ccleaner/ui/a/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/a/e;->b()I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/ui/a/d;->a(I)Lcom/piriform/ccleaner/ui/a/e;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/piriform/ccleaner/ui/a/e;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x3

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/ui/a/d;->a(I)Lcom/piriform/ccleaner/ui/a/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/a/e;->a()Z

    move-result v0

    return v0
.end method
