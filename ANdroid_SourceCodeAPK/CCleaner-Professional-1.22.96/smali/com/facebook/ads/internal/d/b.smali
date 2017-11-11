.class public Lcom/facebook/ads/internal/d/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/d/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final c:Landroid/os/Handler;

.field private final d:Lcom/facebook/ads/internal/d/c;

.field private final e:Lcom/facebook/ads/internal/d/d;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/d/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/d/b;->a:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/d/b;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/d/b;->c:Landroid/os/Handler;

    invoke-static {p1}, Lcom/facebook/ads/internal/d/c;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/d/b;->d:Lcom/facebook/ads/internal/d/c;

    invoke-static {p1}, Lcom/facebook/ads/internal/d/d;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/d/b;->e:Lcom/facebook/ads/internal/d/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/d/b;->f:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/d/b;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/d/b;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/d/b;->b:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/d/b;)Lcom/facebook/ads/internal/d/d;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/d/b;->e:Lcom/facebook/ads/internal/d/d;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/d/b;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/facebook/ads/internal/d/a;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/ads/internal/d/b;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lcom/facebook/ads/internal/d/b;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/facebook/ads/internal/d/b$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/facebook/ads/internal/d/b$1;-><init>(Lcom/facebook/ads/internal/d/b;Ljava/util/ArrayList;Lcom/facebook/ads/internal/d/a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/facebook/ads/internal/d/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/d/b;->f:Ljava/util/List;

    new-instance v1, Lcom/facebook/ads/internal/d/b$a;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/d/b$a;-><init>(Lcom/facebook/ads/internal/d/b;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/d/b;->e:Lcom/facebook/ads/internal/d/d;

    .line 1000
    invoke-virtual {v0}, Lcom/facebook/ads/internal/d/d;->a()Lcom/facebook/ads/internal/j/b/f;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 2000
    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-boolean v1, v0, Lcom/facebook/ads/internal/j/b/f;->c:Z

    if-nez v1, :cond_2

    const-string/jumbo v1, "ProxyCache"

    const-string/jumbo v2, "Proxy server isn\'t pinged. Caching doesn\'t work."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v1, v0, Lcom/facebook/ads/internal/j/b/f;->c:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/j/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
