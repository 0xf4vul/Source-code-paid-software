.class public final Lcom/piriform/ccleaner/ui/b/o;
.super Lcom/piriform/ccleaner/ui/b/m;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/f/j;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/ui/b/m;-><init>(Lcom/piriform/ccleaner/f/j;)V

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
    .locals 7

    .prologue
    .line 20
    invoke-super {p0, p1, p2, p3}, Lcom/piriform/ccleaner/ui/b/m;->a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/ui/view/h;

    .line 21
    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/view/h;->getContentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/piriform/ccleaner/ui/view/c;

    .line 1059
    iget-object v2, p0, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 23
    check-cast v2, Lcom/piriform/ccleaner/f/j;

    .line 24
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080061

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/piriform/ccleaner/f/j;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/view/c;->a(Ljava/lang/CharSequence;)Landroid/view/View;

    .line 28
    return-object v0
.end method
