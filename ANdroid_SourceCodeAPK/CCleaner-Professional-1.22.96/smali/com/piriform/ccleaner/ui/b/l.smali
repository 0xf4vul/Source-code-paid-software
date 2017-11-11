.class public final Lcom/piriform/ccleaner/ui/b/l;
.super Lcom/piriform/ccleaner/ui/b/m;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/view/h$a;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/f/j;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/ui/b/m;-><init>(Lcom/piriform/ccleaner/f/j;)V

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
    .locals 6

    .prologue
    .line 21
    .line 1059
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 21
    check-cast v0, Lcom/piriform/ccleaner/f/j;

    .line 24
    if-nez p1, :cond_0

    .line 25
    new-instance p1, Lcom/piriform/ccleaner/ui/view/h;

    invoke-direct {p1, p3}, Lcom/piriform/ccleaner/ui/view/h;-><init>(Landroid/content/Context;)V

    .line 30
    :goto_0
    const v1, 0x7f0200ec

    invoke-virtual {p1, v1}, Lcom/piriform/ccleaner/ui/view/h;->setIconResource(I)V

    .line 33
    new-instance v1, Lcom/piriform/ccleaner/ui/view/c;

    invoke-direct {v1, p3}, Lcom/piriform/ccleaner/ui/view/c;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {p1, v1}, Lcom/piriform/ccleaner/ui/view/h;->setContentView(Landroid/view/View;)V

    .line 1209
    iget-object v2, v0, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/view/c;->setMainText(Ljava/lang/String;)V

    .line 38
    const v2, 0x7f080061

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1217
    iget-object v5, v0, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 38
    aput-object v5, v3, v4

    invoke-virtual {p3, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/view/c;->a(Ljava/lang/CharSequence;)Landroid/view/View;

    .line 41
    invoke-virtual {p1, p0}, Lcom/piriform/ccleaner/ui/view/h;->setOnLockedChangedListener(Lcom/piriform/ccleaner/ui/view/h$a;)V

    .line 1247
    iget-boolean v1, v0, Lcom/piriform/ccleaner/f/j;->f:Z

    .line 42
    invoke-virtual {p1, v1}, Lcom/piriform/ccleaner/ui/view/h;->setLocked(Z)V

    .line 44
    invoke-virtual {p1}, Lcom/piriform/ccleaner/ui/view/h;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    .line 45
    invoke-virtual {p0, p3, v1, v0}, Lcom/piriform/ccleaner/ui/b/l;->a(Landroid/content/Context;Landroid/widget/CheckBox;Lcom/piriform/ccleaner/f/j;)V

    .line 47
    return-object p1

    .line 27
    :cond_0
    check-cast p1, Lcom/piriform/ccleaner/ui/view/h;

    goto :goto_0
.end method
