.class public Lcom/facebook/ads/internal/b/o;
.super Lcom/facebook/ads/internal/b/b;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/facebook/ads/internal/view/b;

.field private c:Lcom/facebook/ads/internal/b/w;

.field private d:Lcom/facebook/ads/internal/b/c;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/Context;

.field private g:J

.field private h:Lcom/facebook/ads/internal/m/p$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/b/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/b/o;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/b/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/b/o;J)J
    .locals 1

    iput-wide p1, p0, Lcom/facebook/ads/internal/b/o;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/b/o;)Lcom/facebook/ads/internal/b/c;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/o;->d:Lcom/facebook/ads/internal/b/c;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/b/o;Lcom/facebook/ads/internal/m/p$a;)Lcom/facebook/ads/internal/m/p$a;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b/o;->h:Lcom/facebook/ads/internal/m/p$a;

    return-object p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/b/o;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/o;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/b/o;)Lcom/facebook/ads/internal/b/w;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/o;->c:Lcom/facebook/ads/internal/b/w;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/b/o;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/b/o;)J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/ads/internal/b/o;->g:J

    return-wide v0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/b/o;)Lcom/facebook/ads/internal/m/p$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/o;->h:Lcom/facebook/ads/internal/m/p$a;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/facebook/ads/internal/b/c;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/internal/b/c;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 0
    iput-object p1, p0, Lcom/facebook/ads/internal/b/o;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/b/o;->d:Lcom/facebook/ads/internal/b/c;

    iput-object p3, p0, Lcom/facebook/ads/internal/b/o;->e:Ljava/util/Map;

    const-string/jumbo v0, "definition"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/g/e;

    .line 1000
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/facebook/ads/internal/b/o;->g:J

    iput-object v5, p0, Lcom/facebook/ads/internal/b/o;->h:Lcom/facebook/ads/internal/m/p$a;

    iget-object v1, p0, Lcom/facebook/ads/internal/b/o;->e:Ljava/util/Map;

    const-string/jumbo v2, "data"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/facebook/ads/internal/b/v;->a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/b/v;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/internal/b/o;->f:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/m/t;->a(Landroid/content/Context;Lcom/facebook/ads/internal/m/t$a;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/o;->d:Lcom/facebook/ads/internal/b/c;

    sget-object v1, Lcom/facebook/ads/c;->b:Lcom/facebook/ads/c;

    invoke-interface {v0, p0}, Lcom/facebook/ads/internal/b/c;->a(Lcom/facebook/ads/internal/b/b;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/facebook/ads/internal/view/b;

    iget-object v3, p0, Lcom/facebook/ads/internal/b/o;->f:Landroid/content/Context;

    new-instance v4, Lcom/facebook/ads/internal/b/o$1;

    invoke-direct {v4, p0, v2}, Lcom/facebook/ads/internal/b/o$1;-><init>(Lcom/facebook/ads/internal/b/o;Lcom/facebook/ads/internal/b/v;)V

    .line 2000
    iget v6, v0, Lcom/facebook/ads/internal/g/e;->e:I

    .line 1000
    invoke-direct {v1, v3, v4, v6}, Lcom/facebook/ads/internal/view/b;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/b$b;I)V

    iput-object v1, p0, Lcom/facebook/ads/internal/b/o;->b:Lcom/facebook/ads/internal/view/b;

    iget-object v1, p0, Lcom/facebook/ads/internal/b/o;->b:Lcom/facebook/ads/internal/view/b;

    .line 3000
    iget v3, v0, Lcom/facebook/ads/internal/g/e;->i:I

    .line 4000
    iget v0, v0, Lcom/facebook/ads/internal/g/e;->j:I

    .line 1000
    invoke-virtual {v1, v3, v0}, Lcom/facebook/ads/internal/view/b;->a(II)V

    new-instance v0, Lcom/facebook/ads/internal/b/o$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/b/o$2;-><init>(Lcom/facebook/ads/internal/b/o;)V

    new-instance v1, Lcom/facebook/ads/internal/b/w;

    iget-object v3, p0, Lcom/facebook/ads/internal/b/o;->f:Landroid/content/Context;

    iget-object v4, p0, Lcom/facebook/ads/internal/b/o;->b:Lcom/facebook/ads/internal/view/b;

    iget-object v6, p0, Lcom/facebook/ads/internal/b/o;->b:Lcom/facebook/ads/internal/view/b;

    invoke-virtual {v6}, Lcom/facebook/ads/internal/view/b;->getViewabilityChecker()Lcom/facebook/ads/internal/k/a;

    move-result-object v6

    invoke-direct {v1, v3, v4, v6, v0}, Lcom/facebook/ads/internal/b/w;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/a;Lcom/facebook/ads/internal/k/a;Lcom/facebook/ads/internal/b/i;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/b/o;->c:Lcom/facebook/ads/internal/b/w;

    iget-object v0, p0, Lcom/facebook/ads/internal/b/o;->c:Lcom/facebook/ads/internal/b/w;

    .line 5000
    iput-object v2, v0, Lcom/facebook/ads/internal/b/w;->c:Lcom/facebook/ads/internal/b/v;

    .line 1000
    iget-object v0, p0, Lcom/facebook/ads/internal/b/o;->b:Lcom/facebook/ads/internal/view/b;

    invoke-static {}, Lcom/facebook/ads/internal/m/v;->a()Ljava/lang/String;

    move-result-object v1

    .line 6000
    iget-object v2, v2, Lcom/facebook/ads/internal/b/v;->a:Ljava/lang/String;

    .line 1000
    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/view/b;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/b/o;->d:Lcom/facebook/ads/internal/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/b/o;->d:Lcom/facebook/ads/internal/b/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/b/o;->b:Lcom/facebook/ads/internal/view/b;

    invoke-interface {v0, p0, v1}, Lcom/facebook/ads/internal/b/c;->a(Lcom/facebook/ads/internal/b/b;Landroid/view/View;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/o;->b:Lcom/facebook/ads/internal/view/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/b/o;->b:Lcom/facebook/ads/internal/view/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/m/v;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/b/o;->b:Lcom/facebook/ads/internal/view/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/b;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/b/o;->b:Lcom/facebook/ads/internal/view/b;

    :cond_0
    return-void
.end method
