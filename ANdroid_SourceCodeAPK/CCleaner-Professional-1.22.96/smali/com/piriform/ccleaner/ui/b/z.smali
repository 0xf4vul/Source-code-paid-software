.class public final Lcom/piriform/ccleaner/ui/b/z;
.super Lcom/piriform/ccleaner/core/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/core/a/b",
        "<",
        "Lcom/piriform/ccleaner/core/data/k;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/core/data/k;Z)V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/piriform/ccleaner/core/a/g;->a:Lcom/piriform/ccleaner/core/a/g;

    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/core/a/b;-><init>(Ljava/lang/Object;Lcom/piriform/ccleaner/core/a/g;)V

    .line 22
    iput-boolean p2, p0, Lcom/piriform/ccleaner/ui/b/z;->d:Z

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .prologue
    .line 27
    .line 1059
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 27
    check-cast v0, Lcom/piriform/ccleaner/core/data/k;

    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance p1, Lcom/piriform/ccleaner/ui/view/ListViewItem;

    invoke-direct {p1, p3}, Lcom/piriform/ccleaner/ui/view/ListViewItem;-><init>(Landroid/content/Context;)V

    .line 36
    :goto_0
    new-instance v1, Lcom/piriform/ccleaner/ui/view/c;

    invoke-direct {v1, p3}, Lcom/piriform/ccleaner/ui/view/c;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {p1, v1}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setContentView(Landroid/view/View;)V

    .line 2021
    iget-object v0, v0, Lcom/piriform/ccleaner/core/data/k;->b:Ljava/lang/String;

    .line 39
    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/ui/view/c;->setMainText(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    .line 42
    iget-boolean v1, p0, Lcom/piriform/ccleaner/ui/b/z;->d:Z

    if-eqz v1, :cond_1

    .line 43
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2038
    iget-boolean v1, p0, Lcom/piriform/ccleaner/core/a/b;->a:Z

    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2056
    new-instance v1, Lcom/piriform/ccleaner/ui/b/z$1;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/ui/b/z$1;-><init>(Lcom/piriform/ccleaner/ui/b/z;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2065
    new-instance v1, Lcom/piriform/ccleaner/ui/b/z$2;

    invoke-direct {v1, p0, v0}, Lcom/piriform/ccleaner/ui/b/z$2;-><init>(Lcom/piriform/ccleaner/ui/b/z;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    :goto_1
    return-object p1

    .line 33
    :cond_0
    check-cast p1, Lcom/piriform/ccleaner/ui/view/ListViewItem;

    goto :goto_0

    .line 49
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1
.end method
