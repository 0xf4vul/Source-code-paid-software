.class final Lcom/piriform/ccleaner/professional/h;
.super Landroid/support/v4/view/s;
.source "SourceFile"


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/professional/i;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/professional/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/view/s;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/h;->b:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/piriform/ccleaner/professional/h;->c:Ljava/util/List;

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/professional/h;->d:Landroid/view/LayoutInflater;

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 42
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/h;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f030078

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    .line 43
    iget-object v1, p0, Lcom/piriform/ccleaner/professional/h;->c:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/piriform/ccleaner/professional/i;

    .line 2016
    const v2, 0x7f100136

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1049
    check-cast v2, Landroid/widget/TextView;

    .line 3016
    const v3, 0x7f100137

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1050
    check-cast v3, Landroid/widget/TextView;

    .line 4016
    const v4, 0x7f100135

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1051
    check-cast v4, Landroid/widget/ImageView;

    .line 4020
    iget v5, v1, Lcom/piriform/ccleaner/professional/i;->a:I

    .line 1053
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 5016
    iget v2, v1, Lcom/piriform/ccleaner/professional/i;->b:I

    .line 1054
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1055
    iget-object v2, p0, Lcom/piriform/ccleaner/professional/h;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 5024
    iget v1, v1, Lcom/piriform/ccleaner/professional/i;->c:I

    .line 1055
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    return-object v0
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final b(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 61
    return-void
.end method
