.class public Lc/a/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/a/c$a;
    }
.end annotation


# static fields
.field static volatile a:Lc/a/a/a/c;

.field static final b:Lc/a/a/a/l;


# instance fields
.field public final c:Ljava/util/concurrent/ExecutorService;

.field public d:Lc/a/a/a/a;

.field public e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field final f:Lc/a/a/a/l;

.field final g:Z

.field private final h:Landroid/content/Context;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lc/a/a/a/i;",
            ">;",
            "Lc/a/a/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/os/Handler;

.field private final k:Lc/a/a/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/a/f",
            "<",
            "Lc/a/a/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lc/a/a/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/a/f",
            "<*>;"
        }
    .end annotation
.end field

.field private final m:Lc/a/a/a/a/b/o;

.field private n:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lc/a/a/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/a/a/a/b;-><init>(B)V

    sput-object v0, Lc/a/a/a/c;->b:Lc/a/a/a/l;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/Map;Lc/a/a/a/a/c/k;Landroid/os/Handler;Lc/a/a/a/l;ZLc/a/a/a/f;Lc/a/a/a/a/b/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lc/a/a/a/i;",
            ">;",
            "Lc/a/a/a/i;",
            ">;",
            "Lc/a/a/a/a/c/k;",
            "Landroid/os/Handler;",
            "Lc/a/a/a/l;",
            "Z",
            "Lc/a/a/a/f;",
            "Lc/a/a/a/a/b/o;",
            ")V"
        }
    .end annotation

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/a/c;->h:Landroid/content/Context;

    .line 285
    iput-object p2, p0, Lc/a/a/a/c;->i:Ljava/util/Map;

    .line 286
    iput-object p3, p0, Lc/a/a/a/c;->c:Ljava/util/concurrent/ExecutorService;

    .line 287
    iput-object p4, p0, Lc/a/a/a/c;->j:Landroid/os/Handler;

    .line 288
    iput-object p5, p0, Lc/a/a/a/c;->f:Lc/a/a/a/l;

    .line 289
    iput-boolean p6, p0, Lc/a/a/a/c;->g:Z

    .line 290
    iput-object p7, p0, Lc/a/a/a/c;->k:Lc/a/a/a/f;

    .line 291
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc/a/a/a/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 292
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    .line 1590
    new-instance v1, Lc/a/a/a/c$2;

    invoke-direct {v1, p0, v0}, Lc/a/a/a/c$2;-><init>(Lc/a/a/a/c;I)V

    .line 292
    iput-object v1, p0, Lc/a/a/a/c;->l:Lc/a/a/a/f;

    .line 293
    iput-object p8, p0, Lc/a/a/a/c;->m:Lc/a/a/a/a/b/o;

    .line 2488
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2489
    check-cast p1, Landroid/app/Activity;

    .line 294
    :goto_0
    invoke-virtual {p0, p1}, Lc/a/a/a/c;->a(Landroid/app/Activity;)Lc/a/a/a/c;

    .line 295
    return-void

    .line 2491
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static varargs a(Landroid/content/Context;[Lc/a/a/a/i;)Lc/a/a/a/c;
    .locals 10

    .prologue
    .line 309
    sget-object v0, Lc/a/a/a/c;->a:Lc/a/a/a/c;

    if-nez v0, :cond_7

    .line 310
    const-class v9, Lc/a/a/a/c;

    monitor-enter v9

    .line 311
    :try_start_0
    sget-object v0, Lc/a/a/a/c;->a:Lc/a/a/a/c;

    if-nez v0, :cond_6

    .line 312
    new-instance v7, Lc/a/a/a/c$a;

    invoke-direct {v7, p0}, Lc/a/a/a/c$a;-><init>(Landroid/content/Context;)V

    .line 3102
    iget-object v0, v7, Lc/a/a/a/c$a;->b:[Lc/a/a/a/i;

    if-eqz v0, :cond_0

    .line 3103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Kits already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3106
    :cond_0
    :try_start_1
    iput-object p1, v7, Lc/a/a/a/c$a;->b:[Lc/a/a/a/i;

    .line 3227
    iget-object v0, v7, Lc/a/a/a/c$a;->c:Lc/a/a/a/a/c/k;

    if-nez v0, :cond_1

    .line 3228
    invoke-static {}, Lc/a/a/a/a/c/k;->a()Lc/a/a/a/a/c/k;

    move-result-object v0

    iput-object v0, v7, Lc/a/a/a/c$a;->c:Lc/a/a/a/a/c/k;

    .line 3231
    :cond_1
    iget-object v0, v7, Lc/a/a/a/c$a;->d:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 3232
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v7, Lc/a/a/a/c$a;->d:Landroid/os/Handler;

    .line 3235
    :cond_2
    iget-object v0, v7, Lc/a/a/a/c$a;->e:Lc/a/a/a/l;

    if-nez v0, :cond_3

    .line 3236
    iget-boolean v0, v7, Lc/a/a/a/c$a;->f:Z

    if-eqz v0, :cond_8

    .line 3237
    new-instance v0, Lc/a/a/a/b;

    invoke-direct {v0}, Lc/a/a/a/b;-><init>()V

    iput-object v0, v7, Lc/a/a/a/c$a;->e:Lc/a/a/a/l;

    .line 3244
    :cond_3
    :goto_0
    iget-object v0, v7, Lc/a/a/a/c$a;->h:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 3245
    iget-object v0, v7, Lc/a/a/a/c$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lc/a/a/a/c$a;->h:Ljava/lang/String;

    .line 3248
    :cond_4
    iget-object v0, v7, Lc/a/a/a/c$a;->i:Lc/a/a/a/f;

    if-nez v0, :cond_5

    .line 3249
    sget-object v0, Lc/a/a/a/f;->d:Lc/a/a/a/f;

    iput-object v0, v7, Lc/a/a/a/c$a;->i:Lc/a/a/a/f;

    .line 3253
    :cond_5
    iget-object v0, v7, Lc/a/a/a/c$a;->b:[Lc/a/a/a/i;

    if-nez v0, :cond_9

    .line 3254
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3259
    :goto_1
    new-instance v8, Lc/a/a/a/a/b/o;

    iget-object v0, v7, Lc/a/a/a/c$a;->a:Landroid/content/Context;

    iget-object v1, v7, Lc/a/a/a/c$a;->h:Ljava/lang/String;

    iget-object v3, v7, Lc/a/a/a/c$a;->g:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v8, v0, v1, v3, v4}, Lc/a/a/a/a/b/o;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 3262
    new-instance v0, Lc/a/a/a/c;

    iget-object v1, v7, Lc/a/a/a/c$a;->a:Landroid/content/Context;

    iget-object v3, v7, Lc/a/a/a/c$a;->c:Lc/a/a/a/a/c/k;

    iget-object v4, v7, Lc/a/a/a/c$a;->d:Landroid/os/Handler;

    iget-object v5, v7, Lc/a/a/a/c$a;->e:Lc/a/a/a/l;

    iget-boolean v6, v7, Lc/a/a/a/c$a;->f:Z

    iget-object v7, v7, Lc/a/a/a/c$a;->i:Lc/a/a/a/f;

    invoke-direct/range {v0 .. v8}, Lc/a/a/a/c;-><init>(Landroid/content/Context;Ljava/util/Map;Lc/a/a/a/a/c/k;Landroid/os/Handler;Lc/a/a/a/l;ZLc/a/a/a/f;Lc/a/a/a/a/b/o;)V

    .line 5340
    sput-object v0, Lc/a/a/a/c;->a:Lc/a/a/a/c;

    .line 5364
    new-instance v1, Lc/a/a/a/a;

    iget-object v2, v0, Lc/a/a/a/c;->h:Landroid/content/Context;

    invoke-direct {v1, v2}, Lc/a/a/a/a;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lc/a/a/a/c;->d:Lc/a/a/a/a;

    .line 5365
    iget-object v1, v0, Lc/a/a/a/c;->d:Lc/a/a/a/a;

    new-instance v2, Lc/a/a/a/c$1;

    invoke-direct {v2, v0}, Lc/a/a/a/c$1;-><init>(Lc/a/a/a/c;)V

    invoke-virtual {v1, v2}, Lc/a/a/a/a;->a(Lc/a/a/a/a$b;)Z

    .line 5383
    iget-object v1, v0, Lc/a/a/a/c;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc/a/a/a/c;->a(Landroid/content/Context;)V

    .line 314
    :cond_6
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    :cond_7
    sget-object v0, Lc/a/a/a/c;->a:Lc/a/a/a/c;

    return-object v0

    .line 3239
    :cond_8
    :try_start_2
    new-instance v0, Lc/a/a/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/a/a/a/b;-><init>(B)V

    iput-object v0, v7, Lc/a/a/a/c$a;->e:Lc/a/a/a/l;

    goto :goto_0

    .line 3256
    :cond_9
    iget-object v0, v7, Lc/a/a/a/c$a;->b:[Lc/a/a/a/i;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 4569
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 4572
    invoke-static {v2, v0}, Lc/a/a/a/c;->a(Ljava/util/Map;Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static a(Ljava/lang/Class;)Lc/a/a/a/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lc/a/a/a/i;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 9272
    sget-object v0, Lc/a/a/a/c;->a:Lc/a/a/a/c;

    if-nez v0, :cond_0

    .line 9273
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must Initialize Fabric before using singleton()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9275
    :cond_0
    sget-object v0, Lc/a/a/a/c;->a:Lc/a/a/a/c;

    .line 524
    iget-object v0, v0, Lc/a/a/a/c;->i:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a/i;

    return-object v0
.end method

.method public static a()Lc/a/a/a/l;
    .locals 1

    .prologue
    .line 531
    sget-object v0, Lc/a/a/a/c;->a:Lc/a/a/a/c;

    if-nez v0, :cond_0

    .line 532
    sget-object v0, Lc/a/a/a/c;->b:Lc/a/a/a/l;

    .line 534
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc/a/a/a/c;->a:Lc/a/a/a/c;

    iget-object v0, v0, Lc/a/a/a/c;->f:Lc/a/a/a/l;

    goto :goto_0
.end method

.method static synthetic a(Lc/a/a/a/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lc/a/a/a/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 403
    .line 5613
    new-instance v0, Lc/a/a/a/e;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/a/e;-><init>(Ljava/lang/String;)V

    .line 6500
    iget-object v1, p0, Lc/a/a/a/c;->c:Ljava/util/concurrent/ExecutorService;

    .line 5616
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 6511
    iget-object v1, p0, Lc/a/a/a/c;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 407
    new-instance v2, Lc/a/a/a/m;

    invoke-direct {v2, v0, v1}, Lc/a/a/a/m;-><init>(Ljava/util/concurrent/Future;Ljava/util/Collection;)V

    .line 408
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 409
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 413
    sget-object v0, Lc/a/a/a/f;->d:Lc/a/a/a/f;

    iget-object v1, p0, Lc/a/a/a/c;->m:Lc/a/a/a/a/b/o;

    invoke-virtual {v2, p1, p0, v0, v1}, Lc/a/a/a/m;->a(Landroid/content/Context;Lc/a/a/a/c;Lc/a/a/a/f;Lc/a/a/a/a/b/o;)V

    .line 414
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a/i;

    .line 415
    iget-object v4, p0, Lc/a/a/a/c;->l:Lc/a/a/a/f;

    iget-object v5, p0, Lc/a/a/a/c;->m:Lc/a/a/a/a/b/o;

    invoke-virtual {v0, p1, p0, v4, v5}, Lc/a/a/a/i;->a(Landroid/content/Context;Lc/a/a/a/c;Lc/a/a/a/f;Lc/a/a/a/a/b/o;)V

    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {v2}, Lc/a/a/a/m;->j()V

    .line 424
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lc/a/a/a/l;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Initializing io.fabric.sdk.android:fabric [Version: 1.3.15.167], with the following kits:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 434
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a/i;

    .line 435
    iget-object v4, v0, Lc/a/a/a/i;->g:Lc/a/a/a/h;

    iget-object v5, v2, Lc/a/a/a/m;->g:Lc/a/a/a/h;

    invoke-virtual {v4, v5}, Lc/a/a/a/h;->a(Lc/a/a/a/a/c/l;)V

    .line 437
    iget-object v4, p0, Lc/a/a/a/c;->i:Ljava/util/Map;

    invoke-static {v4, v0}, Lc/a/a/a/c;->a(Ljava/util/Map;Lc/a/a/a/i;)V

    .line 439
    invoke-virtual {v0}, Lc/a/a/a/i;->j()V

    .line 441
    if-eqz v1, :cond_1

    .line 442
    invoke-virtual {v0}, Lc/a/a/a/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " [Version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lc/a/a/a/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "]\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 431
    :cond_2
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    .line 449
    :cond_3
    if-eqz v1, :cond_4

    .line 450
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v2, "Fabric"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_4
    return-void
.end method

.method private static a(Ljava/util/Map;Lc/a/a/a/i;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lc/a/a/a/i;",
            ">;",
            "Lc/a/a/a/i;",
            ">;",
            "Lc/a/a/a/i;",
            ")V"
        }
    .end annotation

    .prologue
    .line 460
    iget-object v0, p1, Lc/a/a/a/i;->k:Lc/a/a/a/a/c/d;

    .line 461
    if-eqz v0, :cond_4

    .line 462
    invoke-interface {v0}, Lc/a/a/a/a/c/d;->a()[Ljava/lang/Class;

    move-result-object v2

    .line 463
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    .line 464
    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a/i;

    .line 467
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 468
    iget-object v6, p1, Lc/a/a/a/i;->g:Lc/a/a/a/h;

    iget-object v0, v0, Lc/a/a/a/i;->g:Lc/a/a/a/h;

    invoke-virtual {v6, v0}, Lc/a/a/a/h;->a(Lc/a/a/a/a/c/l;)V

    goto :goto_1

    .line 474
    :cond_1
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a/i;

    .line 475
    if-nez v0, :cond_2

    .line 476
    new-instance v0, Lc/a/a/a/a/c/m;

    const-string/jumbo v1, "Referenced Kit was null, does the kit exist?"

    invoke-direct {v0, v1}, Lc/a/a/a/a/c/m;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_2
    iget-object v5, p1, Lc/a/a/a/i;->g:Lc/a/a/a/h;

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a/i;

    iget-object v0, v0, Lc/a/a/a/i;->g:Lc/a/a/a/h;

    invoke-virtual {v5, v0}, Lc/a/a/a/h;->a(Lc/a/a/a/a/c/l;)V

    .line 463
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 485
    :cond_4
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lc/a/a/a/i;",
            ">;",
            "Lc/a/a/a/i;",
            ">;",
            "Ljava/util/Collection",
            "<+",
            "Lc/a/a/a/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 580
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a/i;

    .line 581
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    instance-of v2, v0, Lc/a/a/a/j;

    if-eqz v2, :cond_0

    .line 584
    check-cast v0, Lc/a/a/a/j;

    invoke-interface {v0}, Lc/a/a/a/j;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p0, v0}, Lc/a/a/a/c;->a(Ljava/util/Map;Ljava/util/Collection;)V

    goto :goto_0

    .line 587
    :cond_1
    return-void
.end method

.method static synthetic b(Lc/a/a/a/c;)Lc/a/a/a/f;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lc/a/a/a/c;->k:Lc/a/a/a/f;

    return-object v0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 541
    sget-object v0, Lc/a/a/a/c;->a:Lc/a/a/a/c;

    if-nez v0, :cond_0

    .line 542
    const/4 v0, 0x0

    .line 544
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lc/a/a/a/c;->a:Lc/a/a/a/c;

    iget-boolean v0, v0, Lc/a/a/a/c;->g:Z

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 551
    sget-object v0, Lc/a/a/a/c;->a:Lc/a/a/a/c;

    if-eqz v0, :cond_0

    sget-object v0, Lc/a/a/a/c;->a:Lc/a/a/a/c;

    iget-object v0, v0, Lc/a/a/a/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Lc/a/a/a/c;
    .locals 1

    .prologue
    .line 348
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc/a/a/a/c;->e:Ljava/lang/ref/WeakReference;

    .line 349
    return-object p0
.end method
