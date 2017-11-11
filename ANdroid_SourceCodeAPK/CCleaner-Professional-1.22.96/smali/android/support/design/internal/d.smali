.class public final Landroid/support/design/internal/d;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/p;


# instance fields
.field final a:Landroid/support/design/internal/a;

.field b:[Landroid/support/design/internal/BottomNavigationItemView;

.field c:I

.field d:I

.field e:Landroid/support/design/internal/BottomNavigationPresenter;

.field f:Landroid/support/v7/view/menu/h;

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:Landroid/view/View$OnClickListener;

.field private final l:Landroid/support/v4/h/j$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/h/j$a",
            "<",
            "Landroid/support/design/internal/BottomNavigationItemView;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Landroid/content/res/ColorStateList;

.field private o:Landroid/content/res/ColorStateList;

.field private p:I

.field private q:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/d;-><init>(Landroid/content/Context;B)V

    .line 66
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Landroid/support/v4/h/j$c;

    invoke-direct {v0, v2}, Landroid/support/v4/h/j$c;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/internal/d;->l:Landroid/support/v4/h/j$a;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/internal/d;->m:Z

    .line 54
    iput v1, p0, Landroid/support/design/internal/d;->c:I

    .line 55
    iput v1, p0, Landroid/support/design/internal/d;->d:I

    .line 70
    invoke-virtual {p0}, Landroid/support/design/internal/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    sget v1, Landroid/support/design/a$d;->design_bottom_navigation_item_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/d;->g:I

    .line 73
    sget v1, Landroid/support/design/a$d;->design_bottom_navigation_item_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/d;->h:I

    .line 75
    sget v1, Landroid/support/design/a$d;->design_bottom_navigation_active_item_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/d;->i:I

    .line 77
    sget v1, Landroid/support/design/a$d;->design_bottom_navigation_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/d;->j:I

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 80
    new-instance v0, Landroid/support/design/internal/b;

    invoke-direct {v0}, Landroid/support/design/internal/b;-><init>()V

    iput-object v0, p0, Landroid/support/design/internal/d;->a:Landroid/support/design/internal/a;

    .line 85
    :goto_0
    new-instance v0, Landroid/support/design/internal/d$1;

    invoke-direct {v0, p0}, Landroid/support/design/internal/d$1;-><init>(Landroid/support/design/internal/d;)V

    iput-object v0, p0, Landroid/support/design/internal/d;->k:Landroid/view/View$OnClickListener;

    .line 95
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/design/internal/d;->q:[I

    .line 96
    return-void

    .line 82
    :cond_0
    new-instance v0, Landroid/support/design/internal/a;

    invoke-direct {v0}, Landroid/support/design/internal/a;-><init>()V

    iput-object v0, p0, Landroid/support/design/internal/d;->a:Landroid/support/design/internal/a;

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/design/internal/d;)Landroid/support/design/internal/BottomNavigationPresenter;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/design/internal/d;->e:Landroid/support/design/internal/BottomNavigationPresenter;

    return-object v0
.end method

.method static synthetic b(Landroid/support/design/internal/d;)Landroid/support/v7/view/menu/h;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/design/internal/d;->f:Landroid/support/v7/view/menu/h;

    return-object v0
.end method

.method private getNewItem()Landroid/support/design/internal/BottomNavigationItemView;
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Landroid/support/design/internal/d;->l:Landroid/support/v4/h/j$a;

    invoke-interface {v0}, Landroid/support/v4/h/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/BottomNavigationItemView;

    .line 316
    if-nez v0, :cond_0

    .line 317
    new-instance v0, Landroid/support/design/internal/BottomNavigationItemView;

    invoke-virtual {p0}, Landroid/support/design/internal/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/design/internal/BottomNavigationItemView;-><init>(Landroid/content/Context;)V

    .line 319
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 252
    invoke-virtual {p0}, Landroid/support/design/internal/d;->removeAllViews()V

    .line 253
    iget-object v0, p0, Landroid/support/design/internal/d;->b:[Landroid/support/design/internal/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 254
    iget-object v3, p0, Landroid/support/design/internal/d;->b:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v4, v3

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 255
    iget-object v6, p0, Landroid/support/design/internal/d;->l:Landroid/support/v4/h/j$a;

    invoke-interface {v6, v5}, Landroid/support/v4/h/j$a;->a(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/d;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 259
    iput v2, p0, Landroid/support/design/internal/d;->c:I

    .line 260
    iput v2, p0, Landroid/support/design/internal/d;->d:I

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/internal/d;->b:[Landroid/support/design/internal/BottomNavigationItemView;

    .line 283
    :goto_1
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/d;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/design/internal/BottomNavigationItemView;

    iput-object v0, p0, Landroid/support/design/internal/d;->b:[Landroid/support/design/internal/BottomNavigationItemView;

    .line 265
    iget-object v0, p0, Landroid/support/design/internal/d;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->size()I

    move-result v0

    const/4 v3, 0x3

    if-le v0, v3, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/support/design/internal/d;->m:Z

    move v3, v2

    .line 266
    :goto_3
    iget-object v0, p0, Landroid/support/design/internal/d;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 267
    iget-object v0, p0, Landroid/support/design/internal/d;->e:Landroid/support/design/internal/BottomNavigationPresenter;

    .line 1118
    iput-boolean v1, v0, Landroid/support/design/internal/BottomNavigationPresenter;->b:Z

    .line 268
    iget-object v0, p0, Landroid/support/design/internal/d;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 269
    iget-object v0, p0, Landroid/support/design/internal/d;->e:Landroid/support/design/internal/BottomNavigationPresenter;

    .line 2118
    iput-boolean v2, v0, Landroid/support/design/internal/BottomNavigationPresenter;->b:Z

    .line 270
    invoke-direct {p0}, Landroid/support/design/internal/d;->getNewItem()Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object v4

    .line 271
    iget-object v0, p0, Landroid/support/design/internal/d;->b:[Landroid/support/design/internal/BottomNavigationItemView;

    aput-object v4, v0, v3

    .line 272
    iget-object v0, p0, Landroid/support/design/internal/d;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v0}, Landroid/support/design/internal/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 273
    iget-object v0, p0, Landroid/support/design/internal/d;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v0}, Landroid/support/design/internal/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 274
    iget v0, p0, Landroid/support/design/internal/d;->p:I

    invoke-virtual {v4, v0}, Landroid/support/design/internal/BottomNavigationItemView;->setItemBackground(I)V

    .line 275
    iget-boolean v0, p0, Landroid/support/design/internal/d;->m:Z

    invoke-virtual {v4, v0}, Landroid/support/design/internal/BottomNavigationItemView;->setShiftingMode(Z)V

    .line 276
    iget-object v0, p0, Landroid/support/design/internal/d;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/j;

    invoke-virtual {v4, v0}, Landroid/support/design/internal/BottomNavigationItemView;->a(Landroid/support/v7/view/menu/j;)V

    .line 277
    invoke-virtual {v4, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setItemPosition(I)V

    .line 278
    iget-object v0, p0, Landroid/support/design/internal/d;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v0}, Landroid/support/design/internal/BottomNavigationItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    invoke-virtual {p0, v4}, Landroid/support/design/internal/d;->addView(Landroid/view/View;)V

    .line 266
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_2
    move v0, v2

    .line 265
    goto :goto_2

    .line 281
    :cond_3
    iget-object v0, p0, Landroid/support/design/internal/d;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Landroid/support/design/internal/d;->d:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/d;->d:I

    .line 282
    iget-object v0, p0, Landroid/support/design/internal/d;->f:Landroid/support/v7/view/menu/h;

    iget v2, p0, Landroid/support/design/internal/d;->d:I

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto/16 :goto_1
.end method

.method public final a(Landroid/support/v7/view/menu/h;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Landroid/support/design/internal/d;->f:Landroid/support/v7/view/menu/h;

    .line 101
    return-void
.end method

.method public final getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Landroid/support/design/internal/d;->n:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getItemBackgroundRes()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Landroid/support/design/internal/d;->p:I

    return v0
.end method

.method public final getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Landroid/support/design/internal/d;->o:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getSelectedItemId()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Landroid/support/design/internal/d;->c:I

    return v0
.end method

.method public final getWindowAnimations()I
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method protected final onLayout(ZIIII)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-virtual {p0}, Landroid/support/design/internal/d;->getChildCount()I

    move-result v3

    .line 158
    sub-int v4, p4, p2

    .line 159
    sub-int v5, p5, p3

    move v1, v2

    move v0, v2

    .line 161
    :goto_0
    if-ge v1, v3, :cond_2

    .line 162
    invoke-virtual {p0, v1}, Landroid/support/design/internal/d;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 163
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    .line 166
    invoke-static {p0}, Landroid/support/v4/view/x;->g(Landroid/view/View;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 167
    sub-int v7, v4, v0

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v8, v4, v0

    invoke-virtual {v6, v7, v2, v8, v5}, Landroid/view/View;->layout(IIII)V

    .line 171
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v0, v6

    .line 161
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {v6, v0, v2, v7, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 173
    :cond_2
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 105
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 106
    invoke-virtual {p0}, Landroid/support/design/internal/d;->getChildCount()I

    move-result v4

    .line 108
    iget v0, p0, Landroid/support/design/internal/d;->j:I

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 110
    iget-boolean v0, p0, Landroid/support/design/internal/d;->m:Z

    if-eqz v0, :cond_1

    .line 111
    add-int/lit8 v0, v4, -0x1

    .line 112
    iget v1, p0, Landroid/support/design/internal/d;->h:I

    mul-int/2addr v1, v0

    sub-int v1, v3, v1

    .line 113
    iget v2, p0, Landroid/support/design/internal/d;->i:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 114
    sub-int v2, v3, v1

    div-int/2addr v2, v0

    .line 115
    iget v6, p0, Landroid/support/design/internal/d;->g:I

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 116
    sub-int/2addr v3, v1

    mul-int/2addr v0, v2

    sub-int/2addr v3, v0

    move v6, v5

    .line 117
    :goto_0
    if-ge v6, v4, :cond_4

    .line 118
    iget-object v8, p0, Landroid/support/design/internal/d;->q:[I

    iget v0, p0, Landroid/support/design/internal/d;->d:I

    if-ne v6, v0, :cond_0

    move v0, v1

    :goto_1
    aput v0, v8, v6

    .line 119
    if-lez v3, :cond_7

    .line 120
    iget-object v0, p0, Landroid/support/design/internal/d;->q:[I

    aget v8, v0, v6

    add-int/lit8 v8, v8, 0x1

    aput v8, v0, v6

    .line 121
    add-int/lit8 v0, v3, -0x1

    .line 117
    :goto_2
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 118
    goto :goto_1

    .line 125
    :cond_1
    if-nez v4, :cond_3

    const/4 v0, 0x1

    :goto_3
    div-int v0, v3, v0

    .line 126
    iget v1, p0, Landroid/support/design/internal/d;->i:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 127
    mul-int v0, v2, v4

    sub-int v0, v3, v0

    move v1, v5

    .line 128
    :goto_4
    if-ge v1, v4, :cond_4

    .line 129
    iget-object v3, p0, Landroid/support/design/internal/d;->q:[I

    aput v2, v3, v1

    .line 130
    if-lez v0, :cond_2

    .line 131
    iget-object v3, p0, Landroid/support/design/internal/d;->q:[I

    aget v6, v3, v1

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v1

    .line 132
    add-int/lit8 v0, v0, -0x1

    .line 128
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    move v0, v4

    .line 125
    goto :goto_3

    :cond_4
    move v1, v5

    move v0, v5

    .line 138
    :goto_5
    if-ge v1, v4, :cond_6

    .line 139
    invoke-virtual {p0, v1}, Landroid/support/design/internal/d;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-eq v3, v6, :cond_5

    .line 143
    iget-object v3, p0, Landroid/support/design/internal/d;->q:[I

    aget v3, v3, v1

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3, v7}, Landroid/view/View;->measure(II)V

    .line 145
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 146
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 147
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v0, v2

    .line 138
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 151
    :cond_6
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 150
    invoke-static {v0, v1, v5}, Landroid/support/v4/view/x;->a(III)I

    move-result v0

    iget v1, p0, Landroid/support/design/internal/d;->j:I

    .line 152
    invoke-static {v1, v7, v5}, Landroid/support/v4/view/x;->a(III)I

    move-result v1

    .line 149
    invoke-virtual {p0, v0, v1}, Landroid/support/design/internal/d;->setMeasuredDimension(II)V

    .line 153
    return-void

    :cond_7
    move v0, v3

    goto :goto_2
.end method

.method public final setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 186
    iput-object p1, p0, Landroid/support/design/internal/d;->n:Landroid/content/res/ColorStateList;

    .line 187
    iget-object v0, p0, Landroid/support/design/internal/d;->b:[Landroid/support/design/internal/BottomNavigationItemView;

    if-nez v0, :cond_1

    .line 191
    :cond_0
    return-void

    .line 188
    :cond_1
    iget-object v1, p0, Landroid/support/design/internal/d;->b:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 189
    invoke-virtual {v3, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final setItemBackgroundRes(I)V
    .locals 4

    .prologue
    .line 231
    iput p1, p0, Landroid/support/design/internal/d;->p:I

    .line 232
    iget-object v0, p0, Landroid/support/design/internal/d;->b:[Landroid/support/design/internal/BottomNavigationItemView;

    if-nez v0, :cond_1

    .line 236
    :cond_0
    return-void

    .line 233
    :cond_1
    iget-object v1, p0, Landroid/support/design/internal/d;->b:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 234
    invoke-virtual {v3, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setItemBackground(I)V

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 209
    iput-object p1, p0, Landroid/support/design/internal/d;->o:Landroid/content/res/ColorStateList;

    .line 210
    iget-object v0, p0, Landroid/support/design/internal/d;->b:[Landroid/support/design/internal/BottomNavigationItemView;

    if-nez v0, :cond_1

    .line 214
    :cond_0
    return-void

    .line 211
    :cond_1
    iget-object v1, p0, Landroid/support/design/internal/d;->b:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 212
    invoke-virtual {v3, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final setPresenter(Landroid/support/design/internal/BottomNavigationPresenter;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Landroid/support/design/internal/d;->e:Landroid/support/design/internal/BottomNavigationPresenter;

    .line 249
    return-void
.end method
