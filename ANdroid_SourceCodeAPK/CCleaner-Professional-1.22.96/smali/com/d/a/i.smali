.class public final Lcom/d/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/d/a/i$c;,
        Lcom/d/a/i$b;,
        Lcom/d/a/i$a;
    }
.end annotation


# instance fields
.field final a:Lcom/d/a/i$b;

.field final b:Landroid/content/Context;

.field final c:Ljava/util/concurrent/ExecutorService;

.field final d:Lcom/d/a/j;

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/d/a/c;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/d/a/a;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/d/a/a;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final i:Landroid/os/Handler;

.field final j:Landroid/os/Handler;

.field final k:Lcom/d/a/d;

.field final l:Lcom/d/a/aa;

.field final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/d/a/c;",
            ">;"
        }
    .end annotation
.end field

.field final n:Lcom/d/a/i$c;

.field final o:Z

.field p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/d/a/j;Lcom/d/a/d;Lcom/d/a/aa;)V
    .locals 3

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/d/a/i$b;

    invoke-direct {v0}, Lcom/d/a/i$b;-><init>()V

    iput-object v0, p0, Lcom/d/a/i;->a:Lcom/d/a/i$b;

    .line 102
    iget-object v0, p0, Lcom/d/a/i;->a:Lcom/d/a/i$b;

    invoke-virtual {v0}, Lcom/d/a/i$b;->start()V

    .line 103
    iput-object p1, p0, Lcom/d/a/i;->b:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/d/a/i;->c:Ljava/util/concurrent/ExecutorService;

    .line 105
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/d/a/i;->e:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/d/a/i;->f:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/d/a/i;->g:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/d/a/i;->h:Ljava/util/Set;

    .line 109
    new-instance v0, Lcom/d/a/i$a;

    iget-object v1, p0, Lcom/d/a/i;->a:Lcom/d/a/i$b;

    invoke-virtual {v1}, Lcom/d/a/i$b;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/d/a/i$a;-><init>(Landroid/os/Looper;Lcom/d/a/i;)V

    iput-object v0, p0, Lcom/d/a/i;->i:Landroid/os/Handler;

    .line 110
    iput-object p4, p0, Lcom/d/a/i;->d:Lcom/d/a/j;

    .line 111
    iput-object p3, p0, Lcom/d/a/i;->j:Landroid/os/Handler;

    .line 112
    iput-object p5, p0, Lcom/d/a/i;->k:Lcom/d/a/d;

    .line 113
    iput-object p6, p0, Lcom/d/a/i;->l:Lcom/d/a/aa;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/d/a/i;->m:Ljava/util/List;

    .line 115
    iget-object v0, p0, Lcom/d/a/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/d/a/ae;->d(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/d/a/i;->p:Z

    .line 116
    const-string/jumbo v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/d/a/ae;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/d/a/i;->o:Z

    .line 117
    new-instance v0, Lcom/d/a/i$c;

    invoke-direct {v0, p0}, Lcom/d/a/i$c;-><init>(Lcom/d/a/i;)V

    iput-object v0, p0, Lcom/d/a/i;->n:Lcom/d/a/i$c;

    .line 118
    iget-object v0, p0, Lcom/d/a/i;->n:Lcom/d/a/i$c;

    .line 1553
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1554
    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1555
    iget-object v2, v0, Lcom/d/a/i$c;->a:Lcom/d/a/i;

    iget-boolean v2, v2, Lcom/d/a/i;->o:Z

    if-eqz v2, :cond_0

    .line 1556
    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1558
    :cond_0
    iget-object v2, v0, Lcom/d/a/i$c;->a:Lcom/d/a/i;

    iget-object v2, v2, Lcom/d/a/i;->b:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    return-void
.end method

.method private a(Lcom/d/a/a;)V
    .locals 2

    .prologue
    .line 438
    invoke-virtual {p1}, Lcom/d/a/a;->c()Ljava/lang/Object;

    move-result-object v0

    .line 439
    if-eqz v0, :cond_0

    .line 440
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/d/a/a;->k:Z

    .line 441
    iget-object v1, p0, Lcom/d/a/i;->f:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_0
    return-void
.end method

.method static a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/d/a/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 456
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/d/a/c;

    .line 14378
    iget-object v0, v0, Lcom/d/a/c;->b:Lcom/d/a/t;

    .line 459
    iget-boolean v0, v0, Lcom/d/a/t;->n:Z

    if-eqz v0, :cond_0

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/d/a/c;

    .line 462
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string/jumbo v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    :cond_2
    invoke-static {v0}, Lcom/d/a/ae;->a(Lcom/d/a/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 465
    :cond_3
    const-string/jumbo v0, "Dispatcher"

    const-string/jumbo v2, "delivered"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e(Lcom/d/a/c;)V
    .locals 4

    .prologue
    .line 423
    .line 13374
    iget-object v0, p1, Lcom/d/a/c;->k:Lcom/d/a/a;

    .line 424
    if-eqz v0, :cond_0

    .line 425
    invoke-direct {p0, v0}, Lcom/d/a/i;->a(Lcom/d/a/a;)V

    .line 13382
    :cond_0
    iget-object v2, p1, Lcom/d/a/c;->l:Ljava/util/List;

    .line 428
    if-eqz v2, :cond_1

    .line 430
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 431
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/d/a/a;

    .line 432
    invoke-direct {p0, v0}, Lcom/d/a/i;->a(Lcom/d/a/a;)V

    .line 430
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 435
    :cond_1
    return-void
.end method


# virtual methods
.method final a(Landroid/net/NetworkInfo;)V
    .locals 5

    .prologue
    const/4 v2, 0x3

    .line 399
    iget-object v0, p0, Lcom/d/a/i;->c:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Lcom/d/a/v;

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/d/a/i;->c:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Lcom/d/a/v;

    .line 11043
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_3

    .line 11044
    :cond_0
    invoke-virtual {v0, v2}, Lcom/d/a/v;->a(I)V

    .line 403
    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11409
    iget-object v0, p0, Lcom/d/a/i;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 11410
    iget-object v0, p0, Lcom/d/a/i;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 11411
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11412
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/d/a/a;

    .line 11413
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 12101
    iget-object v2, v0, Lcom/d/a/a;->a:Lcom/d/a/t;

    .line 11414
    iget-boolean v2, v2, Lcom/d/a/t;->n:Z

    if-eqz v2, :cond_2

    .line 11415
    const-string/jumbo v2, "Dispatcher"

    const-string/jumbo v3, "replaying"

    .line 13073
    iget-object v4, v0, Lcom/d/a/a;->b:Lcom/d/a/w;

    .line 11415
    invoke-virtual {v4}, Lcom/d/a/w;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11417
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/d/a/i;->a(Lcom/d/a/a;Z)V

    goto :goto_1

    .line 11047
    :cond_3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 11076
    invoke-virtual {v0, v2}, Lcom/d/a/v;->a(I)V

    goto :goto_0

    .line 11051
    :sswitch_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/d/a/v;->a(I)V

    goto :goto_0

    .line 11054
    :sswitch_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 11072
    :pswitch_0
    invoke-virtual {v0, v2}, Lcom/d/a/v;->a(I)V

    goto :goto_0

    .line 11058
    :pswitch_1
    invoke-virtual {v0, v2}, Lcom/d/a/v;->a(I)V

    goto :goto_0

    .line 11065
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/d/a/v;->a(I)V

    goto :goto_0

    .line 11069
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/d/a/v;->a(I)V

    goto :goto_0

    .line 406
    :cond_4
    return-void

    .line 11047
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch

    .line 11054
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method final a(Lcom/d/a/a;Z)V
    .locals 5

    .prologue
    .line 178
    iget-object v0, p0, Lcom/d/a/i;->h:Ljava/util/Set;

    .line 2109
    iget-object v1, p1, Lcom/d/a/a;->j:Ljava/lang/Object;

    .line 178
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/d/a/i;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/d/a/a;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3101
    iget-object v0, p1, Lcom/d/a/a;->a:Lcom/d/a/t;

    .line 180
    iget-boolean v0, v0, Lcom/d/a/t;->n:Z

    if-eqz v0, :cond_0

    .line 181
    const-string/jumbo v0, "Dispatcher"

    const-string/jumbo v1, "paused"

    iget-object v2, p1, Lcom/d/a/a;->b:Lcom/d/a/w;

    invoke-virtual {v2}, Lcom/d/a/w;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "because tag \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3109
    iget-object v4, p1, Lcom/d/a/a;->j:Ljava/lang/Object;

    .line 182
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' is paused"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-static {v0, v1, v2, v3}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4266
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/d/a/i;->e:Ljava/util/Map;

    .line 4081
    iget-object v1, p1, Lcom/d/a/a;->i:Ljava/lang/String;

    .line 187
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/d/a/c;

    .line 188
    if-eqz v0, :cond_7

    .line 4254
    iget-object v1, v0, Lcom/d/a/c;->b:Lcom/d/a/t;

    iget-boolean v1, v1, Lcom/d/a/t;->n:Z

    .line 4255
    iget-object v2, p1, Lcom/d/a/a;->b:Lcom/d/a/w;

    .line 4257
    iget-object v3, v0, Lcom/d/a/c;->k:Lcom/d/a/a;

    if-nez v3, :cond_4

    .line 4258
    iput-object p1, v0, Lcom/d/a/c;->k:Lcom/d/a/a;

    .line 4259
    if-eqz v1, :cond_0

    .line 4260
    iget-object v1, v0, Lcom/d/a/c;->l:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/d/a/c;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4261
    :cond_2
    const-string/jumbo v0, "Hunter"

    const-string/jumbo v1, "joined"

    invoke-virtual {v2}, Lcom/d/a/w;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "to empty hunter"

    invoke-static {v0, v1, v2, v3}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4263
    :cond_3
    const-string/jumbo v1, "Hunter"

    const-string/jumbo v3, "joined"

    invoke-virtual {v2}, Lcom/d/a/w;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "to "

    invoke-static {v0, v4}, Lcom/d/a/ae;->a(Lcom/d/a/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v2, v0}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4269
    :cond_4
    iget-object v3, v0, Lcom/d/a/c;->l:Ljava/util/List;

    if-nez v3, :cond_5

    .line 4270
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lcom/d/a/c;->l:Ljava/util/List;

    .line 4273
    :cond_5
    iget-object v3, v0, Lcom/d/a/c;->l:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4275
    if-eqz v1, :cond_6

    .line 4276
    const-string/jumbo v1, "Hunter"

    const-string/jumbo v3, "joined"

    invoke-virtual {v2}, Lcom/d/a/w;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "to "

    invoke-static {v0, v4}, Lcom/d/a/ae;->a(Lcom/d/a/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v2, v4}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5105
    :cond_6
    iget-object v1, p1, Lcom/d/a/a;->b:Lcom/d/a/w;

    iget v1, v1, Lcom/d/a/w;->r:I

    .line 4280
    add-int/lit8 v2, v1, -0x1

    iget v3, v0, Lcom/d/a/c;->s:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_0

    .line 4281
    iput v1, v0, Lcom/d/a/c;->s:I

    goto/16 :goto_0

    .line 193
    :cond_7
    iget-object v0, p0, Lcom/d/a/i;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6101
    iget-object v0, p1, Lcom/d/a/a;->a:Lcom/d/a/t;

    .line 194
    iget-boolean v0, v0, Lcom/d/a/t;->n:Z

    if-eqz v0, :cond_0

    .line 195
    const-string/jumbo v0, "Dispatcher"

    const-string/jumbo v1, "ignored"

    iget-object v2, p1, Lcom/d/a/a;->b:Lcom/d/a/w;

    invoke-virtual {v2}, Lcom/d/a/w;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "because shut down"

    invoke-static {v0, v1, v2, v3}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7101
    :cond_8
    iget-object v0, p1, Lcom/d/a/a;->a:Lcom/d/a/t;

    .line 200
    iget-object v1, p0, Lcom/d/a/i;->k:Lcom/d/a/d;

    iget-object v2, p0, Lcom/d/a/i;->l:Lcom/d/a/aa;

    invoke-static {v0, p0, v1, v2, p1}, Lcom/d/a/c;->a(Lcom/d/a/t;Lcom/d/a/i;Lcom/d/a/d;Lcom/d/a/aa;Lcom/d/a/a;)Lcom/d/a/c;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/d/a/i;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, v0, Lcom/d/a/c;->n:Ljava/util/concurrent/Future;

    .line 202
    iget-object v1, p0, Lcom/d/a/i;->e:Ljava/util/Map;

    .line 8081
    iget-object v2, p1, Lcom/d/a/a;->i:Ljava/lang/String;

    .line 202
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    if-eqz p2, :cond_9

    .line 204
    iget-object v0, p0, Lcom/d/a/i;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/d/a/a;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8101
    :cond_9
    iget-object v0, p1, Lcom/d/a/a;->a:Lcom/d/a/t;

    .line 207
    iget-boolean v0, v0, Lcom/d/a/t;->n:Z

    if-eqz v0, :cond_0

    .line 208
    const-string/jumbo v0, "Dispatcher"

    const-string/jumbo v1, "enqueued"

    iget-object v2, p1, Lcom/d/a/a;->b:Lcom/d/a/w;

    invoke-virtual {v2}, Lcom/d/a/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method final a(Lcom/d/a/c;)V
    .locals 4

    .prologue
    .line 157
    iget-object v0, p0, Lcom/d/a/i;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/d/a/i;->i:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 158
    return-void
.end method

.method final a(Lcom/d/a/c;Z)V
    .locals 5

    .prologue
    .line 386
    .line 9378
    iget-object v0, p1, Lcom/d/a/c;->b:Lcom/d/a/t;

    .line 386
    iget-boolean v0, v0, Lcom/d/a/t;->n:Z

    if-eqz v0, :cond_0

    .line 387
    const-string/jumbo v1, "Dispatcher"

    const-string/jumbo v2, "batched"

    invoke-static {p1}, Lcom/d/a/ae;->a(Lcom/d/a/c;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "for error"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string/jumbo v0, " (will replay)"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/d/a/i;->e:Ljava/util/Map;

    .line 10362
    iget-object v1, p1, Lcom/d/a/c;->f:Ljava/lang/String;

    .line 390
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    invoke-virtual {p0, p1}, Lcom/d/a/i;->d(Lcom/d/a/c;)V

    .line 392
    return-void

    .line 387
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method final a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 298
    iget-object v0, p0, Lcom/d/a/i;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    const/4 v1, 0x0

    .line 303
    iget-object v0, p0, Lcom/d/a/i;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 304
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/d/a/a;

    .line 8109
    iget-object v3, v0, Lcom/d/a/a;->j:Ljava/lang/Object;

    .line 305
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 306
    if-nez v1, :cond_3

    .line 307
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 309
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 314
    :cond_4
    if-eqz v1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/d/a/i;->j:Landroid/os/Handler;

    iget-object v2, p0, Lcom/d/a/i;->j:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method final b(Lcom/d/a/c;)V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/d/a/i;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/d/a/i;->i:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 162
    return-void
.end method

.method final c(Lcom/d/a/c;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 320
    invoke-virtual {p1}, Lcom/d/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/d/a/i;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {p0, p1, v2}, Lcom/d/a/i;->a(Lcom/d/a/c;Z)V

    goto :goto_0

    .line 327
    :cond_2
    const/4 v0, 0x0

    .line 328
    iget-boolean v3, p0, Lcom/d/a/i;->o:Z

    if-eqz v3, :cond_c

    .line 329
    iget-object v0, p0, Lcom/d/a/i;->b:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-static {v0, v3}, Lcom/d/a/ae;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 330
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    move-object v4, v0

    .line 333
    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 8345
    :goto_2
    iget v3, p1, Lcom/d/a/c;->r:I

    if-lez v3, :cond_4

    move v3, v1

    .line 8346
    :goto_3
    if-nez v3, :cond_5

    move v3, v2

    .line 8354
    :goto_4
    iget-object v4, p1, Lcom/d/a/c;->j:Lcom/d/a/y;

    invoke-virtual {v4}, Lcom/d/a/y;->b()Z

    move-result v4

    .line 337
    if-nez v3, :cond_7

    .line 339
    iget-boolean v0, p0, Lcom/d/a/i;->o:Z

    if-eqz v0, :cond_6

    if-eqz v4, :cond_6

    .line 340
    :goto_5
    invoke-virtual {p0, p1, v1}, Lcom/d/a/i;->a(Lcom/d/a/c;Z)V

    .line 341
    if-eqz v1, :cond_0

    .line 342
    invoke-direct {p0, p1}, Lcom/d/a/i;->e(Lcom/d/a/c;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 333
    goto :goto_2

    :cond_4
    move v3, v2

    .line 8345
    goto :goto_3

    .line 8349
    :cond_5
    iget v3, p1, Lcom/d/a/c;->r:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p1, Lcom/d/a/c;->r:I

    .line 8350
    iget-object v3, p1, Lcom/d/a/c;->j:Lcom/d/a/y;

    invoke-virtual {v3, v4}, Lcom/d/a/y;->a(Landroid/net/NetworkInfo;)Z

    move-result v3

    goto :goto_4

    :cond_6
    move v1, v2

    .line 339
    goto :goto_5

    .line 348
    :cond_7
    iget-boolean v1, p0, Lcom/d/a/i;->o:Z

    if-eqz v1, :cond_8

    if-eqz v0, :cond_b

    .line 8378
    :cond_8
    iget-object v0, p1, Lcom/d/a/c;->b:Lcom/d/a/t;

    .line 349
    iget-boolean v0, v0, Lcom/d/a/t;->n:Z

    if-eqz v0, :cond_9

    .line 350
    const-string/jumbo v0, "Dispatcher"

    const-string/jumbo v1, "retrying"

    invoke-static {p1}, Lcom/d/a/ae;->a(Lcom/d/a/c;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8386
    :cond_9
    iget-object v0, p1, Lcom/d/a/c;->p:Ljava/lang/Exception;

    .line 353
    instance-of v0, v0, Lcom/d/a/r$a;

    if-eqz v0, :cond_a

    .line 354
    iget v0, p1, Lcom/d/a/c;->i:I

    sget-object v1, Lcom/d/a/q;->a:Lcom/d/a/q;

    iget v1, v1, Lcom/d/a/q;->d:I

    or-int/2addr v0, v1

    iput v0, p1, Lcom/d/a/c;->i:I

    .line 356
    :cond_a
    iget-object v0, p0, Lcom/d/a/i;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p1, Lcom/d/a/c;->n:Ljava/util/concurrent/Future;

    goto/16 :goto_0

    .line 360
    :cond_b
    invoke-virtual {p0, p1, v4}, Lcom/d/a/i;->a(Lcom/d/a/c;Z)V

    .line 362
    if-eqz v4, :cond_0

    .line 363
    invoke-direct {p0, p1}, Lcom/d/a/i;->e(Lcom/d/a/c;)V

    goto/16 :goto_0

    :cond_c
    move-object v4, v0

    goto :goto_1
.end method

.method final d(Lcom/d/a/c;)V
    .locals 4

    .prologue
    const/4 v1, 0x7

    .line 446
    invoke-virtual {p1}, Lcom/d/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/d/a/i;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v0, p0, Lcom/d/a/i;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/d/a/i;->i:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
