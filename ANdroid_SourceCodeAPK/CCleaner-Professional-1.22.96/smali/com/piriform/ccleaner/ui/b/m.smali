.class public Lcom/piriform/ccleaner/ui/b/m;
.super Lcom/piriform/ccleaner/core/a/b;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/view/h$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/core/a/b",
        "<",
        "Lcom/piriform/ccleaner/f/j;",
        ">;",
        "Lcom/piriform/ccleaner/ui/view/h$a;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/f/j;)V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/piriform/ccleaner/core/a/g;->l:Lcom/piriform/ccleaner/core/a/g;

    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/ui/b/m;-><init>(Lcom/piriform/ccleaner/f/j;Lcom/piriform/ccleaner/core/a/g;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/piriform/ccleaner/f/j;Lcom/piriform/ccleaner/core/a/g;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/piriform/ccleaner/core/a/b;-><init>(Ljava/lang/Object;Lcom/piriform/ccleaner/core/a/g;)V

    .line 30
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
    .locals 9

    .prologue
    .line 34
    .line 1059
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 34
    check-cast v0, Lcom/piriform/ccleaner/f/j;

    .line 37
    if-nez p1, :cond_1

    .line 38
    new-instance p1, Lcom/piriform/ccleaner/ui/view/h;

    invoke-direct {p1, p3}, Lcom/piriform/ccleaner/ui/view/h;-><init>(Landroid/content/Context;)V

    .line 1265
    :goto_0
    iget-boolean v2, v0, Lcom/piriform/ccleaner/f/j;->b:Z

    .line 45
    invoke-virtual {v0}, Lcom/piriform/ccleaner/f/j;->a()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/piriform/ccleaner/ui/view/h;->setIconResource(I)V

    .line 47
    new-instance v3, Lcom/piriform/ccleaner/ui/view/c;

    invoke-direct {v3, p3}, Lcom/piriform/ccleaner/ui/view/c;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p1, v3}, Lcom/piriform/ccleaner/ui/view/h;->setContentView(Landroid/view/View;)V

    .line 2209
    iget-object v1, v0, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {v3, v1}, Lcom/piriform/ccleaner/ui/view/c;->setMainText(Ljava/lang/String;)V

    .line 2231
    iget-wide v4, v0, Lcom/piriform/ccleaner/f/j;->c:J

    .line 52
    invoke-static {v4, v5}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 53
    if-eqz v2, :cond_0

    .line 2239
    iget v2, v0, Lcom/piriform/ccleaner/f/j;->d:I

    .line 55
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090018

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 57
    :cond_0
    invoke-virtual {v3, v1}, Lcom/piriform/ccleaner/ui/view/c;->a(Ljava/lang/CharSequence;)Landroid/view/View;

    .line 59
    invoke-virtual {p1, p0}, Lcom/piriform/ccleaner/ui/view/h;->setOnLockedChangedListener(Lcom/piriform/ccleaner/ui/view/h$a;)V

    .line 2247
    iget-boolean v1, v0, Lcom/piriform/ccleaner/f/j;->f:Z

    .line 60
    invoke-virtual {p1, v1}, Lcom/piriform/ccleaner/ui/view/h;->setLocked(Z)V

    .line 62
    invoke-virtual {p1}, Lcom/piriform/ccleaner/ui/view/h;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    .line 63
    invoke-virtual {p0, p3, v1, v0}, Lcom/piriform/ccleaner/ui/b/m;->a(Landroid/content/Context;Landroid/widget/CheckBox;Lcom/piriform/ccleaner/f/j;)V

    .line 64
    return-object p1

    .line 40
    :cond_1
    check-cast p1, Lcom/piriform/ccleaner/ui/view/h;

    goto :goto_0
.end method

.method protected final a(Landroid/content/Context;Landroid/widget/CheckBox;Lcom/piriform/ccleaner/f/j;)V
    .locals 2

    .prologue
    .line 68
    .line 3038
    iget-boolean v0, p0, Lcom/piriform/ccleaner/core/a/b;->a:Z

    .line 68
    if-eqz v0, :cond_0

    .line 3247
    iget-boolean v0, p3, Lcom/piriform/ccleaner/f/j;->f:Z

    .line 68
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 69
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 71
    new-instance v0, Lcom/piriform/ccleaner/ui/b/m$1;

    invoke-direct {v0, p0, p3, p1}, Lcom/piriform/ccleaner/ui/b/m$1;-><init>(Lcom/piriform/ccleaner/ui/b/m;Lcom/piriform/ccleaner/f/j;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    .line 4016
    const v0, 0x7f10006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 91
    check-cast v0, Landroid/widget/CheckBox;

    .line 92
    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 93
    if-eqz p2, :cond_0

    .line 94
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 96
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 92
    goto :goto_0
.end method
