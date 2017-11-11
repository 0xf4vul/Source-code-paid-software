.class public final Lcom/facebook/ads/internal/b/q;
.super Lcom/facebook/ads/internal/b/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/b/q$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/internal/view/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Landroid/content/Context;

.field private f:Lcom/facebook/ads/internal/b/z;

.field private g:Lcom/facebook/ads/internal/b/e;

.field private h:Z

.field private i:Lcom/facebook/ads/internal/b/v;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/b/q;->a:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/b/d;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/b/q;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/b/q;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/b/q;I)I
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/b/q;->j:I

    return p1
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/ads/internal/view/c;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/b/q;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/c;

    return-object v0
.end method

.method public static a(Lcom/facebook/ads/internal/view/c;)V
    .locals 3

    sget-object v0, Lcom/facebook/ads/internal/b/q;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    sget-object v2, Lcom/facebook/ads/internal/b/q;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/b/q;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/b/q;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/b/q;)Lcom/facebook/ads/internal/b/e;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/q;->g:Lcom/facebook/ads/internal/b/e;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/b/q;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/q;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/b/q;->a:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/facebook/ads/internal/b/e;Ljava/util/Map;Lcom/facebook/ads/internal/h/f;Ljava/util/EnumSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/internal/b/e;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/facebook/ads/internal/h/f;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/ads/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 0
    iput-object p1, p0, Lcom/facebook/ads/internal/b/q;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/b/q;->g:Lcom/facebook/ads/internal/b/e;

    const-string/jumbo v0, "placementId"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/internal/b/q;->c:Ljava/lang/String;

    const-string/jumbo v0, "requestTime"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/b/q;->d:J

    const-string/jumbo v0, "data"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v1, "markup"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/facebook/ads/internal/b/v;->a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/b/v;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/b/q;->i:Lcom/facebook/ads/internal/b/v;

    iget-object v0, p0, Lcom/facebook/ads/internal/b/q;->i:Lcom/facebook/ads/internal/b/v;

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/m/t;->a(Landroid/content/Context;Lcom/facebook/ads/internal/m/t$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/ads/c;->b:Lcom/facebook/ads/c;

    invoke-interface {p2, p0, v0}, Lcom/facebook/ads/internal/b/e;->a(Lcom/facebook/ads/internal/b/d;Lcom/facebook/ads/c;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/facebook/ads/internal/b/z;

    iget-object v1, p0, Lcom/facebook/ads/internal/b/q;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/internal/b/q;->g:Lcom/facebook/ads/internal/b/e;

    invoke-direct {v0, p1, v1, p0, v2}, Lcom/facebook/ads/internal/b/z;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/b/d;Lcom/facebook/ads/internal/b/e;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/b/q;->f:Lcom/facebook/ads/internal/b/z;

    iget-object v0, p0, Lcom/facebook/ads/internal/b/q;->f:Lcom/facebook/ads/internal/b/z;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/z;->a()V

    iget-object v0, p0, Lcom/facebook/ads/internal/b/q;->i:Lcom/facebook/ads/internal/b/v;

    .line 1000
    iget-object v0, v0, Lcom/facebook/ads/internal/b/v;->c:Ljava/util/Map;

    .line 0
    const-string/jumbo v1, "orientation"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "orientation"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/internal/b/q$a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/b/q;->j:I

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/b/q;->h:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/b/q;->g:Lcom/facebook/ads/internal/b/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/internal/b/q;->g:Lcom/facebook/ads/internal/b/e;

    invoke-interface {v0, p0}, Lcom/facebook/ads/internal/b/e;->a(Lcom/facebook/ads/internal/b/d;)V

    :cond_3
    invoke-static {p1}, Lcom/facebook/ads/internal/l;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/view/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v5, v1}, Lcom/facebook/ads/internal/view/b;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/b$b;I)V

    invoke-static {}, Lcom/facebook/ads/internal/m/v;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/b/q;->i:Lcom/facebook/ads/internal/b/v;

    .line 2000
    iget-object v2, v2, Lcom/facebook/ads/internal/b/v;->a:Ljava/lang/String;

    .line 0
    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/view/b;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/facebook/ads/internal/b/z;

    iget-object v1, p0, Lcom/facebook/ads/internal/b/q;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/internal/b/q;->g:Lcom/facebook/ads/internal/b/e;

    invoke-direct {v0, p1, v1, p0, v2}, Lcom/facebook/ads/internal/b/z;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/b/d;Lcom/facebook/ads/internal/b/e;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/b/q;->f:Lcom/facebook/ads/internal/b/z;

    iget-object v0, p0, Lcom/facebook/ads/internal/b/q;->f:Lcom/facebook/ads/internal/b/z;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/z;->a()V

    new-instance v0, Lcom/facebook/ads/internal/b/r;

    invoke-direct {v0}, Lcom/facebook/ads/internal/b/r;-><init>()V

    new-instance v2, Lcom/facebook/ads/internal/b/q$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/ads/internal/b/q$1;-><init>(Lcom/facebook/ads/internal/b/q;Lcom/facebook/ads/internal/b/r;)V

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/b/r;->a(Landroid/content/Context;Lcom/facebook/ads/a/a;Ljava/util/Map;Lcom/facebook/ads/internal/h/f;Ljava/util/EnumSet;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/b/q;->f:Lcom/facebook/ads/internal/b/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/b/q;->f:Lcom/facebook/ads/internal/b/z;

    .line 3000
    :try_start_0
    iget-object v1, v0, Lcom/facebook/ads/internal/b/z;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/b/e;->a(Landroid/content/Context;)Landroid/support/v4/b/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/b/e;->a(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final c()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 0
    iget-boolean v0, p0, Lcom/facebook/ads/internal/b/q;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/q;->g:Lcom/facebook/ads/internal/b/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/b/q;->g:Lcom/facebook/ads/internal/b/e;

    sget-object v2, Lcom/facebook/ads/c;->e:Lcom/facebook/ads/c;

    invoke-interface {v0, p0, v2}, Lcom/facebook/ads/internal/b/e;->a(Lcom/facebook/ads/internal/b/d;Lcom/facebook/ads/c;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    new-instance v3, Landroid/content/Intent;

    iget-object v0, p0, Lcom/facebook/ads/internal/b/q;->e:Landroid/content/Context;

    const-class v4, Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "predefinedOrientationKey"

    .line 4000
    iget-object v0, p0, Lcom/facebook/ads/internal/b/q;->e:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget v5, p0, Lcom/facebook/ads/internal/b/q;->j:I

    sget v6, Lcom/facebook/ads/internal/b/q$a;->a:I

    if-ne v5, v6, :cond_2

    const/4 v0, -0x1

    .line 0
    :goto_1
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "uniqueId"

    iget-object v1, p0, Lcom/facebook/ads/internal/b/q;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "placementId"

    iget-object v1, p0, Lcom/facebook/ads/internal/b/q;->c:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "requestTime"

    iget-wide v4, p0, Lcom/facebook/ads/internal/b/q;->d:J

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    sget-object v0, Lcom/facebook/ads/internal/b/q;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Lcom/facebook/ads/internal/b/q;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "viewType"

    sget-object v1, Lcom/facebook/ads/AudienceNetworkActivity$b;->d:Lcom/facebook/ads/AudienceNetworkActivity$b;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :goto_2
    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/b/q;->e:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move v1, v2

    goto :goto_0

    .line 4000
    :cond_2
    iget v5, p0, Lcom/facebook/ads/internal/b/q;->j:I

    sget v6, Lcom/facebook/ads/internal/b/q$a;->c:I

    if-ne v5, v6, :cond_3

    packed-switch v0, :pswitch_data_0

    move v0, v1

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x8

    goto :goto_1

    :cond_3
    packed-switch v0, :pswitch_data_1

    move v0, v2

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x9

    goto :goto_1

    .line 0
    :cond_4
    const-string/jumbo v0, "viewType"

    sget-object v1, Lcom/facebook/ads/AudienceNetworkActivity$b;->a:Lcom/facebook/ads/AudienceNetworkActivity$b;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/facebook/ads/internal/b/q;->i:Lcom/facebook/ads/internal/b/v;

    .line 5000
    const-string/jumbo v1, "markup"

    iget-object v4, v0, Lcom/facebook/ads/internal/b/v;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/facebook/ads/internal/m/u;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v1, "activation_command"

    iget-object v4, v0, Lcom/facebook/ads/internal/b/v;->b:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "request_id"

    iget-object v4, v0, Lcom/facebook/ads/internal/b/v;->d:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "viewability_check_initial_delay"

    iget v4, v0, Lcom/facebook/ads/internal/b/v;->e:I

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "viewability_check_interval"

    iget v4, v0, Lcom/facebook/ads/internal/b/v;->f:I

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "skipAfterSeconds"

    iget v4, v0, Lcom/facebook/ads/internal/b/v;->g:I

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "ct"

    iget-object v0, v0, Lcom/facebook/ads/internal/b/v;->h:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 0
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/facebook/ads/internal/b/q;->e:Landroid/content/Context;

    const-class v1, Lcom/facebook/ads/i;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/facebook/ads/internal/b/q;->e:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 4000
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method
