.class public Lcom/facebook/ads/internal/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/l/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/b$c;,
        Lcom/facebook/ads/internal/b$b;,
        Lcom/facebook/ads/internal/b$a;
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String;

.field private static final m:Landroid/os/Handler;

.field private static n:Z


# instance fields
.field private final A:Lcom/facebook/ads/internal/h/f;

.field private final B:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/ads/h;",
            ">;"
        }
    .end annotation
.end field

.field protected a:Lcom/facebook/ads/internal/c;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/facebook/ads/internal/l/b;

.field public volatile d:Z

.field public e:Lcom/facebook/ads/internal/b/a;

.field public f:Landroid/view/View;

.field public final g:Lcom/facebook/ads/internal/b$c;

.field public h:Z

.field private final j:Ljava/lang/String;

.field private final k:Lcom/facebook/ads/internal/l/a;

.field private final l:Landroid/os/Handler;

.field private final o:Ljava/lang/Runnable;

.field private final p:Ljava/lang/Runnable;

.field private volatile q:Z

.field private r:Z

.field private s:Lcom/facebook/ads/internal/b/a;

.field private t:Lcom/facebook/ads/internal/g/d;

.field private u:Lcom/facebook/ads/internal/g/f;

.field private v:Lcom/facebook/ads/internal/h;

.field private w:Lcom/facebook/ads/internal/f;

.field private x:Lcom/facebook/ads/f;

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/facebook/ads/internal/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/b;->i:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/facebook/ads/internal/b;->m:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/internal/b;->n:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/h;Lcom/facebook/ads/internal/l/a;Lcom/facebook/ads/f;Lcom/facebook/ads/internal/f;)V
    .locals 8

    sget-object v0, Lcom/facebook/ads/h;->a:Lcom/facebook/ads/h;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/internal/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/h;Lcom/facebook/ads/internal/l/a;Lcom/facebook/ads/f;Lcom/facebook/ads/internal/f;Ljava/util/EnumSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/h;Lcom/facebook/ads/internal/l/a;Lcom/facebook/ads/f;Lcom/facebook/ads/internal/f;Ljava/util/EnumSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/internal/h;",
            "Lcom/facebook/ads/internal/l/a;",
            "Lcom/facebook/ads/f;",
            "Lcom/facebook/ads/internal/f;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/ads/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/b;->l:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/facebook/ads/internal/b;->z:Z

    iput-object p1, p0, Lcom/facebook/ads/internal/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/b;->j:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/internal/b;->v:Lcom/facebook/ads/internal/h;

    iput-object p4, p0, Lcom/facebook/ads/internal/b;->k:Lcom/facebook/ads/internal/l/a;

    iput-object p5, p0, Lcom/facebook/ads/internal/b;->x:Lcom/facebook/ads/f;

    iput-object p6, p0, Lcom/facebook/ads/internal/b;->w:Lcom/facebook/ads/internal/f;

    iput v3, p0, Lcom/facebook/ads/internal/b;->y:I

    new-instance v0, Lcom/facebook/ads/internal/b$c;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/internal/b$c;-><init>(Lcom/facebook/ads/internal/b;B)V

    iput-object v0, p0, Lcom/facebook/ads/internal/b;->g:Lcom/facebook/ads/internal/b$c;

    iput-object p7, p0, Lcom/facebook/ads/internal/b;->B:Ljava/util/EnumSet;

    new-instance v0, Lcom/facebook/ads/internal/l/b;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/l/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/b;->c:Lcom/facebook/ads/internal/l/b;

    iget-object v0, p0, Lcom/facebook/ads/internal/b;->c:Lcom/facebook/ads/internal/l/b;

    .line 1000
    iput-object p0, v0, Lcom/facebook/ads/internal/l/b;->c:Lcom/facebook/ads/internal/l/b$a;

    .line 0
    new-instance v0, Lcom/facebook/ads/internal/b$a;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/b$a;-><init>(Lcom/facebook/ads/internal/b;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/b;->o:Ljava/lang/Runnable;

    new-instance v0, Lcom/facebook/ads/internal/b$b;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/b$b;-><init>(Lcom/facebook/ads/internal/b;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/b;->p:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/facebook/ads/internal/b;->r:Z

    .line 2000
    iget-boolean v0, p0, Lcom/facebook/ads/internal/b;->r:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/ads/internal/b;->g:Lcom/facebook/ads/internal/b$c;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v3, p0, Lcom/facebook/ads/internal/b;->h:Z

    .line 0
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/facebook/ads/internal/e/a;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/e/a;->a()V

    invoke-static {p1}, Lcom/facebook/ads/internal/h/g;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/h/g;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/b;->A:Lcom/facebook/ads/internal/h/f;

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/facebook/ads/internal/b;->i:Ljava/lang/String;

    const-string/jumbo v2, "Failed to initialize CookieManager."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/b;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b;->f:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/b;Lcom/facebook/ads/internal/b/a;)Lcom/facebook/ads/internal/b/a;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b;->e:Lcom/facebook/ads/internal/b/a;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/b;Lcom/facebook/ads/internal/g/d;)Lcom/facebook/ads/internal/g/d;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b;->t:Lcom/facebook/ads/internal/g/d;

    return-object p1
.end method

.method static synthetic a(J)Ljava/util/Map;
    .locals 4

    .prologue
    .line 0
    .line 29000
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "delay"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 0
    return-object v0
.end method

.method public static a(Lcom/facebook/ads/internal/b/a;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/facebook/ads/internal/b/a;->b()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/b;)V
    .locals 0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/b;->b()V

    return-void
.end method

.method static synthetic a(Ljava/util/List;Ljava/util/Map;)V
    .locals 5

    .prologue
    .line 0
    .line 30000
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lcom/facebook/ads/internal/m/an;

    invoke-direct {v2, p1}, Lcom/facebook/ads/internal/m/an;-><init>(Ljava/util/Map;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/m/an;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/b;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/b/a;)V
    .locals 0

    invoke-static {p0}, Lcom/facebook/ads/internal/b;->a(Lcom/facebook/ads/internal/b/a;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/internal/b;)V
    .locals 0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/b;->d()V

    return-void
.end method

.method static synthetic c(Lcom/facebook/ads/internal/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/b;->g()V

    return-void
.end method

.method static synthetic d(Lcom/facebook/ads/internal/b;)V
    .locals 19

    .prologue
    .line 0
    .line 10000
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/ads/internal/b;->s:Lcom/facebook/ads/internal/b/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/ads/internal/b;->t:Lcom/facebook/ads/internal/g/d;

    .line 11000
    iget v2, v3, Lcom/facebook/ads/internal/g/d;->b:I

    iget-object v4, v3, Lcom/facebook/ads/internal/g/d;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    iget v2, v3, Lcom/facebook/ads/internal/g/d;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v3, Lcom/facebook/ads/internal/g/d;->b:I

    iget-object v2, v3, Lcom/facebook/ads/internal/g/d;->a:Ljava/util/List;

    iget v4, v3, Lcom/facebook/ads/internal/g/d;->b:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/internal/g/a;

    move-object v12, v2

    .line 10000
    :goto_0
    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/ads/internal/b;->a:Lcom/facebook/ads/internal/c;

    sget-object v3, Lcom/facebook/ads/internal/a;->c:Lcom/facebook/ads/internal/a;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Lcom/facebook/ads/internal/a;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/d;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/c;->a(Lcom/facebook/ads/internal/d;)V

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/b;->d()V

    :goto_1
    return-void

    .line 11000
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 12000
    :cond_1
    iget-object v4, v12, Lcom/facebook/ads/internal/g/a;->a:Ljava/lang/String;

    .line 13000
    iget-object v2, v3, Lcom/facebook/ads/internal/g/d;->c:Lcom/facebook/ads/internal/g/e;

    .line 14000
    iget-object v2, v2, Lcom/facebook/ads/internal/g/e;->d:Lcom/facebook/ads/internal/l/a;

    .line 10000
    invoke-static {v4, v2}, Lcom/facebook/ads/internal/b/k;->a(Ljava/lang/String;Lcom/facebook/ads/internal/l/a;)Lcom/facebook/ads/internal/b/a;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/facebook/ads/internal/b;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Adapter does not exist: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/internal/b;->g()V

    goto :goto_1

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/internal/b;->f()Lcom/facebook/ads/internal/l/a;

    move-result-object v4

    invoke-interface {v2}, Lcom/facebook/ads/internal/b/a;->a()Lcom/facebook/ads/internal/l/a;

    move-result-object v5

    if-eq v4, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/ads/internal/b;->a:Lcom/facebook/ads/internal/c;

    sget-object v3, Lcom/facebook/ads/internal/a;->g:Lcom/facebook/ads/internal/a;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Lcom/facebook/ads/internal/a;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/d;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/c;->a(Lcom/facebook/ads/internal/d;)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/ads/internal/b;->s:Lcom/facebook/ads/internal/b/a;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 15000
    iget-object v4, v3, Lcom/facebook/ads/internal/g/d;->c:Lcom/facebook/ads/internal/g/e;

    .line 10000
    const-string/jumbo v6, "data"

    .line 16000
    iget-object v7, v12, Lcom/facebook/ads/internal/g/a;->b:Lorg/json/JSONObject;

    .line 10000
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "definition"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "placementId"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/ads/internal/b;->j:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "requestTime"

    .line 17000
    iget-wide v8, v4, Lcom/facebook/ads/internal/g/e;->c:J

    .line 10000
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/ads/internal/b;->u:Lcom/facebook/ads/internal/g/f;

    if-nez v4, :cond_4

    sget-object v2, Lcom/facebook/ads/internal/a;->a:Lcom/facebook/ads/internal/a;

    const-string/jumbo v3, "environment is empty"

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/a;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/d;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/ads/internal/b;->a:Lcom/facebook/ads/internal/c;

    invoke-virtual {v3, v2}, Lcom/facebook/ads/internal/c;->a(Lcom/facebook/ads/internal/d;)V

    goto/16 :goto_1

    :cond_4
    sget-object v4, Lcom/facebook/ads/internal/b$7;->a:[I

    invoke-interface {v2}, Lcom/facebook/ads/internal/b/a;->a()Lcom/facebook/ads/internal/l/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/ads/internal/l/a;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    sget-object v2, Lcom/facebook/ads/internal/b;->i:Ljava/lang/String;

    const-string/jumbo v3, "attempt unexpected adapter type"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_0
    check-cast v2, Lcom/facebook/ads/internal/b/b;

    .line 18000
    new-instance v4, Lcom/facebook/ads/internal/b$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/facebook/ads/internal/b$11;-><init>(Lcom/facebook/ads/internal/b;Lcom/facebook/ads/internal/b/b;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/ads/internal/b;->l:Landroid/os/Handler;

    .line 19000
    iget-object v3, v3, Lcom/facebook/ads/internal/g/d;->c:Lcom/facebook/ads/internal/g/e;

    .line 20000
    iget v3, v3, Lcom/facebook/ads/internal/g/e;->k:I

    .line 18000
    int-to-long v8, v3

    invoke-virtual {v6, v4, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/ads/internal/b;->b:Landroid/content/Context;

    new-instance v6, Lcom/facebook/ads/internal/b$12;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v4}, Lcom/facebook/ads/internal/b$12;-><init>(Lcom/facebook/ads/internal/b;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3, v6, v5}, Lcom/facebook/ads/internal/b/b;->a(Landroid/content/Context;Lcom/facebook/ads/internal/b/c;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 10000
    :pswitch_1
    check-cast v2, Lcom/facebook/ads/internal/b/d;

    .line 21000
    new-instance v6, Lcom/facebook/ads/internal/b$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v2}, Lcom/facebook/ads/internal/b$2;-><init>(Lcom/facebook/ads/internal/b;Lcom/facebook/ads/internal/b/d;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/ads/internal/b;->l:Landroid/os/Handler;

    .line 22000
    iget-object v3, v3, Lcom/facebook/ads/internal/g/d;->c:Lcom/facebook/ads/internal/g/e;

    .line 23000
    iget v3, v3, Lcom/facebook/ads/internal/g/e;->k:I

    .line 21000
    int-to-long v8, v3

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/ads/internal/b;->b:Landroid/content/Context;

    new-instance v4, Lcom/facebook/ads/internal/b$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6}, Lcom/facebook/ads/internal/b$3;-><init>(Lcom/facebook/ads/internal/b;Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/ads/internal/b;->A:Lcom/facebook/ads/internal/h/f;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/ads/internal/b;->B:Ljava/util/EnumSet;

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/internal/b/d;->a(Landroid/content/Context;Lcom/facebook/ads/internal/b/e;Ljava/util/Map;Lcom/facebook/ads/internal/h/f;Ljava/util/EnumSet;)V

    goto/16 :goto_1

    :pswitch_2
    move-object v9, v2

    .line 10000
    check-cast v9, Lcom/facebook/ads/internal/b/ac;

    .line 24000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-instance v7, Lcom/facebook/ads/internal/b$4;

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/internal/b$4;-><init>(Lcom/facebook/ads/internal/b;Lcom/facebook/ads/internal/b/ac;JLcom/facebook/ads/internal/g/a;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/ads/internal/b;->l:Landroid/os/Handler;

    .line 25000
    iget-object v3, v3, Lcom/facebook/ads/internal/g/d;->c:Lcom/facebook/ads/internal/g/e;

    .line 26000
    iget v3, v3, Lcom/facebook/ads/internal/g/e;->k:I

    .line 24000
    int-to-long v14, v3

    invoke-virtual {v2, v7, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/ads/internal/b;->b:Landroid/content/Context;

    new-instance v13, Lcom/facebook/ads/internal/b$5;

    move-object/from16 v14, p0

    move-object v15, v7

    move-wide/from16 v16, v10

    move-object/from16 v18, v12

    invoke-direct/range {v13 .. v18}, Lcom/facebook/ads/internal/b$5;-><init>(Lcom/facebook/ads/internal/b;Ljava/lang/Runnable;JLcom/facebook/ads/internal/g/a;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/ads/internal/b;->A:Lcom/facebook/ads/internal/h/f;

    invoke-virtual {v9, v2, v13, v3, v5}, Lcom/facebook/ads/internal/b/ac;->a(Landroid/content/Context;Lcom/facebook/ads/internal/b/ad;Lcom/facebook/ads/internal/h/f;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 10000
    :pswitch_3
    check-cast v2, Lcom/facebook/ads/internal/b/y;

    .line 27000
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/ads/internal/b;->b:Landroid/content/Context;

    new-instance v4, Lcom/facebook/ads/internal/b$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/facebook/ads/internal/b$9;-><init>(Lcom/facebook/ads/internal/b;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/ads/internal/b;->A:Lcom/facebook/ads/internal/h/f;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/ads/internal/b;->B:Ljava/util/EnumSet;

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/internal/b/y;->a(Landroid/content/Context;Lcom/facebook/ads/a/a;Ljava/util/Map;Lcom/facebook/ads/internal/h/f;Ljava/util/EnumSet;)V

    goto/16 :goto_1

    .line 10000
    :pswitch_4
    check-cast v2, Lcom/facebook/ads/internal/b/ae;

    .line 28000
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/ads/internal/b;->b:Landroid/content/Context;

    new-instance v4, Lcom/facebook/ads/internal/b$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/facebook/ads/internal/b$10;-><init>(Lcom/facebook/ads/internal/b;)V

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/facebook/ads/internal/b;->z:Z

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/facebook/ads/internal/b/ae;->a(Landroid/content/Context;Lcom/facebook/ads/internal/b/af;Ljava/util/Map;Z)V

    goto/16 :goto_1

    .line 10000
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic e(Lcom/facebook/ads/internal/b;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/b;->d:Z

    return v0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/b;)Lcom/facebook/ads/internal/b/a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b;->s:Lcom/facebook/ads/internal/b/a;

    return-object v0
.end method

.method private f()Lcom/facebook/ads/internal/l/a;
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/b;->k:Lcom/facebook/ads/internal/l/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/b;->k:Lcom/facebook/ads/internal/l/a;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/b;->x:Lcom/facebook/ads/f;

    if-nez v0, :cond_1

    sget-object v0, Lcom/facebook/ads/internal/l/a;->d:Lcom/facebook/ads/internal/l/a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/b;->x:Lcom/facebook/ads/f;

    sget-object v1, Lcom/facebook/ads/f;->b:Lcom/facebook/ads/f;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/facebook/ads/internal/l/a;->c:Lcom/facebook/ads/internal/l/a;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/facebook/ads/internal/l/a;->b:Lcom/facebook/ads/internal/l/a;

    goto :goto_0
.end method

.method static synthetic g(Lcom/facebook/ads/internal/b;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b;->l:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized g()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/ads/internal/b;->m:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/internal/b$8;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/b$8;-><init>(Lcom/facebook/ads/internal/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private h()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/facebook/ads/internal/b;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/b;->l:Landroid/os/Handler;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/ads/internal/b;->m:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic h(Lcom/facebook/ads/internal/b;)Lcom/facebook/ads/internal/b/a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b;->e:Lcom/facebook/ads/internal/b/a;

    return-object v0
.end method

.method private static declared-synchronized i()Z
    .locals 2

    const-class v0, Lcom/facebook/ads/internal/b;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/facebook/ads/internal/b;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic i(Lcom/facebook/ads/internal/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/b;->d:Z

    return v0
.end method

.method static synthetic j(Lcom/facebook/ads/internal/b;)V
    .locals 0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/b;->e()V

    return-void
.end method

.method static synthetic k(Lcom/facebook/ads/internal/b;)Lcom/facebook/ads/internal/g/f;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b;->u:Lcom/facebook/ads/internal/g/f;

    return-object v0
.end method

.method static synthetic l(Lcom/facebook/ads/internal/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m(Lcom/facebook/ads/internal/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/b;->r:Z

    return v0
.end method

.method static synthetic n(Lcom/facebook/ads/internal/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/b;->q:Z

    return v0
.end method

.method static synthetic o(Lcom/facebook/ads/internal/b;)Lcom/facebook/ads/internal/l/a;
    .locals 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/b;->f()Lcom/facebook/ads/internal/l/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p(Lcom/facebook/ads/internal/b;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b;->o:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/facebook/ads/internal/g/e;
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/b;->t:Lcom/facebook/ads/internal/g/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/b;->t:Lcom/facebook/ads/internal/g/d;

    .line 3000
    iget-object v0, v0, Lcom/facebook/ads/internal/g/d;->c:Lcom/facebook/ads/internal/g/e;

    goto :goto_0
.end method

.method public final a(Lcom/facebook/ads/internal/c;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b;->a:Lcom/facebook/ads/internal/c;

    return-void
.end method

.method public final declared-synchronized a(Lcom/facebook/ads/internal/d;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/internal/b;->h()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/internal/b$6;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/b$6;-><init>(Lcom/facebook/ads/internal/b;Lcom/facebook/ads/internal/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/facebook/ads/internal/l/e;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/internal/b;->h()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/internal/b$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/b$1;-><init>(Lcom/facebook/ads/internal/b;Lcom/facebook/ads/internal/l/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 10

    .prologue
    .line 0
    :try_start_0
    new-instance v9, Lcom/facebook/ads/internal/m/x;

    iget-object v0, p0, Lcom/facebook/ads/internal/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/ads/internal/b;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/internal/b;->v:Lcom/facebook/ads/internal/h;

    invoke-direct {v9, v0, v1, v2}, Lcom/facebook/ads/internal/m/x;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/h;)V
    :try_end_0
    .catch Lcom/facebook/ads/internal/e; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/facebook/ads/internal/g/f;

    iget-object v1, p0, Lcom/facebook/ads/internal/b;->b:Landroid/content/Context;

    new-instance v2, Lcom/facebook/ads/internal/g/h;

    iget-object v3, p0, Lcom/facebook/ads/internal/b;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/facebook/ads/internal/g/h;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/facebook/ads/internal/b;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/ads/internal/b;->x:Lcom/facebook/ads/f;

    iget-object v5, p0, Lcom/facebook/ads/internal/b;->v:Lcom/facebook/ads/internal/h;

    iget-object v6, p0, Lcom/facebook/ads/internal/b;->w:Lcom/facebook/ads/internal/f;

    iget v7, p0, Lcom/facebook/ads/internal/b;->y:I

    iget-object v8, p0, Lcom/facebook/ads/internal/b;->b:Landroid/content/Context;

    invoke-static {v8}, Lcom/facebook/ads/e;->a(Landroid/content/Context;)Z

    move-result v8

    invoke-direct/range {v0 .. v9}, Lcom/facebook/ads/internal/g/f;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/g/h;Ljava/lang/String;Lcom/facebook/ads/f;Lcom/facebook/ads/internal/h;Lcom/facebook/ads/internal/f;IZLcom/facebook/ads/internal/m/x;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/b;->u:Lcom/facebook/ads/internal/g/f;

    iget-object v0, p0, Lcom/facebook/ads/internal/b;->c:Lcom/facebook/ads/internal/l/b;

    iget-object v1, p0, Lcom/facebook/ads/internal/b;->u:Lcom/facebook/ads/internal/g/f;

    .line 5000
    invoke-virtual {v0}, Lcom/facebook/ads/internal/l/b;->a()V

    iget-object v2, v0, Lcom/facebook/ads/internal/l/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/ads/internal/m/am;->c(Landroid/content/Context;)Lcom/facebook/ads/internal/m/am$a;

    move-result-object v2

    sget-object v3, Lcom/facebook/ads/internal/m/am$a;->b:Lcom/facebook/ads/internal/m/am$a;

    if-ne v2, v3, :cond_0

    new-instance v1, Lcom/facebook/ads/internal/d;

    sget-object v2, Lcom/facebook/ads/internal/a;->b:Lcom/facebook/ads/internal/a;

    const-string/jumbo v3, "No network connection"

    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/internal/d;-><init>(Lcom/facebook/ads/internal/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/l/b;->a(Lcom/facebook/ads/internal/d;)V

    :goto_0
    return-void

    .line 0
    :catch_0
    move-exception v0

    .line 4000
    iget-object v0, v0, Lcom/facebook/ads/internal/e;->a:Lcom/facebook/ads/internal/d;

    .line 0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/b;->a(Lcom/facebook/ads/internal/d;)V

    goto :goto_0

    .line 5000
    :cond_0
    iput-object v1, v0, Lcom/facebook/ads/internal/l/b;->d:Lcom/facebook/ads/internal/g/f;

    iget-object v2, v0, Lcom/facebook/ads/internal/l/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/ads/internal/m/b;->a(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/facebook/ads/internal/m/r;->a(Lcom/facebook/ads/internal/g/f;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/facebook/ads/internal/m/r;->c(Lcom/facebook/ads/internal/g/f;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/l/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/facebook/ads/internal/a;->d:Lcom/facebook/ads/internal/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/a;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/l/b;->a(Lcom/facebook/ads/internal/d;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/internal/l/b;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/facebook/ads/internal/l/b$1;

    invoke-direct {v3, v0, v1}, Lcom/facebook/ads/internal/l/b$1;-><init>(Lcom/facebook/ads/internal/l/b;Lcom/facebook/ads/internal/g/f;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/b;->e:Lcom/facebook/ads/internal/b/a;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no adapter ready to start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/internal/b;->d:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ad already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/b;->d:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/b;->e:Lcom/facebook/ads/internal/b/a;

    invoke-interface {v0}, Lcom/facebook/ads/internal/b/a;->a()Lcom/facebook/ads/internal/l/a;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/b$7;->a:[I

    invoke-virtual {v0}, Lcom/facebook/ads/internal/l/a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/facebook/ads/internal/b;->i:Ljava/lang/String;

    const-string/jumbo v1, "start unexpected adapter type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/facebook/ads/internal/b;->e:Lcom/facebook/ads/internal/b/a;

    check-cast v0, Lcom/facebook/ads/internal/b/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/d;->c()Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/facebook/ads/internal/b;->f:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/b;->a:Lcom/facebook/ads/internal/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/b;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/c;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/b;->d()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/facebook/ads/internal/b;->e:Lcom/facebook/ads/internal/b/a;

    check-cast v0, Lcom/facebook/ads/internal/b/ac;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/ac;->d()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ad is not ready or already displayed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    iget-object v0, p0, Lcom/facebook/ads/internal/b;->e:Lcom/facebook/ads/internal/b/a;

    check-cast v0, Lcom/facebook/ads/internal/b/y;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/y;->f()Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/facebook/ads/internal/b;->e:Lcom/facebook/ads/internal/b/a;

    check-cast v0, Lcom/facebook/ads/internal/b/ae;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/ae;->c()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final d()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v1, 0x1

    .line 0
    iget-boolean v0, p0, Lcom/facebook/ads/internal/b;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/internal/b;->q:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/facebook/ads/internal/b$7;->a:[I

    invoke-direct {p0}, Lcom/facebook/ads/internal/b;->f()Lcom/facebook/ads/internal/l/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/l/a;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/facebook/ads/internal/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/m/ad;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/b;->l:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/ads/internal/b;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/b;->t:Lcom/facebook/ads/internal/g/d;

    if-nez v0, :cond_4

    const-wide/16 v2, 0x7530

    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/b;->l:Landroid/os/Handler;

    iget-object v4, p0, Lcom/facebook/ads/internal/b;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/b;->q:Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/facebook/ads/internal/b;->t:Lcom/facebook/ads/internal/g/d;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/facebook/ads/internal/b;->f:Landroid/view/View;

    invoke-static {v2, v0}, Lcom/facebook/ads/internal/k/a;->a(Landroid/view/View;I)Lcom/facebook/ads/internal/k/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/k/b;->a()Z

    move-result v0

    iget-object v2, p0, Lcom/facebook/ads/internal/b;->f:Landroid/view/View;

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/b;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/b;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/internal/b;->t:Lcom/facebook/ads/internal/g/d;

    .line 6000
    iget-object v0, v0, Lcom/facebook/ads/internal/g/d;->c:Lcom/facebook/ads/internal/g/e;

    .line 7000
    iget v0, v0, Lcom/facebook/ads/internal/g/e;->e:I

    goto :goto_2

    .line 0
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/internal/b;->t:Lcom/facebook/ads/internal/g/d;

    .line 8000
    iget-object v0, v0, Lcom/facebook/ads/internal/g/d;->c:Lcom/facebook/ads/internal/g/e;

    .line 9000
    iget v0, v0, Lcom/facebook/ads/internal/g/e;->g:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    goto :goto_1

    .line 0
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final e()V
    .locals 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/b;->q:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/b;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/b;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/b;->q:Z

    goto :goto_0
.end method
