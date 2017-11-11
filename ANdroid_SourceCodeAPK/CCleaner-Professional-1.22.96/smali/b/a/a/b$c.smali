.class public final Lb/a/a/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Z

.field final c:Lb/a/a/e$a;

.field final d:Lb/a/a/e$a;

.field e:I

.field volatile f:I

.field volatile g:Ljava/lang/String;

.field volatile h:Ljava/lang/String;

.field volatile i:Lb/a/a/b$b;

.field private final j:Landroid/os/Handler;

.field private final k:Z

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/a/a/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Map;
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

.field private n:Ljava/lang/Process;

.field private o:Ljava/io/DataOutputStream;

.field private p:Lb/a/a/e;

.field private q:Lb/a/a/e;

.field private r:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private volatile s:Z

.field private volatile t:Z

.field private volatile u:Z

.field private volatile v:I

.field private volatile w:I

.field private final x:Ljava/lang/Object;

.field private final y:Ljava/lang/Object;

.field private volatile z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lb/a/a/b$a;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 986
    iput-object v1, p0, Lb/a/a/b$c;->n:Ljava/lang/Process;

    .line 987
    iput-object v1, p0, Lb/a/a/b$c;->o:Ljava/io/DataOutputStream;

    .line 988
    iput-object v1, p0, Lb/a/a/b$c;->p:Lb/a/a/e;

    .line 989
    iput-object v1, p0, Lb/a/a/b$c;->q:Lb/a/a/e;

    .line 990
    iput-object v1, p0, Lb/a/a/b$c;->r:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 992
    iput-boolean v2, p0, Lb/a/a/b$c;->s:Z

    .line 993
    iput-boolean v0, p0, Lb/a/a/b$c;->t:Z

    .line 994
    iput-boolean v0, p0, Lb/a/a/b$c;->u:Z

    .line 995
    iput v2, p0, Lb/a/a/b$c;->v:I

    .line 998
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/a/a/b$c;->x:Ljava/lang/Object;

    .line 999
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/a/a/b$c;->y:Ljava/lang/Object;

    .line 1001
    iput v2, p0, Lb/a/a/b$c;->f:I

    .line 1002
    iput-object v1, p0, Lb/a/a/b$c;->g:Ljava/lang/String;

    .line 1003
    iput-object v1, p0, Lb/a/a/b$c;->h:Ljava/lang/String;

    .line 1004
    iput-object v1, p0, Lb/a/a/b$c;->i:Lb/a/a/b$b;

    .line 1005
    iput-object v1, p0, Lb/a/a/b$c;->z:Ljava/util/List;

    .line 2616
    iget-boolean v0, p1, Lb/a/a/b$a;->b:Z

    .line 1014
    iput-boolean v0, p0, Lb/a/a/b$c;->k:Z

    .line 3616
    iget-object v0, p1, Lb/a/a/b$a;->c:Ljava/lang/String;

    .line 1015
    iput-object v0, p0, Lb/a/a/b$c;->a:Ljava/lang/String;

    .line 4616
    iget-boolean v0, p1, Lb/a/a/b$a;->d:Z

    .line 1016
    iput-boolean v0, p0, Lb/a/a/b$c;->b:Z

    .line 5616
    iget-object v0, p1, Lb/a/a/b$a;->e:Ljava/util/List;

    .line 1017
    iput-object v0, p0, Lb/a/a/b$c;->l:Ljava/util/List;

    .line 6616
    iget-object v0, p1, Lb/a/a/b$a;->f:Ljava/util/Map;

    .line 1018
    iput-object v0, p0, Lb/a/a/b$c;->m:Ljava/util/Map;

    .line 7616
    iget-object v0, p1, Lb/a/a/b$a;->g:Lb/a/a/e$a;

    .line 1019
    iput-object v0, p0, Lb/a/a/b$c;->c:Lb/a/a/e$a;

    .line 8616
    iget-object v0, p1, Lb/a/a/b$a;->h:Lb/a/a/e$a;

    .line 1020
    iput-object v0, p0, Lb/a/a/b$c;->d:Lb/a/a/e$a;

    .line 9616
    iget v0, p1, Lb/a/a/b$a;->i:I

    .line 1021
    iput v0, p0, Lb/a/a/b$c;->e:I

    .line 1027
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10616
    iget-object v0, p1, Lb/a/a/b$a;->a:Landroid/os/Handler;

    .line 1027
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lb/a/a/b$c;->k:Z

    if-eqz v0, :cond_0

    .line 1028
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lb/a/a/b$c;->j:Landroid/os/Handler;

    .line 1050
    :goto_0
    invoke-direct {p0}, Lb/a/a/b$c;->f()Z

    .line 1054
    return-void

    .line 11616
    :cond_0
    iget-object v0, p1, Lb/a/a/b$a;->a:Landroid/os/Handler;

    .line 1030
    iput-object v0, p0, Lb/a/a/b$c;->j:Landroid/os/Handler;

    goto :goto_0
.end method

.method public synthetic constructor <init>(Lb/a/a/b$a;B)V
    .locals 0

    .prologue
    .line 975
    invoke-direct {p0, p1}, Lb/a/a/b$c;-><init>(Lb/a/a/b$a;)V

    return-void
.end method

.method private a(Lb/a/a/b$b;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/b$b;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1418
    invoke-static {p1}, Lb/a/a/b$b;->b(Lb/a/a/b$b;)Lb/a/a/b$e;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lb/a/a/b$b;->d(Lb/a/a/b$b;)Lb/a/a/b$d;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1445
    :cond_0
    :goto_0
    return-void

    .line 1421
    :cond_1
    iget-object v0, p0, Lb/a/a/b$c;->j:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 1422
    invoke-static {p1}, Lb/a/a/b$b;->b(Lb/a/a/b$b;)Lb/a/a/b$e;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 1423
    invoke-static {p1}, Lb/a/a/b$b;->b(Lb/a/a/b$b;)Lb/a/a/b$e;

    move-result-object v0

    invoke-static {p1}, Lb/a/a/b$b;->e(Lb/a/a/b$b;)I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Lb/a/a/b$e;->a(IILjava/util/List;)V

    goto :goto_0

    .line 1429
    :cond_2
    invoke-direct {p0}, Lb/a/a/b$c;->e()V

    .line 1430
    iget-object v0, p0, Lb/a/a/b$c;->j:Landroid/os/Handler;

    new-instance v1, Lb/a/a/b$c$3;

    invoke-direct {v1, p0, p1, p3, p2}, Lb/a/a/b$c$3;-><init>(Lb/a/a/b$c;Lb/a/a/b$b;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Lb/a/a/b$c;)V
    .locals 2

    .prologue
    .line 975
    .line 13452
    iget-object v1, p0, Lb/a/a/b$c;->y:Ljava/lang/Object;

    monitor-enter v1

    .line 13453
    :try_start_0
    iget v0, p0, Lb/a/a/b$c;->v:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lb/a/a/b$c;->v:I

    .line 13454
    iget v0, p0, Lb/a/a/b$c;->v:I

    if-nez v0, :cond_0

    .line 13455
    iget-object v0, p0, Lb/a/a/b$c;->y:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 13457
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Z)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 1295
    invoke-direct {p0}, Lb/a/a/b$c;->h()Z

    move-result v0

    .line 1296
    if-nez v0, :cond_0

    .line 1297
    iput-boolean v1, p0, Lb/a/a/b$c;->t:Z

    .line 1299
    :cond_0
    if-eqz v0, :cond_7

    iget-boolean v1, p0, Lb/a/a/b$c;->t:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lb/a/a/b$c;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 1300
    iget-object v0, p0, Lb/a/a/b$c;->l:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lb/a/a/b$b;

    .line 1301
    iget-object v0, p0, Lb/a/a/b$c;->l:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1303
    iput-object v2, p0, Lb/a/a/b$c;->z:Ljava/util/List;

    .line 1304
    iput v8, p0, Lb/a/a/b$c;->f:I

    .line 1305
    iput-object v2, p0, Lb/a/a/b$c;->g:Ljava/lang/String;

    .line 1306
    iput-object v2, p0, Lb/a/a/b$c;->h:Ljava/lang/String;

    .line 1308
    invoke-static {v7}, Lb/a/a/b$b;->a(Lb/a/a/b$b;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_6

    .line 1310
    :try_start_0
    invoke-static {v7}, Lb/a/a/b$b;->b(Lb/a/a/b$b;)Lb/a/a/b$e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/b$c;->z:Ljava/util/List;

    .line 1318
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/a/b$c;->t:Z

    .line 1319
    iput-object v7, p0, Lb/a/a/b$c;->i:Lb/a/a/b$b;

    .line 12264
    iget v0, p0, Lb/a/a/b$c;->e:I

    if-eqz v0, :cond_2

    .line 12267
    const/4 v0, 0x0

    iput v0, p0, Lb/a/a/b$c;->w:I

    .line 12268
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lb/a/a/b$c;->r:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 12269
    iget-object v0, p0, Lb/a/a/b$c;->r:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lb/a/a/b$c$1;

    invoke-direct {v1, p0}, Lb/a/a/b$c$1;-><init>(Lb/a/a/b$c;)V

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 1321
    :cond_2
    invoke-static {v7}, Lb/a/a/b$b;->a(Lb/a/a/b$b;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v0, v8

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 1322
    const-string/jumbo v4, "[%s+] %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v8, p0, Lb/a/a/b$c;->a:Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lb/a/a/a;->b(Ljava/lang/String;)V

    .line 1324
    iget-object v4, p0, Lb/a/a/b$c;->o:Ljava/io/DataOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 1321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1326
    :cond_3
    iget-object v0, p0, Lb/a/a/b$c;->o:Ljava/io/DataOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "echo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lb/a/a/b$b;->c(Lb/a/a/b$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " $?\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 1327
    iget-object v0, p0, Lb/a/a/b$c;->o:Ljava/io/DataOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "echo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lb/a/a/b$b;->c(Lb/a/a/b$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " >&2\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 1328
    iget-object v0, p0, Lb/a/a/b$c;->o:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1342
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lb/a/a/b$c;->t:Z

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 1343
    iget-object v1, p0, Lb/a/a/b$c;->x:Ljava/lang/Object;

    monitor-enter v1

    .line 1344
    :try_start_1
    iget-object v0, p0, Lb/a/a/b$c;->x:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1345
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1347
    :cond_5
    return-void

    .line 1333
    :cond_6
    invoke-direct {p0, v8}, Lb/a/a/b$c;->a(Z)V

    goto :goto_1

    .line 1335
    :cond_7
    if-nez v0, :cond_4

    .line 1337
    :goto_2
    iget-object v0, p0, Lb/a/a/b$c;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1338
    iget-object v0, p0, Lb/a/a/b$c;->l:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/b$b;

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1, v2}, Lb/a/a/b$c;->a(Lb/a/a/b$b;ILjava/util/List;)V

    goto :goto_2

    .line 1345
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1331
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private declared-synchronized a([Ljava/lang/String;ILb/a/a/b$e;)V
    .locals 2

    .prologue
    .line 1191
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/b$c;->l:Ljava/util/List;

    new-instance v1, Lb/a/a/b$b;

    invoke-direct {v1, p1, p2, p3}, Lb/a/a/b$b;-><init>([Ljava/lang/String;ILb/a/a/b$e;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12221
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lb/a/a/b$c;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1193
    monitor-exit p0

    return-void

    .line 1191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 1221
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lb/a/a/b$c;->a(Z)V

    .line 1222
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 1408
    iget-object v1, p0, Lb/a/a/b$c;->y:Ljava/lang/Object;

    monitor-enter v1

    .line 1409
    :try_start_0
    iget v0, p0, Lb/a/a/b$c;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/a/b$c;->v:I

    .line 1410
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized f()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1467
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "[%s%%] START"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lb/a/a/b$c;->a:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1472
    :try_start_1
    iget-object v0, p0, Lb/a/a/b$c;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1473
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/b$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/b$c;->n:Ljava/lang/Process;

    .line 1487
    :goto_0
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lb/a/a/b$c;->n:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lb/a/a/b$c;->o:Ljava/io/DataOutputStream;

    .line 1488
    new-instance v0, Lb/a/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lb/a/a/b$c;->a:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lb/a/a/b$c;->n:Ljava/lang/Process;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, Lb/a/a/b$c$4;

    invoke-direct {v5, p0}, Lb/a/a/b$c$4;-><init>(Lb/a/a/b$c;)V

    invoke-direct {v0, v1, v4, v5}, Lb/a/a/e;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lb/a/a/e$a;)V

    iput-object v0, p0, Lb/a/a/b$c;->p:Lb/a/a/e;

    .line 1529
    new-instance v0, Lb/a/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lb/a/a/b$c;->a:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "*"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lb/a/a/b$c;->n:Ljava/lang/Process;

    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, Lb/a/a/b$c$5;

    invoke-direct {v5, p0}, Lb/a/a/b$c$5;-><init>(Lb/a/a/b$c;)V

    invoke-direct {v0, v1, v4, v5}, Lb/a/a/e;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lb/a/a/e$a;)V

    iput-object v0, p0, Lb/a/a/b$c;->q:Lb/a/a/e;

    .line 1562
    iget-object v0, p0, Lb/a/a/b$c;->p:Lb/a/a/e;

    invoke-virtual {v0}, Lb/a/a/e;->start()V

    .line 1563
    iget-object v0, p0, Lb/a/a/b$c;->q:Lb/a/a/e;

    invoke-virtual {v0}, Lb/a/a/e;->start()V

    .line 1565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/a/b$c;->s:Z

    .line 1566
    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/a/b$c;->u:Z

    .line 1568
    invoke-direct {p0}, Lb/a/a/b$c;->d()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 1573
    :goto_1
    monitor-exit p0

    return v0

    .line 1475
    :cond_0
    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1476
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1477
    iget-object v1, p0, Lb/a/a/b$c;->m:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1479
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    new-array v5, v1, [Ljava/lang/String;

    .line 1480
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v3

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1481
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, "="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    .line 1482
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    .line 1483
    goto :goto_2

    .line 1484
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/b$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/b$c;->n:Ljava/lang/Process;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1573
    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_1

    .line 1467
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()V
    .locals 1

    .prologue
    .line 1651
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lb/a/a/b$c;->s:Z

    .line 1652
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/a/b$c;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1655
    :try_start_1
    iget-object v0, p0, Lb/a/a/b$c;->o:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1660
    :goto_0
    :try_start_2
    iget-object v0, p0, Lb/a/a/b$c;->n:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1664
    :goto_1
    monitor-exit p0

    return-void

    .line 1651
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1664
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private h()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1672
    iget-object v1, p0, Lb/a/a/b$c;->n:Ljava/lang/Process;

    if-nez v1, :cond_0

    .line 1681
    :goto_0
    return v0

    .line 1676
    :cond_0
    :try_start_0
    iget-object v1, p0, Lb/a/a/b$c;->n:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1681
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method final declared-synchronized a()V
    .locals 6

    .prologue
    .line 1231
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/b$c;->r:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 1258
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1233
    :cond_1
    :try_start_1
    iget v0, p0, Lb/a/a/b$c;->e:I

    if-eqz v0, :cond_0

    .line 1236
    invoke-direct {p0}, Lb/a/a/b$c;->h()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1237
    const/4 v0, -0x2

    .line 1238
    const-string/jumbo v1, "[%s%%] SHELL_DIED"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lb/a/a/b$c;->a:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lb/a/a/a;->a(Ljava/lang/String;)V

    .line 1246
    :goto_1
    iget-object v1, p0, Lb/a/a/b$c;->j:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 1247
    iget-object v1, p0, Lb/a/a/b$c;->i:Lb/a/a/b$b;

    iget-object v2, p0, Lb/a/a/b$c;->z:Ljava/util/List;

    invoke-direct {p0, v1, v0, v2}, Lb/a/a/b$c;->a(Lb/a/a/b$b;ILjava/util/List;)V

    .line 1251
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/b$c;->i:Lb/a/a/b$b;

    .line 1252
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/b$c;->z:Ljava/util/List;

    .line 1253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/a/b$c;->t:Z

    .line 1255
    iget-object v0, p0, Lb/a/a/b$c;->r:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 1256
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/b$c;->r:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 1257
    invoke-direct {p0}, Lb/a/a/b$c;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1239
    :cond_3
    :try_start_2
    iget v0, p0, Lb/a/a/b$c;->w:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lb/a/a/b$c;->w:I

    iget v1, p0, Lb/a/a/b$c;->e:I

    if-lt v0, v1, :cond_0

    .line 1242
    const/4 v0, -0x1

    .line 1243
    const-string/jumbo v1, "[%s%%] WATCHDOG_EXIT"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lb/a/a/b$c;->a:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lb/a/a/a;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method final declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1399
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/b$c;->z:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1400
    iget-object v0, p0, Lb/a/a/b$c;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1402
    :cond_0
    monitor-exit p0

    return-void

    .line 1399
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;ILb/a/a/b$e;)V
    .locals 2

    .prologue
    .line 1090
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2, p3}, Lb/a/a/b$c;->a([Ljava/lang/String;ILb/a/a/b$e;)V

    .line 1093
    return-void
.end method

.method final declared-synchronized a(Ljava/lang/String;Lb/a/a/e$a;)V
    .locals 2

    .prologue
    .line 1371
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 1372
    :try_start_0
    iget-object v0, p0, Lb/a/a/b$c;->j:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1376
    invoke-direct {p0}, Lb/a/a/b$c;->e()V

    .line 1377
    iget-object v0, p0, Lb/a/a/b$c;->j:Landroid/os/Handler;

    new-instance v1, Lb/a/a/b$c$2;

    invoke-direct {v1, p0, p2, p1}, Lb/a/a/b$c$2;-><init>(Lb/a/a/b$c;Lb/a/a/e$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1391
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1388
    :cond_1
    :try_start_1
    invoke-interface {p2, p1}, Lb/a/a/e$a;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1371
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()V
    .locals 3

    .prologue
    .line 1353
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/b$c;->i:Lb/a/a/b$b;

    invoke-static {v0}, Lb/a/a/b$b;->c(Lb/a/a/b$b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/b$c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/a/b$c;->i:Lb/a/a/b$b;

    invoke-static {v0}, Lb/a/a/b$b;->c(Lb/a/a/b$b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/b$c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1355
    iget-object v0, p0, Lb/a/a/b$c;->i:Lb/a/a/b$b;

    iget v1, p0, Lb/a/a/b$c;->f:I

    iget-object v2, p0, Lb/a/a/b$c;->z:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Lb/a/a/b$c;->a(Lb/a/a/b$b;ILjava/util/List;)V

    .line 12281
    iget-object v0, p0, Lb/a/a/b$c;->r:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 12282
    iget-object v0, p0, Lb/a/a/b$c;->r:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 12283
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/b$c;->r:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 1357
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/b$c;->i:Lb/a/a/b$b;

    .line 1358
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/b$c;->z:Ljava/util/List;

    .line 1359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/a/b$c;->t:Z

    .line 13221
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lb/a/a/b$c;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1362
    :cond_1
    monitor-exit p0

    return-void

    .line 1353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 2

    .prologue
    .line 1690
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lb/a/a/b$c;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1691
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/a/b$c;->t:Z

    .line 1692
    iget-object v1, p0, Lb/a/a/b$c;->x:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1693
    :try_start_1
    iget-object v0, p0, Lb/a/a/b$c;->x:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1694
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1696
    :cond_0
    :try_start_2
    iget-boolean v0, p0, Lb/a/a/b$c;->t:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return v0

    .line 1694
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1690
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1058
    iget-boolean v0, p0, Lb/a/a/b$c;->u:Z

    if-nez v0, :cond_0

    invoke-static {}, Lb/a/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    const-string/jumbo v0, "Application did not close() interactive shell"

    invoke-static {v0}, Lb/a/a/a;->a(Ljava/lang/String;)V

    .line 1061
    new-instance v0, Lb/a/a/c;

    invoke-direct {v0}, Lb/a/a/c;-><init>()V

    throw v0

    .line 1063
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1064
    return-void
.end method
