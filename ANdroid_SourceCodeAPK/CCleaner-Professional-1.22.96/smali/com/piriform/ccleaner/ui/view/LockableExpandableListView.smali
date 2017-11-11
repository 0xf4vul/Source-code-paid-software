.class public Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$b;,
        Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$a;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:Z

.field private g:Z

.field private h:Lcom/piriform/ccleaner/ui/view/g;

.field private i:I

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/view/View;

.field private p:Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-direct {p0, p2}, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->a(Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-direct {p0, p2}, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->a(Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;)F
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->b:F

    return v0
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->a:F

    .line 1083
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1084
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1085
    sget-object v1, Lcom/piriform/ccleaner/h$a;->LockableExpandableListView:[I

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1087
    :try_start_0
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00af

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1088
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->b:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1090
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    new-instance v0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$1;-><init>(Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;)V

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 80
    return-void

    .line 1090
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 232
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->h:Lcom/piriform/ccleaner/ui/view/g;

    if-nez v2, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->c:F

    sub-float v3, v2, v3

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v4, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->d:F

    sub-float v4, v2, v4

    .line 4293
    const/4 v2, 0x0

    cmpg-float v2, v3, v2

    if-gez v2, :cond_4

    move v2, v1

    .line 239
    :goto_1
    if-eqz v2, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 241
    if-eqz v2, :cond_2

    .line 244
    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 247
    :cond_2
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->a:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->a:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 248
    iput-boolean v1, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->g:Z

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->e:F

    .line 250
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->h:Lcom/piriform/ccleaner/ui/view/g;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/view/g;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5279
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 5280
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->m:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    :cond_3
    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 256
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 260
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    or-int/lit8 v0, v0, 0x3

    .line 258
    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 262
    invoke-super {p0, v2}, Landroid/widget/ExpandableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    move v0, v1

    .line 267
    goto :goto_0

    :cond_4
    move v2, v0

    .line 4293
    goto :goto_1

    .line 264
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    throw v0
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->f:Z

    return p1
.end method

.method private getViewsFromListItemView()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->h:Lcom/piriform/ccleaner/ui/view/g;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/view/g;->getFrontView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->j:Landroid/view/View;

    .line 285
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->h:Lcom/piriform/ccleaner/ui/view/g;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/view/g;->getBackView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->k:Landroid/view/View;

    .line 286
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->h:Lcom/piriform/ccleaner/ui/view/g;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/view/g;->getLockViewInBack()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->l:Landroid/widget/ImageView;

    .line 287
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->h:Lcom/piriform/ccleaner/ui/view/g;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/view/g;->getLockViewInFront()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->m:Landroid/widget/ImageView;

    .line 288
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->h:Lcom/piriform/ccleaner/ui/view/g;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/view/g;->getLockViewOnTop()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->n:Landroid/widget/ImageView;

    .line 289
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->h:Lcom/piriform/ccleaner/ui/view/g;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/view/g;->getViewHiddenByLock()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->o:Landroid/view/View;

    .line 290
    return-void
.end method

.method private setCurrentDraggingPositionLocked(Z)V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->p:Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$b;

    iget v1, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->i:I

    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$b;->a(Ljava/lang/Object;Z)V

    .line 275
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->h:Lcom/piriform/ccleaner/ui/view/g;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/ui/view/g;->setLockedState(Z)V

    .line 276
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 96
    invoke-static {p1}, Landroid/support/v4/view/m;->a(Landroid/view/MotionEvent;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 145
    :cond_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 98
    :pswitch_1
    iget-boolean v1, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->f:Z

    if-nez v1, :cond_0

    .line 102
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 103
    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->getLocationOnScreen([I)V

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    aget v3, v1, v3

    sub-int/2addr v2, v3

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    aget v0, v1, v0

    sub-int/2addr v3, v0

    .line 107
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 108
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->getChildCount()I

    move-result v5

    .line 109
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->getHeaderViewsCount()I

    move-result v0

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_0

    .line 110
    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_1

    instance-of v6, v0, Lcom/piriform/ccleaner/ui/view/g;

    if-eqz v6, :cond_1

    .line 115
    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 116
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->c:F

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->d:F

    .line 120
    check-cast v0, Lcom/piriform/ccleaner/ui/view/g;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->h:Lcom/piriform/ccleaner/ui/view/g;

    .line 121
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->getFirstVisiblePosition()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->i:I

    .line 122
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->getViewsFromListItemView()V

    .line 124
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->h:Lcom/piriform/ccleaner/ui/view/g;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/view/g;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->h:Lcom/piriform/ccleaner/ui/view/g;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/view/g;->c()V

    .line 109
    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->h:Lcom/piriform/ccleaner/ui/view/g;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/view/g;->b()V

    goto :goto_2

    .line 133
    :pswitch_2
    iget-boolean v1, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->f:Z

    if-nez v1, :cond_0

    .line 137
    iget-boolean v1, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->g:Z

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const-wide/16 v8, 0xc8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 151
    invoke-static {p1}, Landroid/support/v4/view/m;->a(Landroid/view/MotionEvent;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 228
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_1
    :goto_1
    return v1

    .line 153
    :pswitch_0
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->g:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v4, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->e:F

    sub-float/2addr v0, v4

    .line 158
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->b:F

    iget v5, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->a:F

    sub-float/2addr v4, v5

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_2

    move v0, v1

    .line 159
    :goto_2
    iget-object v4, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->h:Lcom/piriform/ccleaner/ui/view/g;

    invoke-interface {v4}, Lcom/piriform/ccleaner/ui/view/g;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 160
    if-eqz v0, :cond_3

    .line 161
    invoke-direct {p0, v2}, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->setCurrentDraggingPositionLocked(Z)V

    .line 1326
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->h:Lcom/piriform/ccleaner/ui/view/g;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/view/g;->e()V

    .line 1328
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->m:Landroid/widget/ImageView;

    .line 1329
    new-instance v1, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$a;

    iget-object v4, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->j:Landroid/view/View;

    iget-object v5, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->m:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->n:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v4, v5, v6}, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$a;-><init>(Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 1330
    iget-object v4, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 1331
    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x190

    .line 1332
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 1333
    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$2;

    invoke-direct {v3, p0, v0}, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$2;-><init>(Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;Landroid/widget/ImageView;)V

    .line 1334
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 3297
    :goto_3
    iput-boolean v2, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->g:Z

    .line 3298
    iput-object v7, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->h:Lcom/piriform/ccleaner/ui/view/g;

    .line 3299
    iput-object v7, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->j:Landroid/view/View;

    .line 3300
    iput-object v7, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->k:Landroid/view/View;

    .line 3301
    iput-object v7, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->l:Landroid/widget/ImageView;

    .line 3302
    iput-object v7, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->m:Landroid/widget/ImageView;

    .line 3303
    iput-object v7, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->n:Landroid/widget/ImageView;

    goto :goto_0

    :cond_2
    move v0, v2

    .line 158
    goto :goto_2

    .line 1345
    :cond_3
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1346
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1347
    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 1348
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1349
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 1350
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1351
    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1352
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1353
    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_3

    .line 167
    :cond_4
    if-eqz v0, :cond_5

    .line 168
    invoke-direct {p0, v1}, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->setCurrentDraggingPositionLocked(Z)V

    .line 2307
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->h:Lcom/piriform/ccleaner/ui/view/g;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/view/g;->d()V

    .line 2309
    new-instance v0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$a;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->j:Landroid/view/View;

    iget-object v4, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->m:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->n:Landroid/widget/ImageView;

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$a;-><init>(Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 2310
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 2311
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v4, 0x190

    .line 2312
    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 2313
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2314
    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_3

    .line 2318
    :cond_5
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2319
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2320
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2321
    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2322
    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_3

    .line 177
    :pswitch_1
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->f:Z

    if-nez v0, :cond_0

    .line 183
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->g:Z

    if-nez v0, :cond_6

    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v4, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->e:F

    sub-float/2addr v0, v4

    .line 190
    iget v4, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->b:F

    neg-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_8

    .line 191
    iget v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->b:F

    neg-float v0, v0

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget v5, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->b:F

    add-float/2addr v4, v5

    iput v4, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->e:F

    .line 200
    :cond_7
    :goto_4
    iget-object v4, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->l:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    .line 201
    iget-object v4, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 202
    int-to-float v4, v6

    add-float v5, v0, v4

    .line 203
    iget-object v7, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->l:Landroid/widget/ImageView;

    cmpl-float v4, v5, v3

    if-lez v4, :cond_9

    move v4, v3

    :goto_5
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 205
    cmpg-float v4, v5, v3

    if-gez v4, :cond_a

    .line 206
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->b:F

    int-to-float v7, v6

    sub-float/2addr v4, v7

    div-float/2addr v2, v4

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 207
    iget-object v4, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->k:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 212
    :goto_6
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->h:Lcom/piriform/ccleaner/ui/view/g;

    invoke-interface {v2}, Lcom/piriform/ccleaner/ui/view/g;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->b:F

    div-float/2addr v0, v4

    sub-float v0, v2, v0

    .line 214
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->m:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 215
    cmpl-float v0, v5, v3

    if-lez v0, :cond_b

    .line 216
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->o:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_1

    .line 193
    :cond_8
    cmpl-float v4, v0, v3

    if-lez v4, :cond_7

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->e:F

    move v0, v3

    goto :goto_4

    :cond_9
    move v4, v5

    .line 203
    goto :goto_5

    .line 209
    :cond_a
    iget-object v4, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->k:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_6

    .line 218
    :cond_b
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->o:Landroid/view/View;

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->b:F

    int-to-float v4, v6

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_1

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setLocker(Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$b;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->p:Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$b;

    .line 358
    return-void
.end method
