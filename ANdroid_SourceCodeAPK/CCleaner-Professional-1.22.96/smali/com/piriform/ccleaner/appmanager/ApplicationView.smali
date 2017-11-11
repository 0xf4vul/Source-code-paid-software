.class public Lcom/piriform/ccleaner/appmanager/ApplicationView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/view/b;


# instance fields
.field final a:Landroid/widget/TextView;

.field final b:Landroid/widget/TextView;

.field final c:Landroid/view/ViewGroup;

.field d:Lcom/piriform/ccleaner/core/data/AndroidPackage;

.field e:Lcom/piriform/ccleaner/t/f;

.field private final f:Landroid/widget/ImageView;

.field private final g:Landroid/widget/CheckBox;

.field private final h:Lcom/piriform/ccleaner/ui/view/e;

.field private final i:Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;

.field private final j:Landroid/view/View$OnClickListener;

.field private final k:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private l:Lcom/piriform/ccleaner/q/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/q/b",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/piriform/ccleaner/q/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/q/b",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/appmanager/ApplicationView;-><init>(Landroid/content/Context;B)V

    .line 68
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x0

    const v1, 0x7f0100ae

    invoke-direct {p0, p1, v0, v1}, Lcom/piriform/ccleaner/appmanager/ApplicationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v0, Lcom/piriform/ccleaner/appmanager/ApplicationView$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/appmanager/ApplicationView$1;-><init>(Lcom/piriform/ccleaner/appmanager/ApplicationView;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->j:Landroid/view/View$OnClickListener;

    .line 52
    new-instance v0, Lcom/piriform/ccleaner/appmanager/ApplicationView$2;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/appmanager/ApplicationView$2;-><init>(Lcom/piriform/ccleaner/appmanager/ApplicationView;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->k:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008b

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 78
    invoke-virtual {p0, v2}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->setOrientation(I)V

    .line 80
    invoke-virtual {p0}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/piriform/ccleaner/CCleanerApplication;->a(Landroid/content/Context;)Lcom/piriform/ccleaner/CCleanerApplication;

    move-result-object v0

    .line 1058
    iget-object v0, v0, Lcom/piriform/ccleaner/CCleanerApplication;->d:Lcom/piriform/ccleaner/t/p;

    .line 80
    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->e:Lcom/piriform/ccleaner/t/f;

    .line 2016
    const v0, 0x7f10005a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 82
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->f:Landroid/widget/ImageView;

    .line 3016
    const v0, 0x7f10006c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 83
    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->g:Landroid/widget/CheckBox;

    .line 4016
    const v0, 0x7f100148

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 84
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->a:Landroid/widget/TextView;

    .line 5016
    const v0, 0x7f100149

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 85
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->b:Landroid/widget/TextView;

    .line 6016
    const v0, 0x7f1000f5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 86
    check-cast v0, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->i:Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;

    .line 7016
    const v0, 0x7f10014d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 87
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->c:Landroid/view/ViewGroup;

    .line 8016
    const v0, 0x7f10014c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->g:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->k:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 94
    new-instance v0, Lcom/piriform/ccleaner/ui/view/e;

    invoke-direct {v0, p1}, Lcom/piriform/ccleaner/ui/view/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->h:Lcom/piriform/ccleaner/ui/view/e;

    .line 96
    invoke-virtual {p0, v2}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->setClickable(Z)V

    .line 97
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    .line 8109
    iget-object v2, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    .line 130
    :goto_0
    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->setExpanded(Z)V

    .line 131
    return-void

    :cond_0
    move v2, v1

    .line 8109
    goto :goto_0

    :cond_1
    move v0, v1

    .line 130
    goto :goto_1
.end method

.method static synthetic a(Lcom/piriform/ccleaner/appmanager/ApplicationView;)Z
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/piriform/ccleaner/appmanager/ApplicationView;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->g:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/piriform/ccleaner/appmanager/ApplicationView;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->a()V

    return-void
.end method

.method static synthetic d(Lcom/piriform/ccleaner/appmanager/ApplicationView;)Lcom/piriform/ccleaner/q/b;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->l:Lcom/piriform/ccleaner/q/b;

    return-object v0
.end method

.method static synthetic e(Lcom/piriform/ccleaner/appmanager/ApplicationView;)Lcom/piriform/ccleaner/core/data/AndroidPackage;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->d:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    return-object v0
.end method


# virtual methods
.method final a(IJ)V
    .locals 2

    .prologue
    .line 230
    invoke-static {p2, p3}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->a(ILjava/lang/String;)V

    .line 231
    return-void
.end method

.method final a(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 223
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030062

    iget-object v2, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->c:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 224
    const v0, 0x7f100115

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 225
    const v0, 0x7f100116

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 227
    return-void
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->g:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 172
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->h:Lcom/piriform/ccleaner/ui/view/e;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/ui/view/e;->a(Landroid/graphics/Canvas;)V

    .line 173
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 165
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 166
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->h:Lcom/piriform/ccleaner/ui/view/e;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/ui/view/e;->a(II)V

    .line 167
    return-void
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->a()V

    .line 160
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 146
    iget-object v3, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->g:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->i:Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->setVisibility(I)V

    .line 148
    return-void

    :cond_0
    move v0, v2

    .line 146
    goto :goto_0

    :cond_1
    move v2, v1

    .line 147
    goto :goto_1
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 153
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 155
    :cond_0
    return-void
.end method

.method public setDividerVisible(Z)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->h:Lcom/piriform/ccleaner/ui/view/e;

    .line 9036
    iput-boolean p1, v0, Lcom/piriform/ccleaner/ui/view/e;->a:Z

    .line 178
    return-void
.end method

.method public setExpanded(Z)V
    .locals 2

    .prologue
    .line 113
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 114
    :goto_0
    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->i:Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->setExpanded(Z)V

    .line 116
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->m:Lcom/piriform/ccleaner/q/b;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->m:Lcom/piriform/ccleaner/q/b;

    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->d:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    invoke-interface {v0, v1, p1}, Lcom/piriform/ccleaner/q/b;->a(Ljava/lang/Object;Z)V

    .line 119
    :cond_0
    return-void

    .line 113
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setItemSelectedListener(Lcom/piriform/ccleaner/q/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/q/b",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->l:Lcom/piriform/ccleaner/q/b;

    .line 123
    return-void
.end method

.method public setOnExpandListener(Lcom/piriform/ccleaner/q/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/q/b",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView;->m:Lcom/piriform/ccleaner/q/b;

    .line 127
    return-void
.end method
