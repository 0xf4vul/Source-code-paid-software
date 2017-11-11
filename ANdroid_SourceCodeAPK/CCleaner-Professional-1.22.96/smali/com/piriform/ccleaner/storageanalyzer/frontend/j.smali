.class final Lcom/piriform/ccleaner/storageanalyzer/frontend/j;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/piriform/ccleaner/storageanalyzer/frontend/n;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/g/d;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/piriform/ccleaner/q/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/q/c",
            "<",
            "Lcom/piriform/ccleaner/g/d;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/piriform/ccleaner/q/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/q/b",
            "<",
            "Lcom/piriform/ccleaner/g/d;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/piriform/ccleaner/storageanalyzer/frontend/o;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/o;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 24
    const/16 v0, 0x14

    iput v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->a:I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->b:Ljava/util/List;

    .line 26
    new-instance v0, Lcom/piriform/ccleaner/q/a;

    invoke-direct {v0}, Lcom/piriform/ccleaner/q/a;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->c:Lcom/piriform/ccleaner/q/c;

    .line 28
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/j$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/j$1;-><init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/j;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->f:Lcom/piriform/ccleaner/q/b;

    .line 38
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->g:Lcom/piriform/ccleaner/storageanalyzer/frontend/o;

    .line 39
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$u;
    .locals 1

    .prologue
    .line 16
    .line 7048
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->g:Lcom/piriform/ccleaner/storageanalyzer/frontend/o;

    .line 7049
    invoke-static {p1, v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/n;->a(Landroid/view/ViewGroup;Lcom/piriform/ccleaner/storageanalyzer/frontend/o;)Lcom/piriform/ccleaner/storageanalyzer/frontend/n;

    move-result-object v0

    :goto_0
    return-object v0

    .line 7050
    :cond_0
    invoke-static {p1}, Lcom/piriform/ccleaner/storageanalyzer/frontend/n;->a(Landroid/view/ViewGroup;)Lcom/piriform/ccleaner/storageanalyzer/frontend/n;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic a(Landroid/support/v7/widget/RecyclerView$u;I)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 16
    check-cast p1, Lcom/piriform/ccleaner/storageanalyzer/frontend/n;

    .line 2055
    invoke-virtual {p0, p2}, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->b(I)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 2056
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/g/d;

    .line 3022
    check-cast p1, Lcom/piriform/ccleaner/storageanalyzer/frontend/k;

    .line 2057
    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->c:Lcom/piriform/ccleaner/q/c;

    invoke-interface {v1}, Lcom/piriform/ccleaner/q/c;->a()Z

    move-result v4

    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->c:Lcom/piriform/ccleaner/q/c;

    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/q/c;->a(Ljava/lang/Object;)Z

    move-result v5

    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->f:Lcom/piriform/ccleaner/q/b;

    .line 3062
    iput-object v0, p1, Lcom/piriform/ccleaner/storageanalyzer/frontend/k;->p:Lcom/piriform/ccleaner/g/d;

    .line 3063
    iput-object v1, p1, Lcom/piriform/ccleaner/storageanalyzer/frontend/k;->q:Lcom/piriform/ccleaner/q/b;

    .line 3065
    iget-object v1, p1, Lcom/piriform/ccleaner/storageanalyzer/frontend/k;->o:Lcom/piriform/ccleaner/ui/view/c;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/ui/view/c;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 3067
    const v7, 0x7f080269

    new-array v8, v2, [Ljava/lang/Object;

    .line 3142
    iget-object v1, v0, Lcom/piriform/ccleaner/g/d;->d:Lcom/piriform/ccleaner/g/d;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/piriform/ccleaner/g/d;->d:Lcom/piriform/ccleaner/g/d;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/g/d;->b()Ljava/lang/String;

    move-result-object v1

    .line 3067
    :goto_0
    aput-object v1, v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3069
    iget-object v6, p1, Lcom/piriform/ccleaner/storageanalyzer/frontend/k;->o:Lcom/piriform/ccleaner/ui/view/c;

    .line 4115
    iget-object v7, v0, Lcom/piriform/ccleaner/g/d;->e:Ljava/lang/String;

    .line 3069
    invoke-virtual {v6, v7}, Lcom/piriform/ccleaner/ui/view/c;->setMainText(Ljava/lang/String;)V

    .line 3070
    iget-object v6, p1, Lcom/piriform/ccleaner/storageanalyzer/frontend/k;->o:Lcom/piriform/ccleaner/ui/view/c;

    .line 4124
    iget-wide v8, v0, Lcom/piriform/ccleaner/g/d;->f:J

    .line 3070
    invoke-static {v8, v9}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lcom/piriform/ccleaner/ui/view/c;->a(ILjava/lang/CharSequence;)V

    .line 3071
    iget-object v6, p1, Lcom/piriform/ccleaner/storageanalyzer/frontend/k;->o:Lcom/piriform/ccleaner/ui/view/c;

    invoke-virtual {v6, v2, v1}, Lcom/piriform/ccleaner/ui/view/c;->a(ILjava/lang/CharSequence;)V

    .line 3072
    iget-object v1, p1, Lcom/piriform/ccleaner/storageanalyzer/frontend/k;->o:Lcom/piriform/ccleaner/ui/view/c;

    .line 5055
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/view/c;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5056
    if-eqz v1, :cond_0

    .line 5057
    const/16 v2, 0x10

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3074
    :cond_0
    iget-object v1, p1, Lcom/piriform/ccleaner/storageanalyzer/frontend/k;->n:Lcom/piriform/ccleaner/ui/view/ListViewItem;

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setIconFor(Lcom/piriform/ccleaner/g/d;)V

    .line 3076
    iget-object v1, p1, Lcom/piriform/ccleaner/storageanalyzer/frontend/k;->n:Lcom/piriform/ccleaner/ui/view/ListViewItem;

    new-instance v2, Lcom/piriform/ccleaner/storageanalyzer/frontend/k$2;

    invoke-direct {v2, p1, v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/k$2;-><init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/k;Lcom/piriform/ccleaner/g/d;)V

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3083
    iget-object v0, p1, Lcom/piriform/ccleaner/storageanalyzer/frontend/k;->n:Lcom/piriform/ccleaner/ui/view/ListViewItem;

    invoke-virtual {v0, v4}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setCheckable(Z)V

    .line 3084
    if-eqz v4, :cond_1

    .line 3086
    iget-object v0, p1, Lcom/piriform/ccleaner/storageanalyzer/frontend/k;->n:Lcom/piriform/ccleaner/ui/view/ListViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3087
    iget-object v0, p1, Lcom/piriform/ccleaner/storageanalyzer/frontend/k;->n:Lcom/piriform/ccleaner/ui/view/ListViewItem;

    invoke-virtual {v0, v5}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setChecked(Z)V

    .line 3088
    iget-object v0, p1, Lcom/piriform/ccleaner/storageanalyzer/frontend/k;->n:Lcom/piriform/ccleaner/ui/view/ListViewItem;

    iget-object v1, p1, Lcom/piriform/ccleaner/storageanalyzer/frontend/k;->r:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2058
    :cond_1
    :goto_1
    return-void

    .line 3142
    :cond_2
    const-string/jumbo v1, ""

    goto :goto_0

    .line 6026
    :cond_3
    check-cast p1, Lcom/piriform/ccleaner/storageanalyzer/frontend/l;

    .line 6109
    iget v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->a:I

    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    move v0, v2

    .line 7029
    :goto_2
    iget-object v1, p1, Lcom/piriform/ccleaner/storageanalyzer/frontend/l;->n:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_5

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    :cond_4
    move v0, v3

    .line 6109
    goto :goto_2

    .line 7029
    :cond_5
    const/4 v3, 0x4

    goto :goto_3
.end method

.method public final b(I)I
    .locals 1

    .prologue
    .line 43
    .line 1105
    invoke-virtual {p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 43
    if-ne p1, v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
