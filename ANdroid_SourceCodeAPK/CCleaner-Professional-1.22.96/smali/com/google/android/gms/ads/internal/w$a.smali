.class public final Lcom/google/android/gms/ads/internal/w$a;
.super Landroid/widget/ViewSwitcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/adm;

.field final b:Lcom/google/android/gms/internal/adz;

.field c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 2

    .prologue
    .line 0
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/adm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/adm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/w$a;->a:Lcom/google/android/gms/internal/adm;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w$a;->a:Lcom/google/android/gms/internal/adm;

    .line 1000
    iput-object p2, v0, Lcom/google/android/gms/internal/adm;->c:Ljava/lang/String;

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w$a;->a:Lcom/google/android/gms/internal/adm;

    .line 2000
    iput-object p3, v0, Lcom/google/android/gms/internal/adm;->d:Ljava/lang/String;

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/w$a;->c:Z

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/adz;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1, p0, p4, p5}, Lcom/google/android/gms/internal/adz;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/w$a;->b:Lcom/google/android/gms/internal/adz;

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w$a;->b:Lcom/google/android/gms/internal/adz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/adz;->a()V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/adz;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p4, p5}, Lcom/google/android/gms/internal/adz;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/w$a;->b:Lcom/google/android/gms/internal/adz;

    goto :goto_0
.end method


# virtual methods
.method protected final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w$a;->b:Lcom/google/android/gms/internal/adz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w$a;->b:Lcom/google/android/gms/internal/adz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/adz;->c()V

    :cond_0
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w$a;->b:Lcom/google/android/gms/internal/adz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w$a;->b:Lcom/google/android/gms/internal/adz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/adz;->d()V

    :cond_0
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/w$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w$a;->a:Lcom/google/android/gms/internal/adm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/adm;->a(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final removeAllViews()V
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/w$a;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/w$a;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/google/android/gms/internal/aer;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/aer;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->destroy()V

    goto :goto_1

    :cond_2
    return-void
.end method
