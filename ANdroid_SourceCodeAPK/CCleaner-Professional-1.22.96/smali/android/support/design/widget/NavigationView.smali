.class public Landroid/support/design/widget/NavigationView;
.super Landroid/support/design/internal/ScrimInsetsFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/NavigationView$SavedState;,
        Landroid/support/design/widget/NavigationView$a;
    }
.end annotation


# static fields
.field private static final d:[I

.field private static final e:[I


# instance fields
.field c:Landroid/support/design/widget/NavigationView$a;

.field private final f:Landroid/support/design/internal/e;

.field private final g:Landroid/support/design/internal/f;

.field private h:I

.field private i:Landroid/view/MenuInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/widget/NavigationView;->d:[I

    .line 83
    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/widget/NavigationView;->e:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    new-instance v0, Landroid/support/design/internal/f;

    invoke-direct {v0}, Landroid/support/design/internal/f;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/f;

    .line 106
    invoke-static {p1}, Landroid/support/design/widget/u;->a(Landroid/content/Context;)V

    .line 109
    new-instance v0, Landroid/support/design/internal/e;

    invoke-direct {v0, p1}, Landroid/support/design/internal/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/NavigationView;->f:Landroid/support/design/internal/e;

    .line 112
    sget-object v0, Landroid/support/design/a$k;->NavigationView:[I

    sget v1, Landroid/support/design/a$j;->Widget_Design_NavigationView:I

    invoke-static {p1, p2, v0, p3, v1}, Landroid/support/v7/widget/au;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/au;

    move-result-object v6

    .line 116
    sget v0, Landroid/support/design/a$k;->NavigationView_android_background:I

    .line 117
    invoke-virtual {v6, v0}, Landroid/support/v7/widget/au;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 116
    invoke-static {p0, v0}, Landroid/support/v4/view/x;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 118
    sget v0, Landroid/support/design/a$k;->NavigationView_elevation:I

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/au;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    sget v0, Landroid/support/design/a$k;->NavigationView_elevation:I

    invoke-virtual {v6, v0, v2}, Landroid/support/v7/widget/au;->e(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Landroid/support/v4/view/x;->h(Landroid/view/View;F)V

    .line 122
    :cond_0
    sget v0, Landroid/support/design/a$k;->NavigationView_android_fitsSystemWindows:I

    .line 123
    invoke-virtual {v6, v0, v2}, Landroid/support/v7/widget/au;->a(IZ)Z

    move-result v0

    .line 122
    invoke-static {p0, v0}, Landroid/support/v4/view/x;->a(Landroid/view/View;Z)V

    .line 125
    sget v0, Landroid/support/design/a$k;->NavigationView_android_maxWidth:I

    invoke-virtual {v6, v0, v2}, Landroid/support/v7/widget/au;->e(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/NavigationView;->h:I

    .line 128
    sget v0, Landroid/support/design/a$k;->NavigationView_itemIconTint:I

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/au;->e(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 129
    sget v0, Landroid/support/design/a$k;->NavigationView_itemIconTint:I

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/au;->d(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 136
    :goto_0
    sget v1, Landroid/support/design/a$k;->NavigationView_itemTextAppearance:I

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/au;->e(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 137
    sget v1, Landroid/support/design/a$k;->NavigationView_itemTextAppearance:I

    invoke-virtual {v6, v1, v2}, Landroid/support/v7/widget/au;->g(II)I

    move-result v1

    move v3, v4

    .line 141
    :goto_1
    const/4 v5, 0x0

    .line 142
    sget v7, Landroid/support/design/a$k;->NavigationView_itemTextColor:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/au;->e(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 143
    sget v5, Landroid/support/design/a$k;->NavigationView_itemTextColor:I

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/au;->d(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 146
    :cond_1
    if-nez v3, :cond_2

    if-nez v5, :cond_2

    .line 148
    const v5, 0x1010036

    invoke-direct {p0, v5}, Landroid/support/design/widget/NavigationView;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 151
    :cond_2
    sget v7, Landroid/support/design/a$k;->NavigationView_itemBackground:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/au;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 153
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->f:Landroid/support/design/internal/e;

    new-instance v9, Landroid/support/design/widget/NavigationView$1;

    invoke-direct {v9, p0}, Landroid/support/design/widget/NavigationView$1;-><init>(Landroid/support/design/widget/NavigationView;)V

    invoke-virtual {v8, v9}, Landroid/support/design/internal/e;->a(Landroid/support/v7/view/menu/h$a;)V

    .line 162
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/f;

    .line 1159
    iput v4, v8, Landroid/support/design/internal/f;->d:I

    .line 163
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/f;

    iget-object v9, p0, Landroid/support/design/widget/NavigationView;->f:Landroid/support/design/internal/e;

    invoke-virtual {v8, p1, v9}, Landroid/support/design/internal/f;->a(Landroid/content/Context;Landroid/support/v7/view/menu/h;)V

    .line 164
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/f;

    invoke-virtual {v8, v0}, Landroid/support/design/internal/f;->a(Landroid/content/res/ColorStateList;)V

    .line 165
    if-eqz v3, :cond_3

    .line 166
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/f;

    invoke-virtual {v0, v1}, Landroid/support/design/internal/f;->a(I)V

    .line 168
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/f;

    invoke-virtual {v0, v5}, Landroid/support/design/internal/f;->b(Landroid/content/res/ColorStateList;)V

    .line 169
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/f;

    invoke-virtual {v0, v7}, Landroid/support/design/internal/f;->a(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->f:Landroid/support/design/internal/e;

    iget-object v1, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/f;

    invoke-virtual {v0, v1}, Landroid/support/design/internal/e;->a(Landroid/support/v7/view/menu/o;)V

    .line 171
    iget-object v1, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/f;

    .line 2100
    iget-object v0, v1, Landroid/support/design/internal/f;->a:Landroid/support/design/internal/NavigationMenuView;

    if-nez v0, :cond_5

    .line 2101
    iget-object v0, v1, Landroid/support/design/internal/f;->f:Landroid/view/LayoutInflater;

    sget v3, Landroid/support/design/a$h;->design_navigation_menu:I

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuView;

    iput-object v0, v1, Landroid/support/design/internal/f;->a:Landroid/support/design/internal/NavigationMenuView;

    .line 2103
    iget-object v0, v1, Landroid/support/design/internal/f;->e:Landroid/support/design/internal/f$b;

    if-nez v0, :cond_4

    .line 2104
    new-instance v0, Landroid/support/design/internal/f$b;

    invoke-direct {v0, v1}, Landroid/support/design/internal/f$b;-><init>(Landroid/support/design/internal/f;)V

    iput-object v0, v1, Landroid/support/design/internal/f;->e:Landroid/support/design/internal/f$b;

    .line 2106
    :cond_4
    iget-object v0, v1, Landroid/support/design/internal/f;->f:Landroid/view/LayoutInflater;

    sget v3, Landroid/support/design/a$h;->design_navigation_item_header:I

    iget-object v5, v1, Landroid/support/design/internal/f;->a:Landroid/support/design/internal/NavigationMenuView;

    .line 2107
    invoke-virtual {v0, v3, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Landroid/support/design/internal/f;->b:Landroid/widget/LinearLayout;

    .line 2109
    iget-object v0, v1, Landroid/support/design/internal/f;->a:Landroid/support/design/internal/NavigationMenuView;

    iget-object v3, v1, Landroid/support/design/internal/f;->e:Landroid/support/design/internal/f$b;

    invoke-virtual {v0, v3}, Landroid/support/design/internal/NavigationMenuView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 2111
    :cond_5
    iget-object v0, v1, Landroid/support/design/internal/f;->a:Landroid/support/design/internal/NavigationMenuView;

    .line 171
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/NavigationView;->addView(Landroid/view/View;)V

    .line 173
    sget v0, Landroid/support/design/a$k;->NavigationView_menu:I

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/au;->e(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 174
    sget v0, Landroid/support/design/a$k;->NavigationView_menu:I

    invoke-virtual {v6, v0, v2}, Landroid/support/v7/widget/au;->g(II)I

    move-result v0

    .line 2249
    iget-object v1, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/f;

    invoke-virtual {v1, v4}, Landroid/support/design/internal/f;->b(Z)V

    .line 2250
    invoke-direct {p0}, Landroid/support/design/widget/NavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    iget-object v3, p0, Landroid/support/design/widget/NavigationView;->f:Landroid/support/design/internal/e;

    invoke-virtual {v1, v0, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2251
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/f;

    invoke-virtual {v0, v2}, Landroid/support/design/internal/f;->b(Z)V

    .line 2252
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/f;

    invoke-virtual {v0, v2}, Landroid/support/design/internal/f;->a(Z)V

    .line 177
    :cond_6
    sget v0, Landroid/support/design/a$k;->NavigationView_headerLayout:I

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/au;->e(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 178
    sget v0, Landroid/support/design/a$k;->NavigationView_headerLayout:I

    invoke-virtual {v6, v0, v2}, Landroid/support/v7/widget/au;->g(II)I

    move-result v0

    .line 2269
    iget-object v1, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/f;

    .line 3211
    iget-object v3, v1, Landroid/support/design/internal/f;->f:Landroid/view/LayoutInflater;

    iget-object v4, v1, Landroid/support/design/internal/f;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 3217
    iget-object v3, v1, Landroid/support/design/internal/f;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3219
    iget-object v0, v1, Landroid/support/design/internal/f;->a:Landroid/support/design/internal/NavigationMenuView;

    iget-object v1, v1, Landroid/support/design/internal/f;->a:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v1}, Landroid/support/design/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/support/design/internal/NavigationMenuView;->setPadding(IIII)V

    .line 4210
    :cond_7
    iget-object v0, v6, Landroid/support/v7/widget/au;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    return-void

    .line 131
    :cond_8
    const v0, 0x1010038

    invoke-direct {p0, v0}, Landroid/support/design/widget/NavigationView;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    move v1, v2

    move v3, v2

    goto/16 :goto_1
.end method

.method private a(I)Landroid/content/res/ColorStateList;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 418
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 419
    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-object v0

    .line 423
    :cond_1
    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    .line 422
    invoke-static {v2, v3}, Landroid/support/v7/c/a/b;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 424
    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroid/support/v7/a/a$a;->colorPrimary:I

    invoke-virtual {v3, v4, v1, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 428
    iget v1, v1, Landroid/util/TypedValue;->data:I

    .line 429
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    .line 430
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v4, v6, [[I

    sget-object v5, Landroid/support/design/widget/NavigationView;->e:[I

    aput-object v5, v4, v8

    sget-object v5, Landroid/support/design/widget/NavigationView;->d:[I

    aput-object v5, v4, v7

    sget-object v5, Landroid/support/design/widget/NavigationView;->EMPTY_STATE_SET:[I

    aput-object v5, v4, v9

    new-array v5, v6, [I

    sget-object v6, Landroid/support/design/widget/NavigationView;->e:[I

    .line 435
    invoke-virtual {v2, v6, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    aput v2, v5, v8

    aput v1, v5, v7

    aput v3, v5, v9

    invoke-direct {v0, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto :goto_0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->i:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 412
    new-instance v0, Landroid/support/v7/view/g;

    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/view/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/NavigationView;->i:Landroid/view/MenuInflater;

    .line 414
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->i:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/support/v4/view/am;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 238
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/f;

    .line 5280
    invoke-virtual {p1}, Landroid/support/v4/view/am;->b()I

    move-result v1

    .line 5281
    iget v2, v0, Landroid/support/design/internal/f;->l:I

    if-eq v2, v1, :cond_0

    .line 5282
    iput v1, v0, Landroid/support/design/internal/f;->l:I

    .line 5283
    iget-object v1, v0, Landroid/support/design/internal/f;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 5284
    iget-object v1, v0, Landroid/support/design/internal/f;->a:Landroid/support/design/internal/NavigationMenuView;

    iget v2, v0, Landroid/support/design/internal/f;->l:I

    iget-object v3, v0, Landroid/support/design/internal/f;->a:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v3}, Landroid/support/design/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/support/design/internal/NavigationMenuView;->setPadding(IIII)V

    .line 5287
    :cond_0
    iget-object v0, v0, Landroid/support/design/internal/f;->b:Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Landroid/support/v4/view/x;->b(Landroid/view/View;Landroid/support/v4/view/am;)Landroid/support/v4/view/am;

    .line 239
    return-void
.end method

.method public getHeaderCount()I
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/f;

    .line 6230
    iget-object v0, v0, Landroid/support/design/internal/f;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 296
    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/f;

    .line 6265
    iget-object v0, v0, Landroid/support/design/internal/f;->k:Landroid/graphics/drawable/Drawable;

    .line 365
    return-object v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/f;

    .line 6239
    iget-object v0, v0, Landroid/support/design/internal/f;->j:Landroid/content/res/ColorStateList;

    .line 319
    return-object v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/f;

    .line 6249
    iget-object v0, v0, Landroid/support/design/internal/f;->i:Landroid/content/res/ColorStateList;

    .line 342
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->f:Landroid/support/design/internal/e;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 216
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 229
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->onMeasure(II)V

    .line 230
    return-void

    .line 222
    :sswitch_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/NavigationView;->h:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 221
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 225
    :sswitch_2
    iget v0, p0, Landroid/support/design/widget/NavigationView;->h:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 216
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 195
    instance-of v0, p1, Landroid/support/design/widget/NavigationView$SavedState;

    if-nez v0, :cond_0

    .line 196
    invoke-super {p0, p1}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_0
    check-cast p1, Landroid/support/design/widget/NavigationView$SavedState;

    .line 5073
    iget-object v0, p1, Landroid/support/v4/view/AbsSavedState;->e:Landroid/os/Parcelable;

    .line 200
    invoke-super {p0, v0}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 201
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->f:Landroid/support/design/internal/e;

    iget-object v1, p1, Landroid/support/design/widget/NavigationView$SavedState;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/support/design/internal/e;->b(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 186
    invoke-super {p0}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 187
    new-instance v1, Landroid/support/design/widget/NavigationView$SavedState;

    invoke-direct {v1, v0}, Landroid/support/design/widget/NavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 188
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Landroid/support/design/widget/NavigationView$SavedState;->a:Landroid/os/Bundle;

    .line 189
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->f:Landroid/support/design/internal/e;

    iget-object v2, v1, Landroid/support/design/widget/NavigationView$SavedState;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/support/design/internal/e;->a(Landroid/os/Bundle;)V

    .line 190
    return-object v1
.end method

.method public setCheckedItem(I)V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->f:Landroid/support/design/internal/e;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/e;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 396
    if-eqz v0, :cond_0

    .line 397
    iget-object v1, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/f;

    check-cast v0, Landroid/support/v7/view/menu/j;

    .line 7207
    iget-object v1, v1, Landroid/support/design/internal/f;->e:Landroid/support/design/internal/f$b;

    invoke-virtual {v1, v0}, Landroid/support/design/internal/f$b;->a(Landroid/support/v7/view/menu/j;)V

    .line 399
    :cond_0
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/f;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/f;->a(Landroid/graphics/drawable/Drawable;)V

    .line 387
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1

    .prologue
    .line 376
    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/b/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 377
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/f;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/f;->a(Landroid/content/res/ColorStateList;)V

    .line 331
    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/f;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/f;->a(I)V

    .line 408
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/f;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/f;->b(Landroid/content/res/ColorStateList;)V

    .line 354
    return-void
.end method

.method public setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$a;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Landroid/support/design/widget/NavigationView;->c:Landroid/support/design/widget/NavigationView$a;

    .line 212
    return-void
.end method
