.class public final Lcom/piriform/ccleaner/ui/b/ab;
.super Lcom/piriform/ccleaner/core/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/core/a/b",
        "<",
        "Lcom/piriform/ccleaner/f/j;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/f/j;)V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/piriform/ccleaner/core/a/g;->l:Lcom/piriform/ccleaner/core/a/g;

    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/core/a/b;-><init>(Ljava/lang/Object;Lcom/piriform/ccleaner/core/a/g;)V

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 25
    .line 1059
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 25
    check-cast v0, Lcom/piriform/ccleaner/f/j;

    .line 28
    if-nez p1, :cond_0

    .line 29
    new-instance p1, Lcom/piriform/ccleaner/ui/view/ListViewItem;

    invoke-direct {p1, p3}, Lcom/piriform/ccleaner/ui/view/ListViewItem;-><init>(Landroid/content/Context;)V

    .line 34
    :goto_0
    new-instance v1, Lcom/piriform/ccleaner/ui/view/c;

    invoke-direct {v1, p3}, Lcom/piriform/ccleaner/ui/view/c;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {p1, v1}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setContentView(Landroid/view/View;)V

    .line 1209
    iget-object v2, v0, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/view/c;->setMainText(Ljava/lang/String;)V

    .line 1265
    iget-boolean v2, v0, Lcom/piriform/ccleaner/f/j;->b:Z

    .line 40
    if-eqz v2, :cond_1

    .line 41
    const v2, 0x7f0200ec

    invoke-virtual {p1, v2}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setIcon(I)V

    .line 49
    :goto_1
    const v2, 0x7f080061

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/f/j;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-virtual {p3, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/ui/view/c;->a(Ljava/lang/CharSequence;)Landroid/view/View;

    .line 52
    invoke-virtual {p1, v8}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setCheckable(Z)V

    .line 54
    return-object p1

    .line 31
    :cond_0
    check-cast p1, Lcom/piriform/ccleaner/ui/view/ListViewItem;

    goto :goto_0

    .line 2213
    :cond_1
    iget-object v2, v0, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-static {v2}, Lcom/piriform/ccleaner/f;->a(Ljava/lang/String;)Lcom/piriform/ccleaner/f;

    move-result-object v2

    .line 3033
    iget v2, v2, Lcom/piriform/ccleaner/f;->k:I

    .line 43
    invoke-virtual {p1, v2}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setIcon(I)V

    .line 44
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080062

    new-array v4, v9, [Ljava/lang/Object;

    .line 3231
    iget-wide v6, v0, Lcom/piriform/ccleaner/f/j;->c:J

    .line 45
    invoke-static {v6, v7}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 44
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/view/c;->a(Ljava/lang/CharSequence;)Landroid/view/View;

    goto :goto_1
.end method
