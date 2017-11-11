.class final Lcom/piriform/ccleaner/settings/analysis/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/settings/analysis/a$a;,
        Lcom/piriform/ccleaner/settings/analysis/a$b;
    }
.end annotation


# instance fields
.field final a:Landroid/widget/AdapterView$OnItemClickListener;

.field private final b:Landroid/view/LayoutInflater;

.field private final c:Lcom/piriform/ccleaner/q/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/q/c",
            "<",
            "Lcom/piriform/ccleaner/a/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/a/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/graphics/ColorMatrixColorFilter;

.field private final f:Lcom/piriform/ccleaner/cleaning/g;

.field private final g:Lcom/piriform/ccleaner/settings/analysis/c;

.field private final h:Lcom/piriform/ccleaner/settings/analysis/a$b;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/cleaning/g;Ljava/util/List;Lcom/piriform/ccleaner/settings/analysis/a$b;Lcom/piriform/ccleaner/settings/analysis/c;Landroid/view/LayoutInflater;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/cleaning/g;",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/a/a/d;",
            ">;",
            "Lcom/piriform/ccleaner/settings/analysis/a$b;",
            "Lcom/piriform/ccleaner/settings/analysis/c;",
            "Landroid/view/LayoutInflater;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    new-instance v0, Lcom/piriform/ccleaner/q/a;

    invoke-direct {v0}, Lcom/piriform/ccleaner/q/a;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/a;->c:Lcom/piriform/ccleaner/q/c;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/a;->d:Ljava/util/List;

    .line 1063
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1064
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 1065
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 28
    iput-object v1, p0, Lcom/piriform/ccleaner/settings/analysis/a;->e:Landroid/graphics/ColorMatrixColorFilter;

    .line 32
    new-instance v0, Lcom/piriform/ccleaner/settings/analysis/a$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/settings/analysis/a$1;-><init>(Lcom/piriform/ccleaner/settings/analysis/a;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/a;->a:Landroid/widget/AdapterView$OnItemClickListener;

    .line 76
    iput-object p1, p0, Lcom/piriform/ccleaner/settings/analysis/a;->f:Lcom/piriform/ccleaner/cleaning/g;

    .line 77
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/a;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 78
    iput-object p3, p0, Lcom/piriform/ccleaner/settings/analysis/a;->h:Lcom/piriform/ccleaner/settings/analysis/a$b;

    .line 79
    iput-object p4, p0, Lcom/piriform/ccleaner/settings/analysis/a;->g:Lcom/piriform/ccleaner/settings/analysis/c;

    .line 80
    iput-object p5, p0, Lcom/piriform/ccleaner/settings/analysis/a;->b:Landroid/view/LayoutInflater;

    .line 81
    invoke-direct {p0}, Lcom/piriform/ccleaner/settings/analysis/a;->a()V

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/settings/analysis/a;)Lcom/piriform/ccleaner/settings/analysis/a$b;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/a;->h:Lcom/piriform/ccleaner/settings/analysis/a$b;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/a/d;

    .line 86
    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/settings/analysis/a;->a(Lcom/piriform/ccleaner/a/a/d;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/piriform/ccleaner/settings/analysis/a;->c:Lcom/piriform/ccleaner/q/c;

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Lcom/piriform/ccleaner/q/c;->a(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 90
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/settings/analysis/a;Landroid/view/View;Lcom/piriform/ccleaner/a/a/d;Z)V
    .locals 2

    .prologue
    .line 24
    .line 5152
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/a;->c:Lcom/piriform/ccleaner/q/c;

    invoke-interface {v0, p2, p3}, Lcom/piriform/ccleaner/q/c;->a(Ljava/lang/Object;Z)V

    .line 5153
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/a;->g:Lcom/piriform/ccleaner/settings/analysis/c;

    invoke-interface {p2}, Lcom/piriform/ccleaner/a/a/d;->m()Lcom/piriform/ccleaner/a/h;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lcom/piriform/ccleaner/settings/analysis/c;->a(Lcom/piriform/ccleaner/a/h;Z)V

    .line 5058
    invoke-virtual {p1, p3}, Landroid/view/View;->setActivated(Z)V

    .line 5059
    invoke-virtual {p0}, Lcom/piriform/ccleaner/settings/analysis/a;->notifyDataSetChanged()V

    .line 24
    return-void
.end method

.method private a(Lcom/piriform/ccleaner/a/a/d;)Z
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/a;->f:Lcom/piriform/ccleaner/cleaning/g;

    invoke-interface {p1, v0}, Lcom/piriform/ccleaner/a/a/d;->a(Lcom/piriform/ccleaner/cleaning/g;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/a;->g:Lcom/piriform/ccleaner/settings/analysis/c;

    invoke-interface {p1}, Lcom/piriform/ccleaner/a/a/d;->m()Lcom/piriform/ccleaner/a/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/settings/analysis/c;->a(Lcom/piriform/ccleaner/a/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/piriform/ccleaner/settings/analysis/a;Lcom/piriform/ccleaner/a/a/d;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4157
    iget-object v2, p0, Lcom/piriform/ccleaner/settings/analysis/a;->f:Lcom/piriform/ccleaner/cleaning/g;

    invoke-interface {p1, v2}, Lcom/piriform/ccleaner/a/a/d;->a(Lcom/piriform/ccleaner/cleaning/g;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4161
    iget-object v2, p0, Lcom/piriform/ccleaner/settings/analysis/a;->c:Lcom/piriform/ccleaner/q/c;

    invoke-interface {v2}, Lcom/piriform/ccleaner/q/c;->e()I

    move-result v2

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/piriform/ccleaner/settings/analysis/a;->c:Lcom/piriform/ccleaner/q/c;

    invoke-interface {v2, p1}, Lcom/piriform/ccleaner/q/c;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    .line 4157
    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    .line 4161
    goto :goto_0
.end method

.method static synthetic b(Lcom/piriform/ccleaner/settings/analysis/a;Lcom/piriform/ccleaner/a/a/d;)Z
    .locals 2

    .prologue
    .line 24
    .line 5053
    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/settings/analysis/a;->a(Lcom/piriform/ccleaner/a/a/d;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/piriform/ccleaner/a/a/d;->m()Lcom/piriform/ccleaner/a/h;

    move-result-object v0

    sget-object v1, Lcom/piriform/ccleaner/cleaning/g;->c:Lcom/piriform/ccleaner/cleaning/g;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/a/h;->a(Lcom/piriform/ccleaner/cleaning/g;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 24
    goto :goto_0
.end method

.method static synthetic c(Lcom/piriform/ccleaner/settings/analysis/a;Lcom/piriform/ccleaner/a/a/d;)Z
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/settings/analysis/a;->a(Lcom/piriform/ccleaner/a/a/d;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(I)Lcom/piriform/ccleaner/a/a/d;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/a/d;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/settings/analysis/a;->a(I)Lcom/piriform/ccleaner/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 104
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 110
    if-nez p2, :cond_0

    .line 111
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/a;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030050

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 116
    :cond_0
    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/settings/analysis/a;->a(I)Lcom/piriform/ccleaner/a/a/d;

    move-result-object v1

    .line 117
    invoke-direct {p0, v1}, Lcom/piriform/ccleaner/settings/analysis/a;->a(Lcom/piriform/ccleaner/a/a/d;)Z

    move-result v3

    .line 118
    invoke-virtual {p2, v3}, Landroid/view/View;->setActivated(Z)V

    .line 2016
    const v0, 0x7f1000f2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 120
    check-cast v0, Landroid/widget/TextView;

    .line 121
    invoke-interface {v1}, Lcom/piriform/ccleaner/a/a/d;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3016
    const v0, 0x7f1000f0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 123
    check-cast v0, Landroid/widget/ImageView;

    .line 124
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/piriform/ccleaner/a/a/d;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object v4, p0, Lcom/piriform/ccleaner/settings/analysis/a;->f:Lcom/piriform/ccleaner/cleaning/g;

    invoke-interface {v1, v4}, Lcom/piriform/ccleaner/a/a/d;->a(Lcom/piriform/ccleaner/cleaning/g;)Z

    move-result v4

    .line 4016
    const v1, 0x7f1000f1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 128
    check-cast v1, Landroid/widget/ImageView;

    .line 129
    if-nez v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 130
    if-eqz v4, :cond_2

    .line 131
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 140
    :goto_0
    return-object p2

    .line 133
    :cond_2
    if-eqz v3, :cond_3

    .line 134
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 136
    :cond_3
    iget-object v1, p0, Lcom/piriform/ccleaner/settings/analysis/a;->e:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method
