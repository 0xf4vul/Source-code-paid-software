.class public final Lcom/piriform/ccleaner/ui/b/q;
.super Lcom/piriform/ccleaner/core/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/core/a/b",
        "<",
        "Lcom/piriform/ccleaner/core/data/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/core/data/g;)V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/piriform/ccleaner/core/a/g;->f:Lcom/piriform/ccleaner/core/a/g;

    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/core/a/b;-><init>(Ljava/lang/Object;Lcom/piriform/ccleaner/core/a/g;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/b/q;->d:Z

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    .line 2059
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 38
    check-cast v0, Lcom/piriform/ccleaner/core/data/g;

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance p1, Lcom/piriform/ccleaner/ui/view/ListViewItem;

    invoke-direct {p1, p3}, Lcom/piriform/ccleaner/ui/view/ListViewItem;-><init>(Landroid/content/Context;)V

    .line 47
    :goto_0
    new-instance v1, Lcom/piriform/ccleaner/ui/view/d;

    invoke-direct {v1, p3}, Lcom/piriform/ccleaner/ui/view/d;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p1, v1}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setContentView(Landroid/view/View;)V

    .line 49
    invoke-virtual {p1, v5}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setLongClickable(Z)V

    .line 51
    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/data/g;->c()Ljava/lang/String;

    move-result-object v2

    .line 3048
    iget-object v3, v0, Lcom/piriform/ccleaner/core/data/f;->f:Ljava/lang/String;

    .line 51
    invoke-virtual {v1, v2, v3}, Lcom/piriform/ccleaner/ui/view/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/data/g;->d()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/view/d;->setDate(Ljava/util/Date;)V

    .line 54
    iget-boolean v1, p0, Lcom/piriform/ccleaner/ui/b/q;->d:Z

    if-eqz v1, :cond_2

    .line 3066
    invoke-virtual {p1}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    .line 4016
    const v2, 0x7f100161

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3068
    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4018
    iget-boolean v3, v0, Lcom/piriform/ccleaner/core/data/g;->g:Z

    .line 3070
    if-eqz v3, :cond_1

    .line 4123
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4124
    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 5090
    invoke-virtual {p1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5091
    invoke-virtual {p1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 60
    :goto_1
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 9016
    const v1, 0x7f10005a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 8095
    check-cast v1, Landroid/widget/ImageView;

    .line 8098
    sget-object v2, Lcom/piriform/ccleaner/ui/b/q$3;->a:[I

    .line 10010
    iget-object v0, v0, Lcom/piriform/ccleaner/core/data/g;->a:Lcom/piriform/ccleaner/core/data/h;

    .line 8098
    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/data/h;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 8108
    const v2, 0x7f02011c

    .line 8109
    const v0, 0x7f08012d

    .line 8113
    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8114
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 62
    return-object p1

    .line 44
    :cond_0
    check-cast p1, Lcom/piriform/ccleaner/ui/view/ListViewItem;

    goto :goto_0

    .line 5128
    :cond_1
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5129
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 6038
    iget-boolean v2, p0, Lcom/piriform/ccleaner/core/a/b;->a:Z

    .line 3075
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3076
    new-instance v2, Lcom/piriform/ccleaner/ui/b/q$1;

    invoke-direct {v2, p0}, Lcom/piriform/ccleaner/ui/b/q$1;-><init>(Lcom/piriform/ccleaner/ui/b/q;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3084
    invoke-virtual {p1, v5}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setEnabled(Z)V

    .line 6133
    new-instance v2, Lcom/piriform/ccleaner/ui/b/q$2;

    invoke-direct {v2, p0, v1}, Lcom/piriform/ccleaner/ui/b/q$2;-><init>(Lcom/piriform/ccleaner/ui/b/q;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 8016
    :cond_2
    const v1, 0x7f10014c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 7119
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 8100
    :pswitch_0
    const v2, 0x7f0200f1

    .line 8101
    const v0, 0x7f0800e8

    .line 8102
    goto :goto_2

    .line 8104
    :pswitch_1
    const v2, 0x7f020116

    .line 8105
    const v0, 0x7f080103

    .line 8106
    goto :goto_2

    .line 8098
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 31
    .line 1059
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 31
    check-cast v0, Lcom/piriform/ccleaner/core/data/g;

    .line 2018
    iget-boolean v0, v0, Lcom/piriform/ccleaner/core/data/g;->g:Z

    .line 31
    if-nez v0, :cond_0

    .line 32
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/core/a/b;->a(Z)V

    .line 34
    :cond_0
    return-void
.end method
