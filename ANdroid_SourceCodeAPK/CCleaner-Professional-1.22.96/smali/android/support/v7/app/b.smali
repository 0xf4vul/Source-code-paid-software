.class public Landroid/support/v7/app/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/b$c;,
        Landroid/support/v7/app/b$g;,
        Landroid/support/v7/app/b$f;,
        Landroid/support/v7/app/b$e;,
        Landroid/support/v7/app/b$d;,
        Landroid/support/v7/app/b$a;,
        Landroid/support/v7/app/b$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/support/v4/widget/DrawerLayout;

.field public b:Landroid/support/v7/d/a/b;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Z

.field public e:Z

.field public final f:I

.field public final g:I

.field h:Landroid/view/View$OnClickListener;

.field private final i:Landroid/support/v7/app/b$a;

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0, p1, p3, p2}, Landroid/support/v7/app/b;-><init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;)V

    .line 187
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-boolean v0, p0, Landroid/support/v7/app/b;->j:Z

    .line 123
    iput-boolean v0, p0, Landroid/support/v7/app/b;->d:Z

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/b;->k:Z

    .line 197
    if-eqz p2, :cond_0

    .line 198
    new-instance v0, Landroid/support/v7/app/b$g;

    invoke-direct {v0, p2}, Landroid/support/v7/app/b$g;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v0, p0, Landroid/support/v7/app/b;->i:Landroid/support/v7/app/b$a;

    .line 199
    new-instance v0, Landroid/support/v7/app/b$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/b$1;-><init>(Landroid/support/v7/app/b;)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    :goto_0
    iput-object p3, p0, Landroid/support/v7/app/b;->a:Landroid/support/v4/widget/DrawerLayout;

    .line 222
    const v0, 0x7f0800a9

    iput v0, p0, Landroid/support/v7/app/b;->f:I

    .line 223
    const v0, 0x7f0800a8

    iput v0, p0, Landroid/support/v7/app/b;->g:I

    .line 225
    new-instance v0, Landroid/support/v7/d/a/b;

    iget-object v1, p0, Landroid/support/v7/app/b;->i:Landroid/support/v7/app/b$a;

    invoke-interface {v1}, Landroid/support/v7/app/b$a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/d/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/b;->b:Landroid/support/v7/d/a/b;

    .line 230
    invoke-virtual {p0}, Landroid/support/v7/app/b;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/b;->c:Landroid/graphics/drawable/Drawable;

    .line 231
    return-void

    .line 209
    :cond_0
    instance-of v0, p1, Landroid/support/v7/app/b$b;

    if-eqz v0, :cond_1

    .line 210
    check-cast p1, Landroid/support/v7/app/b$b;

    invoke-interface {p1}, Landroid/support/v7/app/b$b;->d()Landroid/support/v7/app/b$a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/b;->i:Landroid/support/v7/app/b$a;

    goto :goto_0

    .line 211
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 212
    new-instance v0, Landroid/support/v7/app/b$f;

    invoke-direct {v0, p1}, Landroid/support/v7/app/b$f;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/support/v7/app/b;->i:Landroid/support/v7/app/b$a;

    goto :goto_0

    .line 213
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    .line 214
    new-instance v0, Landroid/support/v7/app/b$e;

    invoke-direct {v0, p1}, Landroid/support/v7/app/b$e;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/support/v7/app/b;->i:Landroid/support/v7/app/b$a;

    goto :goto_0

    .line 215
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 216
    new-instance v0, Landroid/support/v7/app/b$d;

    invoke-direct {v0, p1}, Landroid/support/v7/app/b$d;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/support/v7/app/b;->i:Landroid/support/v7/app/b$a;

    goto :goto_0

    .line 218
    :cond_4
    new-instance v0, Landroid/support/v7/app/b$c;

    invoke-direct {v0, p1}, Landroid/support/v7/app/b$c;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/support/v7/app/b;->i:Landroid/support/v7/app/b$a;

    goto :goto_0
.end method

.method private a(F)V
    .locals 2

    .prologue
    .line 514
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    .line 515
    iget-object v0, p0, Landroid/support/v7/app/b;->b:Landroid/support/v7/d/a/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/d/a/b;->a(Z)V

    .line 519
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/b;->b:Landroid/support/v7/d/a/b;

    .line 4447
    iget v1, v0, Landroid/support/v7/d/a/b;->a:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 4448
    iput p1, v0, Landroid/support/v7/d/a/b;->a:F

    .line 4449
    invoke-virtual {v0}, Landroid/support/v7/d/a/b;->invalidateSelf()V

    .line 520
    :cond_1
    return-void

    .line 516
    :cond_2
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Landroid/support/v7/app/b;->b:Landroid/support/v7/d/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/d/a/b;->a(Z)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Landroid/support/v7/app/b;->i:Landroid/support/v7/app/b$a;

    invoke-interface {v0, p1}, Landroid/support/v7/app/b$a;->a(I)V

    .line 507
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Landroid/support/v7/app/b;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Landroid/support/v7/app/b;->a(F)V

    .line 248
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/app/b;->d:Z

    if-eqz v0, :cond_0

    .line 249
    iget-object v1, p0, Landroid/support/v7/app/b;->b:Landroid/support/v7/d/a/b;

    iget-object v0, p0, Landroid/support/v7/app/b;->a:Landroid/support/v4/widget/DrawerLayout;

    .line 250
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v7/app/b;->g:I

    .line 249
    :goto_1
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/app/b;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 253
    :cond_0
    return-void

    .line 246
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/b;->a(F)V

    goto :goto_0

    .line 250
    :cond_2
    iget v0, p0, Landroid/support/v7/app/b;->f:I

    goto :goto_1
.end method

.method public final a(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .prologue
    .line 496
    iget-boolean v0, p0, Landroid/support/v7/app/b;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/b;->i:Landroid/support/v7/app/b$a;

    invoke-interface {v0}, Landroid/support/v7/app/b$a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    const-string/jumbo v0, "ActionBarDrawerToggle"

    const-string/jumbo v1, "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/b;->k:Z

    .line 502
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/b;->i:Landroid/support/v7/app/b$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/app/b$a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 503
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 436
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Landroid/support/v7/app/b;->a(F)V

    .line 437
    iget-boolean v0, p0, Landroid/support/v7/app/b;->d:Z

    if-eqz v0, :cond_0

    .line 438
    iget v0, p0, Landroid/support/v7/app/b;->g:I

    invoke-direct {p0, v0}, Landroid/support/v7/app/b;->a(I)V

    .line 440
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 420
    iget-boolean v0, p0, Landroid/support/v7/app/b;->j:Z

    if-eqz v0, :cond_0

    .line 421
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/b;->a(F)V

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    invoke-direct {p0, v1}, Landroid/support/v7/app/b;->a(F)V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    const v3, 0x800003

    .line 289
    iget-object v0, p0, Landroid/support/v7/app/b;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->a(I)I

    move-result v1

    .line 290
    iget-object v0, p0, Landroid/support/v7/app/b;->a:Landroid/support/v4/widget/DrawerLayout;

    .line 2782
    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->b(I)Landroid/view/View;

    move-result-object v0

    .line 2783
    if-eqz v0, :cond_0

    .line 2784
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v0

    .line 290
    :goto_0
    if-eqz v0, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    .line 292
    iget-object v0, p0, Landroid/support/v7/app/b;->a:Landroid/support/v4/widget/DrawerLayout;

    .line 3715
    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->b(I)Landroid/view/View;

    move-result-object v1

    .line 3716
    if-nez v1, :cond_1

    .line 3717
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No drawer view found with gravity "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3718
    invoke-static {v3}, Landroid/support/v4/widget/DrawerLayout;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2786
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3720
    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->e(Landroid/view/View;)V

    .line 296
    :cond_2
    :goto_1
    return-void

    .line 293
    :cond_3
    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    .line 294
    iget-object v0, p0, Landroid/support/v7/app/b;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->a()V

    goto :goto_1
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/b;->a(F)V

    .line 452
    iget-boolean v0, p0, Landroid/support/v7/app/b;->d:Z

    if-eqz v0, :cond_0

    .line 453
    iget v0, p0, Landroid/support/v7/app/b;->f:I

    invoke-direct {p0, v0}, Landroid/support/v7/app/b;->a(I)V

    .line 455
    :cond_0
    return-void
.end method

.method public final c()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Landroid/support/v7/app/b;->i:Landroid/support/v7/app/b$a;

    invoke-interface {v0}, Landroid/support/v7/app/b$a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
