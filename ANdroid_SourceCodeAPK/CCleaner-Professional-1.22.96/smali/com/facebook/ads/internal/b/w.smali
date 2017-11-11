.class public Lcom/facebook/ads/internal/b/w;
.super Lcom/facebook/ads/internal/b/f;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public c:Lcom/facebook/ads/internal/b/v;

.field private final e:Lcom/facebook/ads/internal/view/a;

.field private final f:Landroid/content/Context;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/b/w;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/b/w;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/a;Lcom/facebook/ads/internal/k/a;Lcom/facebook/ads/internal/b/i;)V
    .locals 1

    invoke-direct {p0, p1, p4, p3}, Lcom/facebook/ads/internal/b/f;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/b/i;Lcom/facebook/ads/internal/k/a;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/b/w;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/b/w;->e:Lcom/facebook/ads/internal/view/a;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/b/w;)Lcom/facebook/ads/internal/view/a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/w;->e:Lcom/facebook/ads/internal/view/a;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/b/w;)Lcom/facebook/ads/internal/b/v;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/w;->c:Lcom/facebook/ads/internal/b/v;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/b/w;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/b/w;->c:Lcom/facebook/ads/internal/b/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/b/w;->c:Lcom/facebook/ads/internal/b/v;

    .line 2000
    iget-object v0, v0, Lcom/facebook/ads/internal/b/v;->h:Ljava/lang/String;

    .line 0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/b/w;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/g;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/h/g;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/b/w;->c:Lcom/facebook/ads/internal/b/v;

    .line 3000
    iget-object v1, v1, Lcom/facebook/ads/internal/b/v;->h:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v1, p1}, Lcom/facebook/ads/internal/h/g;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/internal/b/w;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/b/w;->c:Lcom/facebook/ads/internal/b/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/ads/internal/b/w;->g:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/b/w;->e:Lcom/facebook/ads/internal/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/b/w;->c:Lcom/facebook/ads/internal/b/v;

    .line 1000
    iget-object v0, v0, Lcom/facebook/ads/internal/b/v;->b:Ljava/lang/String;

    .line 0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/b/w;->e:Lcom/facebook/ads/internal/view/a;

    new-instance v1, Lcom/facebook/ads/internal/b/w$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/b/w$1;-><init>(Lcom/facebook/ads/internal/b/w;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/a;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
