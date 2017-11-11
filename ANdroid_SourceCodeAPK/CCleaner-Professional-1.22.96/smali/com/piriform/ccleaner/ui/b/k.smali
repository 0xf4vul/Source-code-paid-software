.class public final Lcom/piriform/ccleaner/ui/b/k;
.super Lcom/piriform/ccleaner/ui/b/m;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/f/j;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/ui/b/m;-><init>(Lcom/piriform/ccleaner/f/j;)V

    .line 18
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 22
    .line 1059
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 22
    check-cast v0, Lcom/piriform/ccleaner/f/j;

    .line 25
    if-nez p1, :cond_1

    .line 26
    new-instance p1, Lcom/piriform/ccleaner/ui/view/h;

    invoke-direct {p1, p3}, Lcom/piriform/ccleaner/ui/view/h;-><init>(Landroid/content/Context;)V

    .line 1265
    :goto_0
    iget-boolean v2, v0, Lcom/piriform/ccleaner/f/j;->b:Z

    .line 33
    invoke-virtual {v0}, Lcom/piriform/ccleaner/f/j;->a()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/piriform/ccleaner/ui/view/h;->setIconResource(I)V

    .line 35
    new-instance v3, Lcom/piriform/ccleaner/ui/view/c;

    invoke-direct {v3, p3}, Lcom/piriform/ccleaner/ui/view/c;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {p1, v3}, Lcom/piriform/ccleaner/ui/view/h;->setContentView(Landroid/view/View;)V

    .line 2209
    iget-object v1, v0, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {v3, v1}, Lcom/piriform/ccleaner/ui/view/c;->setMainText(Ljava/lang/String;)V

    .line 2231
    iget-wide v4, v0, Lcom/piriform/ccleaner/f/j;->c:J

    .line 40
    invoke-static {v4, v5}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 41
    if-eqz v2, :cond_0

    .line 2239
    iget v2, v0, Lcom/piriform/ccleaner/f/j;->d:I

    .line 43
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090018

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    aput-object v1, v6, v9

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 45
    :cond_0
    invoke-virtual {v3, v1}, Lcom/piriform/ccleaner/ui/view/c;->a(Ljava/lang/CharSequence;)Landroid/view/View;

    .line 47
    const v1, 0x7f080061

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/f/j;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-virtual {p3, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {v3, v1}, Lcom/piriform/ccleaner/ui/view/c;->a(Ljava/lang/CharSequence;)Landroid/view/View;

    .line 50
    invoke-virtual {p1, p0}, Lcom/piriform/ccleaner/ui/view/h;->setOnLockedChangedListener(Lcom/piriform/ccleaner/ui/view/h$a;)V

    .line 2247
    iget-boolean v1, v0, Lcom/piriform/ccleaner/f/j;->f:Z

    .line 51
    invoke-virtual {p1, v1}, Lcom/piriform/ccleaner/ui/view/h;->setLocked(Z)V

    .line 53
    invoke-virtual {p1}, Lcom/piriform/ccleaner/ui/view/h;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    .line 54
    invoke-virtual {p0, p3, v1, v0}, Lcom/piriform/ccleaner/ui/b/k;->a(Landroid/content/Context;Landroid/widget/CheckBox;Lcom/piriform/ccleaner/f/j;)V

    .line 55
    return-object p1

    .line 28
    :cond_1
    check-cast p1, Lcom/piriform/ccleaner/ui/view/h;

    goto :goto_0
.end method
