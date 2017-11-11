.class public final Lcom/facebook/ads/internal/l/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/l/b$a;
    }
.end annotation


# static fields
.field public static final e:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final j:Lcom/facebook/ads/internal/m/d;


# instance fields
.field public final a:Landroid/content/Context;

.field b:Ljava/util/Map;
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

.field public c:Lcom/facebook/ads/internal/l/b$a;

.field public d:Lcom/facebook/ads/internal/g/f;

.field private final f:Lcom/facebook/ads/internal/l/c;

.field private final g:Lcom/facebook/ads/internal/l;

.field private h:Lcom/facebook/ads/internal/j/a/a;

.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/m/d;

    invoke-direct {v0}, Lcom/facebook/ads/internal/m/d;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/l/b;->j:Lcom/facebook/ads/internal/m/d;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sput-object v0, Lcom/facebook/ads/internal/l/b;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/l/b;->a:Landroid/content/Context;

    invoke-static {}, Lcom/facebook/ads/internal/l/c;->a()Lcom/facebook/ads/internal/l/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/l/b;->f:Lcom/facebook/ads/internal/l/c;

    new-instance v0, Lcom/facebook/ads/internal/l;

    iget-object v1, p0, Lcom/facebook/ads/internal/l/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/l/b;->g:Lcom/facebook/ads/internal/l;

    .line 1000
    invoke-static {}, Lcom/facebook/ads/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "https://graph.facebook.com/network_ads_common"

    .line 0
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/internal/l/b;->i:Ljava/lang/String;

    return-void

    .line 1000
    :cond_0
    const-string/jumbo v1, "https://graph.%s.facebook.com/network_ads_common"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/l/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/l/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/l/b;Lcom/facebook/ads/internal/j/a/a;)Lcom/facebook/ads/internal/j/a/a;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/l/b;->h:Lcom/facebook/ads/internal/j/a/a;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/l/b;Lcom/facebook/ads/internal/d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/l/b;->a(Lcom/facebook/ads/internal/d;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/l/b;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/l/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/internal/l/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/l/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/l/b;)Lcom/facebook/ads/internal/j/a/a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/l/b;->h:Lcom/facebook/ads/internal/j/a/a;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/l/b;)Lcom/facebook/ads/internal/j/a/b;
    .locals 1

    .prologue
    .line 13000
    new-instance v0, Lcom/facebook/ads/internal/l/b$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/l/b$2;-><init>(Lcom/facebook/ads/internal/l/b;)V

    .line 0
    return-object v0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/l/b;)Lcom/facebook/ads/internal/g/f;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/l/b;->d:Lcom/facebook/ads/internal/g/f;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/l/b;)Lcom/facebook/ads/internal/l/c;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/l/b;->f:Lcom/facebook/ads/internal/l/c;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/internal/l/b;->h:Lcom/facebook/ads/internal/j/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/l/b;->h:Lcom/facebook/ads/internal/j/a/a;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/a/a;->b(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/l/b;->h:Lcom/facebook/ads/internal/j/a/a;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/a/a;->a(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/l/b;->h:Lcom/facebook/ads/internal/j/a/a;

    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/ads/internal/d;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/l/b;->c:Lcom/facebook/ads/internal/l/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/l/b;->c:Lcom/facebook/ads/internal/l/b$a;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/l/b$a;->a(Lcom/facebook/ads/internal/d;)V

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/l/b;->a()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 0
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/internal/l/c;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/l/d;

    move-result-object v3

    .line 2000
    iget-object v4, v3, Lcom/facebook/ads/internal/l/d;->a:Lcom/facebook/ads/internal/g/d;

    .line 0
    if-eqz v4, :cond_1

    iget-object v2, p0, Lcom/facebook/ads/internal/l/b;->g:Lcom/facebook/ads/internal/l;

    .line 3000
    iget-object v5, v4, Lcom/facebook/ads/internal/g/d;->d:Ljava/lang/String;

    .line 4000
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "[]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5000
    :cond_0
    :goto_0
    iget-object v2, v4, Lcom/facebook/ads/internal/g/d;->c:Lcom/facebook/ads/internal/g/e;

    .line 6000
    iget v2, v2, Lcom/facebook/ads/internal/g/e;->h:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v6, v2

    .line 0
    iget-object v2, p0, Lcom/facebook/ads/internal/l/b;->d:Lcom/facebook/ads/internal/g/f;

    invoke-static {v6, v7, v2}, Lcom/facebook/ads/internal/m/r;->a(JLcom/facebook/ads/internal/g/f;)V

    :cond_1
    sget-object v2, Lcom/facebook/ads/internal/l/b$3;->a:[I

    .line 7000
    iget v5, v3, Lcom/facebook/ads/internal/l/d;->b:I

    .line 0
    add-int/lit8 v5, v5, -0x1

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    sget-object v2, Lcom/facebook/ads/internal/a;->l:Lcom/facebook/ads/internal/a;

    invoke-virtual {v2, p1}, Lcom/facebook/ads/internal/a;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/d;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/l/b;->a(Lcom/facebook/ads/internal/d;)V

    :goto_1
    return-void

    .line 4000
    :cond_2
    iget-object v2, v2, Lcom/facebook/ads/internal/l;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v2, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 0
    :catch_0
    move-exception v2

    sget-object v3, Lcom/facebook/ads/internal/a;->k:Lcom/facebook/ads/internal/a;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/facebook/ads/internal/a;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/d;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/l/b;->a(Lcom/facebook/ads/internal/d;)V

    goto :goto_1

    .line 4000
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 0
    :pswitch_0
    move-object v0, v3

    check-cast v0, Lcom/facebook/ads/internal/l/e;

    move-object v2, v0

    if-eqz v4, :cond_4

    .line 8000
    iget-object v3, v4, Lcom/facebook/ads/internal/g/d;->c:Lcom/facebook/ads/internal/g/e;

    .line 9000
    iget-boolean v3, v3, Lcom/facebook/ads/internal/g/e;->l:Z

    .line 0
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/facebook/ads/internal/l/b;->d:Lcom/facebook/ads/internal/g/f;

    invoke-static {p1, v3}, Lcom/facebook/ads/internal/m/r;->a(Ljava/lang/String;Lcom/facebook/ads/internal/g/f;)V

    .line 10000
    :cond_4
    iget-object v3, p0, Lcom/facebook/ads/internal/l/b;->c:Lcom/facebook/ads/internal/l/b$a;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/facebook/ads/internal/l/b;->c:Lcom/facebook/ads/internal/l/b$a;

    invoke-interface {v3, v2}, Lcom/facebook/ads/internal/l/b$a;->a(Lcom/facebook/ads/internal/l/e;)V

    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/internal/l/b;->a()V

    goto :goto_1

    .line 0
    :pswitch_1
    check-cast v3, Lcom/facebook/ads/internal/l/f;

    .line 11000
    iget-object v2, v3, Lcom/facebook/ads/internal/l/f;->c:Ljava/lang/String;

    .line 12000
    iget v3, v3, Lcom/facebook/ads/internal/l/f;->d:I

    .line 0
    sget-object v4, Lcom/facebook/ads/internal/a;->m:Lcom/facebook/ads/internal/a;

    invoke-static {v3, v4}, Lcom/facebook/ads/internal/a;->a(ILcom/facebook/ads/internal/a;)Lcom/facebook/ads/internal/a;

    move-result-object v3

    if-eqz v2, :cond_6

    move-object p1, v2

    :cond_6
    invoke-virtual {v3, p1}, Lcom/facebook/ads/internal/a;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/d;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/l/b;->a(Lcom/facebook/ads/internal/d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
