.class final Landroid/support/v7/widget/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/q;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static i(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/aj;
    .locals 1

    .prologue
    .line 123
    invoke-interface {p0}, Landroid/support/v7/widget/o;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aj;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/o;)F
    .locals 1

    .prologue
    .line 59
    invoke-static {p1}, Landroid/support/v7/widget/n;->i(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/aj;

    move-result-object v0

    .line 5086
    iget v0, v0, Landroid/support/v7/widget/aj;->b:F

    .line 59
    return v0
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public final a(Landroid/support/v7/widget/o;F)V
    .locals 2

    .prologue
    .line 43
    invoke-static {p1}, Landroid/support/v7/widget/n;->i(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/aj;

    move-result-object v0

    .line 1135
    iget v1, v0, Landroid/support/v7/widget/aj;->a:F

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_0

    .line 1138
    iput p2, v0, Landroid/support/v7/widget/aj;->a:F

    .line 1139
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/aj;->a(Landroid/graphics/Rect;)V

    .line 1140
    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->invalidateSelf()V

    .line 44
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/o;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/support/v7/widget/aj;

    invoke-direct {v0, p3, p4}, Landroid/support/v7/widget/aj;-><init>(Landroid/content/res/ColorStateList;F)V

    .line 33
    invoke-interface {p1, v0}, Landroid/support/v7/widget/o;->a(Landroid/graphics/drawable/Drawable;)V

    .line 35
    invoke-interface {p1}, Landroid/support/v7/widget/o;->d()Landroid/view/View;

    move-result-object v0

    .line 36
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 37
    invoke-virtual {v0, p5}, Landroid/view/View;->setElevation(F)V

    .line 38
    invoke-virtual {p0, p1, p6}, Landroid/support/v7/widget/n;->b(Landroid/support/v7/widget/o;F)V

    .line 39
    return-void
.end method

.method public final a(Landroid/support/v7/widget/o;Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 114
    invoke-static {p1}, Landroid/support/v7/widget/n;->i(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/aj;

    move-result-object v0

    .line 10163
    invoke-virtual {v0, p2}, Landroid/support/v7/widget/aj;->a(Landroid/content/res/ColorStateList;)V

    .line 10164
    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->invalidateSelf()V

    .line 115
    return-void
.end method

.method public final b(Landroid/support/v7/widget/o;)F
    .locals 2

    .prologue
    .line 64
    .line 6074
    invoke-static {p1}, Landroid/support/v7/widget/n;->i(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/aj;

    move-result-object v0

    .line 6159
    iget v0, v0, Landroid/support/v7/widget/aj;->a:F

    .line 64
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public final b(Landroid/support/v7/widget/o;F)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 52
    invoke-static {p1}, Landroid/support/v7/widget/n;->i(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/aj;

    move-result-object v0

    .line 53
    invoke-interface {p1}, Landroid/support/v7/widget/o;->a()Z

    move-result v1

    invoke-interface {p1}, Landroid/support/v7/widget/o;->b()Z

    move-result v2

    .line 2074
    iget v3, v0, Landroid/support/v7/widget/aj;->b:F

    cmpl-float v3, p2, v3

    if-nez v3, :cond_0

    iget-boolean v3, v0, Landroid/support/v7/widget/aj;->c:Z

    if-ne v3, v1, :cond_0

    iget-boolean v3, v0, Landroid/support/v7/widget/aj;->d:Z

    if-eq v3, v2, :cond_1

    .line 2078
    :cond_0
    iput p2, v0, Landroid/support/v7/widget/aj;->b:F

    .line 2079
    iput-boolean v1, v0, Landroid/support/v7/widget/aj;->c:Z

    .line 2080
    iput-boolean v2, v0, Landroid/support/v7/widget/aj;->d:Z

    .line 2081
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/aj;->a(Landroid/graphics/Rect;)V

    .line 2082
    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->invalidateSelf()V

    .line 2089
    :cond_1
    invoke-interface {p1}, Landroid/support/v7/widget/o;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2090
    invoke-interface {p1, v4, v4, v4, v4}, Landroid/support/v7/widget/o;->a(IIII)V

    .line 2091
    :goto_0
    return-void

    .line 3059
    :cond_2
    invoke-static {p1}, Landroid/support/v7/widget/n;->i(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/aj;

    move-result-object v0

    .line 3086
    iget v0, v0, Landroid/support/v7/widget/aj;->b:F

    .line 4074
    invoke-static {p1}, Landroid/support/v7/widget/n;->i(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/aj;

    move-result-object v1

    .line 4159
    iget v1, v1, Landroid/support/v7/widget/aj;->a:F

    .line 2096
    invoke-interface {p1}, Landroid/support/v7/widget/o;->b()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/ak;->b(FFZ)F

    move-result v2

    float-to-double v2, v2

    .line 2095
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 2098
    invoke-interface {p1}, Landroid/support/v7/widget/o;->b()Z

    move-result v3

    invoke-static {v0, v1, v3}, Landroid/support/v7/widget/ak;->a(FFZ)F

    move-result v0

    float-to-double v0, v0

    .line 2097
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 2099
    invoke-interface {p1, v2, v0, v2, v0}, Landroid/support/v7/widget/o;->a(IIII)V

    goto :goto_0
.end method

.method public final c(Landroid/support/v7/widget/o;)F
    .locals 2

    .prologue
    .line 69
    .line 7074
    invoke-static {p1}, Landroid/support/v7/widget/n;->i(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/aj;

    move-result-object v0

    .line 7159
    iget v0, v0, Landroid/support/v7/widget/aj;->a:F

    .line 69
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public final c(Landroid/support/v7/widget/o;F)V
    .locals 1

    .prologue
    .line 79
    invoke-interface {p1}, Landroid/support/v7/widget/o;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setElevation(F)V

    .line 80
    return-void
.end method

.method public final d(Landroid/support/v7/widget/o;)F
    .locals 1

    .prologue
    .line 74
    invoke-static {p1}, Landroid/support/v7/widget/n;->i(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/aj;

    move-result-object v0

    .line 8159
    iget v0, v0, Landroid/support/v7/widget/aj;->a:F

    .line 74
    return v0
.end method

.method public final e(Landroid/support/v7/widget/o;)F
    .locals 1

    .prologue
    .line 84
    invoke-interface {p1}, Landroid/support/v7/widget/o;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public final f(Landroid/support/v7/widget/o;)V
    .locals 1

    .prologue
    .line 104
    .line 9059
    invoke-static {p1}, Landroid/support/v7/widget/n;->i(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/aj;

    move-result-object v0

    .line 9086
    iget v0, v0, Landroid/support/v7/widget/aj;->b:F

    .line 104
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/n;->b(Landroid/support/v7/widget/o;F)V

    .line 105
    return-void
.end method

.method public final g(Landroid/support/v7/widget/o;)V
    .locals 1

    .prologue
    .line 109
    .line 10059
    invoke-static {p1}, Landroid/support/v7/widget/n;->i(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/aj;

    move-result-object v0

    .line 10086
    iget v0, v0, Landroid/support/v7/widget/aj;->b:F

    .line 109
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/n;->b(Landroid/support/v7/widget/o;F)V

    .line 110
    return-void
.end method

.method public final h(Landroid/support/v7/widget/o;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 119
    invoke-static {p1}, Landroid/support/v7/widget/n;->i(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/aj;

    move-result-object v0

    .line 10168
    iget-object v0, v0, Landroid/support/v7/widget/aj;->e:Landroid/content/res/ColorStateList;

    .line 119
    return-object v0
.end method
