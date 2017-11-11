.class public Lcom/piriform/ccleaner/ui/view/HeaderGridView;
.super Landroid/widget/GridView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/ui/view/HeaderGridView$a;,
        Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;,
        Lcom/piriform/ccleaner/ui/view/HeaderGridView$c;,
        Lcom/piriform/ccleaner/ui/view/HeaderGridView$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/ui/view/HeaderGridView$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView;->a:Ljava/util/List;

    .line 1058
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setClipChildren(Z)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView;->a:Ljava/util/List;

    .line 2058
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setClipChildren(Z)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView;->a:Ljava/util/List;

    .line 3058
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setClipChildren(Z)V

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/view/HeaderGridView;I)I
    .locals 1

    .prologue
    .line 3159
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/HeaderGridView;->getContentPositionOffset()I

    move-result v0

    sub-int v0, p1, v0

    .line 42
    return v0
.end method


# virtual methods
.method public getContentPositionOffset()I
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/HeaderGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 155
    instance-of v1, v0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Landroid/widget/GridView;->onFinishInflate()V

    .line 79
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/HeaderGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 80
    instance-of v1, v0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;

    if-eqz v1, :cond_0

    .line 81
    check-cast v0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/HeaderGridView;->getNumColumns()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->a(I)V

    .line 83
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 88
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/HeaderGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 89
    instance-of v1, v0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;

    if-eqz v1, :cond_0

    .line 90
    check-cast v0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/HeaderGridView;->getNumColumns()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->a(I)V

    .line 92
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/ui/view/HeaderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    :goto_0
    return-void

    .line 139
    :cond_0
    new-instance v0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView;->a:Ljava/util/List;

    invoke-direct {v0, v1, p1}, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;-><init>(Ljava/util/List;Landroid/widget/ListAdapter;)V

    .line 140
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/HeaderGridView;->getNumColumns()I

    move-result v1

    .line 141
    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 142
    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->a(I)V

    .line 144
    :cond_1
    invoke-super {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setClipChildren(Z)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$a;

    invoke-direct {v0, p0, p1}, Lcom/piriform/ccleaner/ui/view/HeaderGridView$a;-><init>(Lcom/piriform/ccleaner/ui/view/HeaderGridView;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 151
    return-void
.end method
