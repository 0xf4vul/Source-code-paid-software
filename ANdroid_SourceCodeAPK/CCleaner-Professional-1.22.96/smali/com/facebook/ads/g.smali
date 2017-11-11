.class public final Lcom/facebook/ads/g;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/facebook/ads/a;


# static fields
.field private static final e:Lcom/facebook/ads/internal/f;


# instance fields
.field public a:Lcom/facebook/ads/internal/b;

.field public b:Landroid/view/View;

.field public c:Lcom/facebook/ads/internal/k;

.field public volatile d:Z

.field private final f:Landroid/util/DisplayMetrics;

.field private final g:Lcom/facebook/ads/f;

.field private final h:Ljava/lang/String;

.field private i:Lcom/facebook/ads/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/f;->a:Lcom/facebook/ads/internal/f;

    sput-object v0, Lcom/facebook/ads/g;->e:Lcom/facebook/ads/internal/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/f;)V
    .locals 7

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    if-eqz p3, :cond_0

    sget-object v0, Lcom/facebook/ads/f;->b:Lcom/facebook/ads/f;

    if-ne p3, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "adSize"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/g;->f:Landroid/util/DisplayMetrics;

    iput-object p3, p0, Lcom/facebook/ads/g;->g:Lcom/facebook/ads/f;

    iput-object p2, p0, Lcom/facebook/ads/g;->h:Ljava/lang/String;

    invoke-static {p3}, Lcom/facebook/ads/internal/m/u;->a(Lcom/facebook/ads/f;)Lcom/facebook/ads/internal/h;

    move-result-object v3

    new-instance v0, Lcom/facebook/ads/internal/b;

    sget-object v4, Lcom/facebook/ads/internal/l/a;->b:Lcom/facebook/ads/internal/l/a;

    sget-object v6, Lcom/facebook/ads/g;->e:Lcom/facebook/ads/internal/f;

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/internal/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/h;Lcom/facebook/ads/internal/l/a;Lcom/facebook/ads/f;Lcom/facebook/ads/internal/f;)V

    iput-object v0, p0, Lcom/facebook/ads/g;->a:Lcom/facebook/ads/internal/b;

    iget-object v0, p0, Lcom/facebook/ads/g;->a:Lcom/facebook/ads/internal/b;

    new-instance v1, Lcom/facebook/ads/g$1;

    invoke-direct {v1, p0, p2}, Lcom/facebook/ads/g$1;-><init>(Lcom/facebook/ads/g;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/b;->a(Lcom/facebook/ads/internal/c;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/g;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/g;->b:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/g;)Lcom/facebook/ads/d;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/g;->i:Lcom/facebook/ads/d;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/g;Lcom/facebook/ads/internal/k;)Lcom/facebook/ads/internal/k;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/g;->c:Lcom/facebook/ads/internal/k;

    return-object p1
.end method

.method static synthetic b(Lcom/facebook/ads/g;)Lcom/facebook/ads/internal/b;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/g;->a:Lcom/facebook/ads/internal/b;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/g;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/g;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/ads/g;)Landroid/util/DisplayMetrics;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/g;->f:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/ads/g;)Lcom/facebook/ads/f;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/g;->g:Lcom/facebook/ads/f;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/ads/g;)Lcom/facebook/ads/internal/k;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/g;->c:Lcom/facebook/ads/internal/k;

    return-object v0
.end method


# virtual methods
.method public final getPlacementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/g;->h:Ljava/lang/String;

    return-object v0
.end method

.method protected final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/facebook/ads/g;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/g;->f:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/facebook/ads/g;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/facebook/ads/g;->g:Lcom/facebook/ads/f;

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/m/u;->a(Landroid/util/DisplayMetrics;Landroid/view/View;Lcom/facebook/ads/f;)V

    :cond_0
    return-void
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 2

    .prologue
    .line 0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    iget-object v0, p0, Lcom/facebook/ads/g;->a:Lcom/facebook/ads/internal/b;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/g;->a:Lcom/facebook/ads/internal/b;

    .line 1000
    iget-boolean v1, v0, Lcom/facebook/ads/internal/b;->d:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b;->d()V

    goto :goto_0

    .line 0
    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/g;->a:Lcom/facebook/ads/internal/b;

    .line 2000
    iget-boolean v1, v0, Lcom/facebook/ads/internal/b;->d:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b;->e()V

    goto :goto_0
.end method

.method public final setAdListener(Lcom/facebook/ads/d;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/g;->i:Lcom/facebook/ads/d;

    return-void
.end method
