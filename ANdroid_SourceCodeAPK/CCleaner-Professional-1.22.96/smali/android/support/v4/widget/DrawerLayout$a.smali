.class final Landroid/support/v4/widget/DrawerLayout$a;
.super Landroid/support/v4/view/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/DrawerLayout;

.field private final c:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/DrawerLayout;)V
    .locals 1

    .prologue
    .line 2260
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$a;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0}, Landroid/support/v4/view/a;-><init>()V

    .line 2261
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout$a;->c:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/a/b;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2265
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->b:Z

    if-eqz v0, :cond_1

    .line 2266
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/support/v4/view/a/b;)V

    .line 2285
    :cond_0
    const-class v0, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/b;->b(Ljava/lang/CharSequence;)V

    .line 2290
    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/b;->b(Z)V

    .line 2291
    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/b;->c(Z)V

    .line 2292
    sget-object v0, Landroid/support/v4/view/a/b$a;->a:Landroid/support/v4/view/a/b$a;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/b;->a(Landroid/support/v4/view/a/b$a;)Z

    .line 2293
    sget-object v0, Landroid/support/v4/view/a/b$a;->b:Landroid/support/v4/view/a/b$a;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/b;->a(Landroid/support/v4/view/a/b$a;)Z

    .line 2294
    return-void

    .line 2271
    :cond_1
    invoke-static {p2}, Landroid/support/v4/view/a/b;->a(Landroid/support/v4/view/a/b;)Landroid/support/v4/view/a/b;

    move-result-object v2

    .line 2272
    invoke-super {p0, p1, v2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/support/v4/view/a/b;)V

    .line 2274
    invoke-virtual {p2, p1}, Landroid/support/v4/view/a/b;->a(Landroid/view/View;)V

    .line 2275
    invoke-static {p1}, Landroid/support/v4/view/x;->h(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    .line 2276
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    .line 2277
    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/b;->c(Landroid/view/View;)V

    .line 3353
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$a;->c:Landroid/graphics/Rect;

    .line 3355
    invoke-virtual {v2, v0}, Landroid/support/v4/view/a/b;->a(Landroid/graphics/Rect;)V

    .line 3356
    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/b;->b(Landroid/graphics/Rect;)V

    .line 3358
    invoke-virtual {v2, v0}, Landroid/support/v4/view/a/b;->c(Landroid/graphics/Rect;)V

    .line 3359
    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/b;->d(Landroid/graphics/Rect;)V

    .line 3361
    invoke-virtual {v2}, Landroid/support/v4/view/a/b;->d()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/b;->d(Z)V

    .line 3362
    invoke-virtual {v2}, Landroid/support/v4/view/a/b;->j()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/b;->a(Ljava/lang/CharSequence;)V

    .line 3363
    invoke-virtual {v2}, Landroid/support/v4/view/a/b;->k()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/b;->b(Ljava/lang/CharSequence;)V

    .line 3364
    invoke-virtual {v2}, Landroid/support/v4/view/a/b;->l()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/b;->c(Ljava/lang/CharSequence;)V

    .line 3366
    invoke-virtual {v2}, Landroid/support/v4/view/a/b;->i()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/b;->i(Z)V

    .line 3367
    invoke-virtual {v2}, Landroid/support/v4/view/a/b;->g()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/b;->g(Z)V

    .line 3368
    invoke-virtual {v2}, Landroid/support/v4/view/a/b;->b()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/b;->b(Z)V

    .line 3369
    invoke-virtual {v2}, Landroid/support/v4/view/a/b;->c()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/b;->c(Z)V

    .line 3370
    invoke-virtual {v2}, Landroid/support/v4/view/a/b;->e()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/b;->e(Z)V

    .line 3371
    invoke-virtual {v2}, Landroid/support/v4/view/a/b;->f()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/b;->f(Z)V

    .line 3372
    invoke-virtual {v2}, Landroid/support/v4/view/a/b;->h()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/b;->h(Z)V

    .line 3374
    invoke-virtual {v2}, Landroid/support/v4/view/a/b;->a()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/b;->a(I)V

    .line 2280
    invoke-virtual {v2}, Landroid/support/v4/view/a/b;->m()V

    .line 2282
    check-cast p1, Landroid/view/ViewGroup;

    .line 4337
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v0, v1

    .line 4338
    :goto_0
    if-ge v0, v2, :cond_0

    .line 4339
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4340
    invoke-static {v3}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4341
    invoke-virtual {p2, v3}, Landroid/support/v4/view/a/b;->b(Landroid/view/View;)V

    .line 4338
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 2298
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2300
    const-class v0, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2301
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 2330
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->b:Z

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2331
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 2333
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    .prologue
    .line 2310
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 2311
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    .line 2312
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$a;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->c()Landroid/view/View;

    move-result-object v0

    .line 2313
    if-eqz v0, :cond_0

    .line 2314
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$a;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;)I

    move-result v0

    .line 2315
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$a;->a:Landroid/support/v4/widget/DrawerLayout;

    .line 4789
    invoke-static {v2}, Landroid/support/v4/view/x;->g(Landroid/view/View;)I

    move-result v3

    .line 4788
    invoke-static {v0, v3}, Landroid/support/v4/view/e;->a(II)I

    move-result v0

    .line 4790
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 4791
    iget-object v0, v2, Landroid/support/v4/widget/DrawerLayout;->h:Ljava/lang/CharSequence;

    .line 2316
    :goto_0
    if-eqz v0, :cond_0

    .line 2317
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2321
    :cond_0
    const/4 v0, 0x1

    .line 2324
    :goto_1
    return v0

    .line 4792
    :cond_1
    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    .line 4793
    iget-object v0, v2, Landroid/support/v4/widget/DrawerLayout;->i:Ljava/lang/CharSequence;

    goto :goto_0

    .line 4795
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2324
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_1
.end method
