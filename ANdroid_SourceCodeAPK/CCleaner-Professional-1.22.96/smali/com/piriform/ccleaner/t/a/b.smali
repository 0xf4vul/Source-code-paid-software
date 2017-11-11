.class public final Lcom/piriform/ccleaner/t/a/b;
.super Lcom/piriform/ccleaner/core/a/b;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/t/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/core/a/b",
        "<",
        "Lcom/piriform/ccleaner/t/u;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field public d:Z

.field private final e:Lcom/piriform/ccleaner/t/a/b$a;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/t/u;Lcom/piriform/ccleaner/t/a/b$a;)V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/piriform/ccleaner/core/a/g;->c:Lcom/piriform/ccleaner/core/a/g;

    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/core/a/b;-><init>(Ljava/lang/Object;Lcom/piriform/ccleaner/core/a/g;)V

    .line 32
    iput-object p2, p0, Lcom/piriform/ccleaner/t/a/b;->e:Lcom/piriform/ccleaner/t/a/b$a;

    .line 33
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/piriform/ccleaner/t/x;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 102
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030087

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 16170
    iget-object v0, p2, Lcom/piriform/ccleaner/t/x;->b:Lcom/piriform/ccleaner/t/x$b;

    .line 17095
    iget-boolean v0, v0, Lcom/piriform/ccleaner/t/x$b;->s:Z

    .line 104
    if-eqz v0, :cond_0

    .line 18016
    const v0, 0x7f100145

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 105
    check-cast v0, Lcom/piriform/ccleaner/ui/view/ColorBlock;

    .line 106
    invoke-virtual {p2, p0}, Lcom/piriform/ccleaner/t/x;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/ColorBlock;->setColor(I)V

    .line 107
    invoke-virtual {v0, v3}, Lcom/piriform/ccleaner/ui/view/ColorBlock;->setVisibility(I)V

    .line 19016
    :cond_0
    const v0, 0x7f100115

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 110
    check-cast v0, Landroid/widget/TextView;

    .line 19141
    iget-object v1, p2, Lcom/piriform/ccleaner/t/x;->b:Lcom/piriform/ccleaner/t/x$b;

    .line 20082
    iget v1, v1, Lcom/piriform/ccleaner/t/x$b;->p:I

    .line 19142
    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 111
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21016
    const v0, 0x7f100116

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 113
    check-cast v0, Landroid/widget/TextView;

    .line 21154
    iget-object v1, p2, Lcom/piriform/ccleaner/t/x;->c:Lcom/piriform/ccleaner/t/x$a;

    .line 22150
    iget v3, p2, Lcom/piriform/ccleaner/t/x;->a:F

    .line 21154
    invoke-virtual {v1, v3}, Lcom/piriform/ccleaner/t/x$a;->a(F)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    return-void

    .line 19142
    :cond_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
    .locals 10

    .prologue
    .line 38
    .line 1059
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 38
    check-cast v0, Lcom/piriform/ccleaner/t/u;

    .line 41
    if-nez p1, :cond_0

    .line 42
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 43
    const v1, 0x7f030083

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2016
    const v1, 0x7f100141

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 44
    check-cast v1, Landroid/view/ViewGroup;

    .line 45
    const v3, 0x7f030086

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 3016
    :cond_0
    const v1, 0x7f100142

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2096
    check-cast v1, Lcom/piriform/ccleaner/ui/view/SectionedBarView;

    .line 2097
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 3120
    if-eqz v0, :cond_1

    .line 3132
    iget-object v2, v0, Lcom/piriform/ccleaner/t/u;->c:Lcom/piriform/ccleaner/t/x;

    .line 3120
    if-nez v2, :cond_5

    .line 2098
    :cond_1
    invoke-virtual {v1}, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->invalidate()V

    .line 7059
    iget-object v1, p0, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 6133
    check-cast v1, Lcom/piriform/ccleaner/t/u;

    .line 7140
    iget-object v1, v1, Lcom/piriform/ccleaner/t/u;->d:Lcom/piriform/ccleaner/t/u$b;

    .line 6133
    sget-object v2, Lcom/piriform/ccleaner/t/u$b;->b:Lcom/piriform/ccleaner/t/u$b;

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    .line 53
    :goto_0
    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/piriform/ccleaner/t/a/b;->d:Z

    if-eqz v1, :cond_2

    .line 8016
    const v1, 0x7f100144

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 54
    check-cast v1, Landroid/widget/Button;

    .line 55
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 9016
    :cond_2
    const v1, 0x7f10005a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 59
    check-cast v1, Landroid/widget/ImageView;

    .line 9140
    iget-object v2, v0, Lcom/piriform/ccleaner/t/u;->d:Lcom/piriform/ccleaner/t/u$b;

    .line 10057
    iget v2, v2, Lcom/piriform/ccleaner/t/u$b;->h:I

    .line 9099
    if-nez v2, :cond_7

    const/4 v2, 0x0

    .line 60
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11016
    const v1, 0x7f100140

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 62
    check-cast v1, Landroid/widget/TextView;

    .line 11140
    iget-object v2, v0, Lcom/piriform/ccleaner/t/u;->d:Lcom/piriform/ccleaner/t/u$b;

    .line 12052
    iget v2, v2, Lcom/piriform/ccleaner/t/u$b;->g:I

    .line 11104
    if-nez v2, :cond_8

    const/4 v2, 0x0

    .line 63
    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13016
    const v1, 0x7f100143

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 65
    check-cast v1, Landroid/widget/LinearLayout;

    .line 66
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 13132
    iget-object v2, v0, Lcom/piriform/ccleaner/t/u;->c:Lcom/piriform/ccleaner/t/x;

    .line 13075
    if-eqz v2, :cond_3

    .line 13166
    iget-object v3, v2, Lcom/piriform/ccleaner/t/x;->b:Lcom/piriform/ccleaner/t/x$b;

    .line 14091
    iget-boolean v3, v3, Lcom/piriform/ccleaner/t/x$b;->r:Z

    .line 13075
    if-eqz v3, :cond_3

    .line 13076
    invoke-static {p3, v1, v2}, Lcom/piriform/ccleaner/t/a/b;->a(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/piriform/ccleaner/t/x;)V

    .line 14116
    :cond_3
    iget-object v2, v0, Lcom/piriform/ccleaner/t/u;->a:Ljava/util/Map;

    .line 13079
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/piriform/ccleaner/t/x;

    .line 14166
    iget-object v4, v2, Lcom/piriform/ccleaner/t/x;->b:Lcom/piriform/ccleaner/t/x$b;

    .line 15091
    iget-boolean v4, v4, Lcom/piriform/ccleaner/t/x$b;->r:Z

    .line 13080
    if-eqz v4, :cond_4

    .line 13081
    invoke-static {p3, v1, v2}, Lcom/piriform/ccleaner/t/a/b;->a(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/piriform/ccleaner/t/x;)V

    goto :goto_3

    .line 4054
    :cond_5
    iget-object v2, v1, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 4055
    invoke-virtual {v1}, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->invalidate()V

    .line 4132
    iget-object v2, v0, Lcom/piriform/ccleaner/t/u;->c:Lcom/piriform/ccleaner/t/x;

    .line 4150
    iget v4, v2, Lcom/piriform/ccleaner/t/x;->a:F

    .line 5116
    iget-object v2, v0, Lcom/piriform/ccleaner/t/u;->a:Ljava/util/Map;

    .line 3126
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 3127
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/piriform/ccleaner/t/x;

    .line 3128
    new-instance v6, Lcom/piriform/ccleaner/ui/view/j;

    invoke-virtual {v2, v3}, Lcom/piriform/ccleaner/t/x;->a(Landroid/content/Context;)I

    move-result v7

    .line 5150
    iget v2, v2, Lcom/piriform/ccleaner/t/x;->a:F

    .line 3128
    div-float/2addr v2, v4

    invoke-virtual {v1}, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->getMaxValue()J

    move-result-wide v8

    long-to-float v8, v8

    mul-float/2addr v2, v8

    float-to-int v2, v2

    int-to-long v8, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/piriform/ccleaner/ui/view/j;-><init>(IJ)V

    invoke-virtual {v1, v6}, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->a(Lcom/piriform/ccleaner/ui/view/j;)V

    goto :goto_4

    .line 6133
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 9099
    :cond_7
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 11104
    :cond_8
    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 15124
    :cond_9
    iget-object v0, v0, Lcom/piriform/ccleaner/t/u;->b:Ljava/util/Map;

    .line 13084
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/t/x;

    .line 15166
    iget-object v3, v0, Lcom/piriform/ccleaner/t/x;->b:Lcom/piriform/ccleaner/t/x$b;

    .line 16091
    iget-boolean v3, v3, Lcom/piriform/ccleaner/t/x$b;->r:Z

    .line 13085
    if-eqz v3, :cond_a

    .line 13086
    invoke-static {p3, v1, v0}, Lcom/piriform/ccleaner/t/a/b;->a(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/piriform/ccleaner/t/x;)V

    goto :goto_5

    .line 70
    :cond_b
    return-object p1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/piriform/ccleaner/t/a/b;->e:Lcom/piriform/ccleaner/t/a/b$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/t/a/b$a;->a()V

    .line 139
    return-void
.end method
