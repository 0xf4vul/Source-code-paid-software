.class public final Lcom/piriform/ccleaner/ui/b/n;
.super Lcom/piriform/ccleaner/core/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/core/a/b",
        "<",
        "Lcom/piriform/ccleaner/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Lcom/piriform/ccleaner/core/i;

.field public e:Z

.field public f:I

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final h:Lcom/piriform/ccleaner/a/c;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private final l:I


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/a/c;I)V
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/piriform/ccleaner/core/a/g;->b:Lcom/piriform/ccleaner/core/a/g;

    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/core/a/b;-><init>(Ljava/lang/Object;Lcom/piriform/ccleaner/core/a/g;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/b/n;->g:Ljava/util/List;

    .line 51
    iput p2, p0, Lcom/piriform/ccleaner/ui/b/n;->l:I

    .line 52
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/b/n;->h:Lcom/piriform/ccleaner/a/c;

    .line 53
    new-instance v0, Lcom/piriform/ccleaner/core/i;

    invoke-direct {v0}, Lcom/piriform/ccleaner/core/i;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/b/n;->d:Lcom/piriform/ccleaner/core/i;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/piriform/ccleaner/ui/b/n;->f:I

    .line 55
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    if-nez p1, :cond_1

    .line 61
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 62
    iget v1, p0, Lcom/piriform/ccleaner/ui/b/n;->l:I

    invoke-virtual {v0, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1016
    :goto_0
    const v0, 0x7f1000c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 68
    check-cast v0, Landroid/widget/TextView;

    .line 69
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/b/n;->h:Lcom/piriform/ccleaner/a/c;

    .line 1066
    iget v1, v1, Lcom/piriform/ccleaner/a/c;->q:I

    .line 70
    if-nez v1, :cond_2

    .line 71
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2016
    :goto_1
    const v0, 0x7f1000f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 76
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/b/n;->j:Landroid/widget/TextView;

    .line 77
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/b/n;->a()V

    .line 3016
    const v0, 0x7f10010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 79
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/b/n;->k:Landroid/widget/TextView;

    .line 3127
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/n;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3128
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/n;->k:Landroid/widget/TextView;

    iget v1, p0, Lcom/piriform/ccleaner/ui/b/n;->f:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4016
    :cond_0
    const v0, 0x7f1000f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 82
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/b/n;->i:Landroid/widget/TextView;

    .line 4092
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/n;->d:Lcom/piriform/ccleaner/core/i;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/i;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4093
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/n;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6016
    :goto_2
    const v0, 0x7f1000f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 85
    check-cast v0, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;

    .line 6138
    iget-boolean v1, p0, Lcom/piriform/ccleaner/ui/b/n;->e:Z

    .line 86
    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->setExpanded(Z)V

    .line 88
    return-object p1

    .line 65
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 4097
    :cond_3
    new-instance v0, Lcom/piriform/ccleaner/ui/main/n;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/b/n;->d:Lcom/piriform/ccleaner/core/i;

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/b/n;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/piriform/ccleaner/ui/main/n;-><init>(Lcom/piriform/ccleaner/core/i;Landroid/content/res/Resources;)V

    .line 5021
    invoke-virtual {v0, v3}, Lcom/piriform/ccleaner/ui/main/n;->a(Z)Ljava/lang/String;

    move-result-object v0

    .line 4100
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/b/n;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4101
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/n;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public final a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 116
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/n;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 117
    iget v0, p0, Lcom/piriform/ccleaner/ui/b/n;->f:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/n;->h:Lcom/piriform/ccleaner/a/c;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/a/c;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/n;->j:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/n;->j:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%d / %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/piriform/ccleaner/ui/b/n;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget v5, p0, Lcom/piriform/ccleaner/ui/b/n;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/n;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Lcom/piriform/ccleaner/core/i;)V
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/n;->d:Lcom/piriform/ccleaner/core/i;

    .line 7068
    iget v1, p1, Lcom/piriform/ccleaner/core/i;->a:I

    .line 8040
    iget v2, v0, Lcom/piriform/ccleaner/core/i;->a:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/piriform/ccleaner/core/i;->a:I

    .line 106
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/n;->d:Lcom/piriform/ccleaner/core/i;

    .line 8076
    iget-wide v2, p1, Lcom/piriform/ccleaner/core/i;->b:J

    .line 106
    invoke-virtual {v0, v2, v3}, Lcom/piriform/ccleaner/core/i;->a(J)V

    .line 107
    return-void
.end method
