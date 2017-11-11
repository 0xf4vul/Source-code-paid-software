.class public final Lcom/facebook/ads/internal/g/f;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/facebook/ads/internal/l/a;

.field protected c:Lcom/facebook/ads/internal/g/c;

.field public d:Landroid/content/Context;

.field public e:Lcom/facebook/ads/internal/h;

.field public f:Z

.field public g:I

.field public h:Lcom/facebook/ads/f;

.field public final i:Lcom/facebook/ads/internal/m/x;

.field private j:Lcom/facebook/ads/internal/f;

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/g/h;Ljava/lang/String;Lcom/facebook/ads/f;Lcom/facebook/ads/internal/h;Lcom/facebook/ads/internal/f;IZLcom/facebook/ads/internal/m/x;)V
    .locals 6

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/facebook/ads/internal/g/f;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/ads/internal/g/f;->h:Lcom/facebook/ads/f;

    iput-object p5, p0, Lcom/facebook/ads/internal/g/f;->e:Lcom/facebook/ads/internal/h;

    invoke-static {p5}, Lcom/facebook/ads/internal/g/c;->a(Lcom/facebook/ads/internal/h;)Lcom/facebook/ads/internal/g/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/g/f;->c:Lcom/facebook/ads/internal/g/c;

    iput-object p6, p0, Lcom/facebook/ads/internal/g/f;->j:Lcom/facebook/ads/internal/f;

    iput p7, p0, Lcom/facebook/ads/internal/g/f;->g:I

    iput-boolean p8, p0, Lcom/facebook/ads/internal/g/f;->f:Z

    .line 1000
    iget-object v0, p2, Lcom/facebook/ads/internal/g/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/g/h;->a(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "SDK"

    const-string/jumbo v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "SDK_VERSION"

    const-string/jumbo v2, "4.26.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "LOCALE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p2, Lcom/facebook/ads/internal/g/h;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, p2, Lcom/facebook/ads/internal/g/h;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p2, Lcom/facebook/ads/internal/g/h;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    const-string/jumbo v4, "DENSITY"

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "SCREEN_WIDTH"

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "SCREEN_HEIGHT"

    int-to-float v3, v3

    div-float v1, v3, v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ATTRIBUTION_ID"

    sget-object v2, Lcom/facebook/ads/internal/g/j;->n:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ID_SOURCE"

    sget-object v2, Lcom/facebook/ads/internal/g/j;->q:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "OS"

    const-string/jumbo v2, "Android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "OSVERS"

    sget-object v2, Lcom/facebook/ads/internal/g/j;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "BUNDLE"

    sget-object v2, Lcom/facebook/ads/internal/g/j;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "APPNAME"

    sget-object v2, Lcom/facebook/ads/internal/g/j;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "APPVERS"

    sget-object v2, Lcom/facebook/ads/internal/g/j;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "APPBUILD"

    sget v2, Lcom/facebook/ads/internal/g/j;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "CARRIER"

    sget-object v2, Lcom/facebook/ads/internal/g/j;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "MAKE"

    sget-object v2, Lcom/facebook/ads/internal/g/j;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "MODEL"

    sget-object v2, Lcom/facebook/ads/internal/g/j;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ROOTED"

    sget-object v2, Lcom/facebook/ads/internal/g/h;->b:Lcom/facebook/ads/internal/m/ad$a;

    iget v2, v2, Lcom/facebook/ads/internal/m/ad$a;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "INSTALLER"

    sget-object v2, Lcom/facebook/ads/internal/g/j;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "SDK_CAPABILITY"

    invoke-static {}, Lcom/facebook/ads/internal/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "NETWORK_TYPE"

    iget-object v2, p2, Lcom/facebook/ads/internal/g/h;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/ads/internal/m/am;->c(Landroid/content/Context;)Lcom/facebook/ads/internal/m/am$a;

    move-result-object v2

    iget v2, v2, Lcom/facebook/ads/internal/m/am$a;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "SESSION_TIME"

    invoke-static {}, Lcom/facebook/ads/internal/g/g;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/facebook/ads/internal/m/u;->a(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "SESSION_ID"

    invoke-static {}, Lcom/facebook/ads/internal/g/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/facebook/ads/internal/g/h;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AFP"

    sget-object v2, Lcom/facebook/ads/internal/g/h;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string/jumbo v1, "UNITY"

    iget-object v2, p2, Lcom/facebook/ads/internal/g/h;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/ads/internal/m/u;->a(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/facebook/ads/e;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "MEDIATION_SERVICE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 0
    :cond_1
    iput-object v0, p0, Lcom/facebook/ads/internal/g/f;->k:Ljava/util/Map;

    iput-object p9, p0, Lcom/facebook/ads/internal/g/f;->i:Lcom/facebook/ads/internal/m/x;

    iput-object p1, p0, Lcom/facebook/ads/internal/g/f;->d:Landroid/content/Context;

    .line 2000
    iget-object v0, p0, Lcom/facebook/ads/internal/g/f;->c:Lcom/facebook/ads/internal/g/c;

    if-nez v0, :cond_2

    sget-object v0, Lcom/facebook/ads/internal/g/c;->a:Lcom/facebook/ads/internal/g/c;

    iput-object v0, p0, Lcom/facebook/ads/internal/g/f;->c:Lcom/facebook/ads/internal/g/c;

    :cond_2
    sget-object v0, Lcom/facebook/ads/internal/g/f$1;->a:[I

    iget-object v1, p0, Lcom/facebook/ads/internal/g/f;->c:Lcom/facebook/ads/internal/g/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/g/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/facebook/ads/internal/l/a;->a:Lcom/facebook/ads/internal/l/a;

    iput-object v0, p0, Lcom/facebook/ads/internal/g/f;->b:Lcom/facebook/ads/internal/l/a;

    .line 0
    :goto_0
    invoke-static {p1}, Lcom/facebook/ads/internal/g/j;->a(Landroid/content/Context;)V

    return-void

    .line 2000
    :pswitch_0
    sget-object v0, Lcom/facebook/ads/internal/l/a;->c:Lcom/facebook/ads/internal/l/a;

    iput-object v0, p0, Lcom/facebook/ads/internal/g/f;->b:Lcom/facebook/ads/internal/l/a;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/facebook/ads/internal/l/a;->b:Lcom/facebook/ads/internal/l/a;

    iput-object v0, p0, Lcom/facebook/ads/internal/g/f;->b:Lcom/facebook/ads/internal/l/a;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/facebook/ads/internal/l/a;->d:Lcom/facebook/ads/internal/l/a;

    iput-object v0, p0, Lcom/facebook/ads/internal/g/f;->b:Lcom/facebook/ads/internal/l/a;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/facebook/ads/internal/l/a;->f:Lcom/facebook/ads/internal/l/a;

    iput-object v0, p0, Lcom/facebook/ads/internal/g/f;->b:Lcom/facebook/ads/internal/l/a;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/g/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/facebook/ads/internal/g/c;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/g/f;->c:Lcom/facebook/ads/internal/g/c;

    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    new-instance v1, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/facebook/ads/internal/g/f;->k:Ljava/util/Map;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string/jumbo v0, "IDFA"

    sget-object v2, Lcom/facebook/ads/internal/g/j;->o:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/internal/g/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "IDFA_FLAG"

    sget-boolean v0, Lcom/facebook/ads/internal/g/j;->p:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "0"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/facebook/ads/internal/g/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "COPPA"

    invoke-static {}, Lcom/facebook/ads/e;->e()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/internal/g/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "PLACEMENT_ID"

    iget-object v2, p0, Lcom/facebook/ads/internal/g/f;->a:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/internal/g/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/g/f;->b:Lcom/facebook/ads/internal/l/a;

    sget-object v2, Lcom/facebook/ads/internal/l/a;->a:Lcom/facebook/ads/internal/l/a;

    if-eq v0, v2, :cond_0

    const-string/jumbo v0, "PLACEMENT_TYPE"

    iget-object v2, p0, Lcom/facebook/ads/internal/g/f;->b:Lcom/facebook/ads/internal/l/a;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/l/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/internal/g/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/g/f;->h:Lcom/facebook/ads/f;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WIDTH"

    iget-object v2, p0, Lcom/facebook/ads/internal/g/f;->h:Lcom/facebook/ads/f;

    .line 3000
    iget v2, v2, Lcom/facebook/ads/f;->f:I

    .line 0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/internal/g/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "HEIGHT"

    iget-object v2, p0, Lcom/facebook/ads/internal/g/f;->h:Lcom/facebook/ads/f;

    .line 4000
    iget v2, v2, Lcom/facebook/ads/f;->g:I

    .line 0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/internal/g/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v0, "ADAPTERS"

    iget-object v2, p0, Lcom/facebook/ads/internal/g/f;->b:Lcom/facebook/ads/internal/l/a;

    invoke-static {v2}, Lcom/facebook/ads/internal/b/k;->a(Lcom/facebook/ads/internal/l/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/internal/g/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/g/f;->e:Lcom/facebook/ads/internal/h;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "TEMPLATE_ID"

    iget-object v2, p0, Lcom/facebook/ads/internal/g/f;->e:Lcom/facebook/ads/internal/h;

    .line 5000
    iget v2, v2, Lcom/facebook/ads/internal/h;->n:I

    .line 0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/internal/g/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/g/f;->j:Lcom/facebook/ads/internal/f;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "REQUEST_TYPE"

    iget-object v2, p0, Lcom/facebook/ads/internal/g/f;->j:Lcom/facebook/ads/internal/f;

    .line 6000
    iget v2, v2, Lcom/facebook/ads/internal/f;->c:I

    .line 0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/internal/g/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lcom/facebook/ads/internal/g/f;->f:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "TEST_MODE"

    const-string/jumbo v2, "1"

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/internal/g/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/facebook/ads/e;->f()Lcom/facebook/ads/e$a;

    move-result-object v0

    sget-object v2, Lcom/facebook/ads/e$a;->a:Lcom/facebook/ads/e$a;

    if-eq v0, v2, :cond_5

    const-string/jumbo v0, "DEMO_AD_ID"

    invoke-static {}, Lcom/facebook/ads/e;->f()Lcom/facebook/ads/e$a;

    move-result-object v2

    .line 7000
    iget-object v2, v2, Lcom/facebook/ads/e$a;->l:Ljava/lang/String;

    .line 0
    invoke-static {v1, v0, v2}, Lcom/facebook/ads/internal/g/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget v0, p0, Lcom/facebook/ads/internal/g/f;->g:I

    if-eqz v0, :cond_6

    const-string/jumbo v0, "NUM_ADS_REQUESTED"

    iget v2, p0, Lcom/facebook/ads/internal/g/f;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/internal/g/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string/jumbo v0, "CLIENT_EVENTS"

    invoke-static {}, Lcom/facebook/ads/internal/m/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/internal/g/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "KG_RESTRICTED"

    iget-object v2, p0, Lcom/facebook/ads/internal/g/f;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/ads/internal/m/o;->b(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/internal/g/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "REQUEST_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/facebook/ads/internal/m/u;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/internal/g/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/g/f;->i:Lcom/facebook/ads/internal/m/x;

    .line 8000
    iget-object v0, v0, Lcom/facebook/ads/internal/m/x;->a:Lcom/facebook/ads/internal/m/x$a;

    sget-object v2, Lcom/facebook/ads/internal/m/x$a;->c:Lcom/facebook/ads/internal/m/x$a;

    if-eq v0, v2, :cond_9

    const/4 v0, 0x1

    .line 0
    :goto_1
    if-eqz v0, :cond_7

    const-string/jumbo v2, "BID_ID"

    iget-object v0, p0, Lcom/facebook/ads/internal/g/f;->i:Lcom/facebook/ads/internal/m/x;

    .line 9000
    iget-object v3, v0, Lcom/facebook/ads/internal/m/x;->b:Ljava/lang/Long;

    if-nez v3, :cond_a

    const/4 v0, 0x0

    .line 0
    :goto_2
    invoke-static {v1, v2, v0}, Lcom/facebook/ads/internal/g/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-object v1

    :cond_8
    const-string/jumbo v0, "1"

    goto/16 :goto_0

    .line 8000
    :cond_9
    const/4 v0, 0x0

    goto :goto_1

    .line 9000
    :cond_a
    iget-object v0, v0, Lcom/facebook/ads/internal/m/x;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
