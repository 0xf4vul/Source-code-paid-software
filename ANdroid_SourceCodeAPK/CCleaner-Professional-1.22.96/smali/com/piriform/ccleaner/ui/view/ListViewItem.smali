.class public Lcom/piriform/ccleaner/ui/view/ListViewItem;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/view/b;


# instance fields
.field a:Lcom/piriform/ccleaner/ui/view/k;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/ImageView;

.field private final d:Landroid/view/ViewGroup;

.field private final e:Landroid/widget/CheckBox;

.field private final f:Lcom/piriform/ccleaner/ui/view/e;

.field private final g:Lcom/piriform/ccleaner/p/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/p/b",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/ui/view/ListViewItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 49
    const v0, 0x7f0100ae

    invoke-direct {p0, p1, p2, v0}, Lcom/piriform/ccleaner/ui/view/ListViewItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance v0, Lcom/piriform/ccleaner/ui/view/ListViewItem$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/ui/view/ListViewItem$1;-><init>(Lcom/piriform/ccleaner/ui/view/ListViewItem;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem;->g:Lcom/piriform/ccleaner/p/b;

    .line 54
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/ui/view/ListViewItem;)V

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030091

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1016
    const v0, 0x7f10005a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 57
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem;->b:Landroid/widget/ImageView;

    .line 2016
    const v0, 0x7f100160

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem;->c:Landroid/widget/ImageView;

    .line 3016
    const v0, 0x7f100094

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 59
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem;->d:Landroid/view/ViewGroup;

    .line 4016
    const v0, 0x7f10006c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 60
    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem;->e:Landroid/widget/CheckBox;

    .line 61
    new-instance v0, Lcom/piriform/ccleaner/ui/view/e;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/ui/view/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem;->f:Lcom/piriform/ccleaner/ui/view/e;

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/view/ListViewItem;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem;->b:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem;->e:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem;->d:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 140
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem;->f:Lcom/piriform/ccleaner/ui/view/e;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/ui/view/e;->a(Landroid/graphics/Canvas;)V

    .line 141
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 108
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 109
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem;->e:Landroid/widget/CheckBox;

    invoke-static {v0}, Lcom/piriform/ccleaner/v/a;->a(Landroid/view/View;)V

    .line 112
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 134
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem;->f:Lcom/piriform/ccleaner/ui/view/e;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/ui/view/e;->a(II)V

    .line 135
    return-void
.end method

.method public setCheckable(Z)V
    .locals 2

    .prologue
    .line 119
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem;->e:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 120
    return-void

    .line 119
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 97
    .line 6123
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 97
    :goto_0
    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 100
    :cond_0
    return-void

    .line 6123
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 66
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    return-void
.end method

.method public setDividerVisible(Z)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem;->f:Lcom/piriform/ccleaner/ui/view/e;

    .line 7036
    iput-boolean p1, v0, Lcom/piriform/ccleaner/ui/view/e;->a:Z

    .line 146
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    return-void
.end method

.method public setIconContentDescription(I)V
    .locals 2

    .prologue
    .line 127
    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_0
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 129
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIconFor(Lcom/piriform/ccleaner/g/d;)V
    .locals 3

    .prologue
    .line 78
    .line 4138
    iget-object v0, p1, Lcom/piriform/ccleaner/g/d;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/piriform/ccleaner/f;->a(Ljava/lang/String;)Lcom/piriform/ccleaner/f;

    move-result-object v0

    .line 5033
    iget v0, v0, Lcom/piriform/ccleaner/f;->k:I

    .line 78
    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setIcon(I)V

    .line 5087
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem;->a:Lcom/piriform/ccleaner/ui/view/k;

    .line 6043
    new-instance v1, Lcom/piriform/ccleaner/ui/view/k$1;

    invoke-direct {v1, v0, p1}, Lcom/piriform/ccleaner/ui/view/k$1;-><init>(Lcom/piriform/ccleaner/ui/view/k;Lcom/piriform/ccleaner/g/d;)V

    .line 6036
    sget v2, Lf/a$a;->e:I

    invoke-static {v1, v2}, Lf/d;->a(Lf/c/b;I)Lf/d;

    move-result-object v1

    iget-object v2, v0, Lcom/piriform/ccleaner/ui/view/k;->c:Lf/g;

    .line 6037
    invoke-virtual {v1, v2}, Lf/d;->a(Lf/g;)Lf/d;

    move-result-object v1

    iget-object v0, v0, Lcom/piriform/ccleaner/ui/view/k;->b:Lf/g;

    .line 6038
    invoke-virtual {v1, v0}, Lf/d;->b(Lf/g;)Lf/d;

    move-result-object v0

    .line 5087
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem;->g:Lcom/piriform/ccleaner/p/b;

    .line 5088
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/e;)Lf/j;

    .line 80
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 104
    return-void
.end method

.method public setRightIcon(I)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    return-void

    .line 93
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
