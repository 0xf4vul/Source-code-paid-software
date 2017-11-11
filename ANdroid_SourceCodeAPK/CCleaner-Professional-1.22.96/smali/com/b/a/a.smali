.class public Lcom/b/a/a;
.super Lc/a/a/a/i;
.source "SourceFile"

# interfaces
.implements Lc/a/a/a/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/a/i",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Lc/a/a/a/j;"
    }
.end annotation


# instance fields
.field public final a:Lcom/b/a/a/a;

.field public final b:Lcom/b/a/b/c;

.field public final c:Lcom/b/a/c/i;

.field public final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Lc/a/a/a/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/b/a/a/a;

    invoke-direct {v0}, Lcom/b/a/a/a;-><init>()V

    new-instance v1, Lcom/b/a/b/c;

    invoke-direct {v1}, Lcom/b/a/b/c;-><init>()V

    new-instance v2, Lcom/b/a/c/i;

    invoke-direct {v2}, Lcom/b/a/c/i;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/b/a/a;-><init>(Lcom/b/a/a/a;Lcom/b/a/b/c;Lcom/b/a/c/i;)V

    .line 30
    return-void
.end method

.method private constructor <init>(Lcom/b/a/a/a;Lcom/b/a/b/c;Lcom/b/a/c/i;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lc/a/a/a/i;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/b/a/a;->a:Lcom/b/a/a/a;

    .line 34
    iput-object p2, p0, Lcom/b/a/a;->b:Lcom/b/a/b/c;

    .line 35
    iput-object p3, p0, Lcom/b/a/a;->c:Lcom/b/a/c/i;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Lc/a/a/a/i;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a;->d:Ljava/util/Collection;

    .line 38
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 218
    invoke-static {}, Lcom/b/a/a;->f()V

    .line 219
    invoke-static {}, Lcom/b/a/a;->e()Lcom/b/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/b/a/a;->c:Lcom/b/a/c/i;

    .line 2410
    const-string/jumbo v1, "CrashlyticsCore"

    .line 2414
    iget-boolean v2, v0, Lcom/b/a/c/i;->e:Z

    if-nez v2, :cond_0

    .line 2418
    const-string/jumbo v2, "prior to logging messages."

    invoke-static {v2}, Lcom/b/a/c/i;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2422
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/b/a/c/i;->a:J

    sub-long/2addr v2, v4

    .line 2423
    iget-object v0, v0, Lcom/b/a/c/i;->d:Lcom/b/a/c/h;

    invoke-static {v1, p0}, Lcom/b/a/c/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3328
    iget-object v4, v0, Lcom/b/a/c/h;->f:Lcom/b/a/c/g;

    new-instance v5, Lcom/b/a/c/h$13;

    invoke-direct {v5, v0, v2, v3, v1}, Lcom/b/a/c/h$13;-><init>(Lcom/b/a/c/h;JLjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/b/a/c/g;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 220
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 266
    invoke-static {}, Lcom/b/a/a;->f()V

    .line 267
    invoke-static {}, Lcom/b/a/a;->e()Lcom/b/a/a;

    move-result-object v0

    iget-object v1, v0, Lcom/b/a/a;->c:Lcom/b/a/c/i;

    .line 3525
    iget-boolean v0, v1, Lcom/b/a/c/i;->e:Z

    if-nez v0, :cond_1

    .line 3529
    const-string/jumbo v0, "prior to setting keys."

    invoke-static {v0}, Lcom/b/a/c/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3533
    if-nez p0, :cond_2

    .line 4116
    iget-object v0, v1, Lc/a/a/a/i;->h:Landroid/content/Context;

    .line 3535
    if-eqz v0, :cond_0

    invoke-static {v0}, Lc/a/a/a/a/b/i;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3536
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Custom attribute key must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3538
    :cond_0
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Attempting to set custom attribute with null key, ignoring."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3549
    :cond_1
    :goto_0
    return-void

    .line 3544
    :cond_2
    invoke-static {p0}, Lcom/b/a/c/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3546
    iget-object v0, v1, Lcom/b/a/c/i;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v3, 0x40

    if-lt v0, v3, :cond_3

    iget-object v0, v1, Lcom/b/a/c/i;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3547
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Exceeded maximum number of custom attributes (64)"

    invoke-interface {v0, v1, v2}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3552
    :cond_3
    if-nez p1, :cond_4

    const-string/jumbo v0, ""

    .line 3553
    :goto_1
    iget-object v3, v1, Lcom/b/a/c/i;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3554
    iget-object v0, v1, Lcom/b/a/c/i;->d:Lcom/b/a/c/h;

    iget-object v1, v1, Lcom/b/a/c/i;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4386
    iget-object v2, v0, Lcom/b/a/c/h;->f:Lcom/b/a/c/g;

    new-instance v3, Lcom/b/a/c/h$2;

    invoke-direct {v3, v0, v1}, Lcom/b/a/c/h$2;-><init>(Lcom/b/a/c/h;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lcom/b/a/c/g;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 3552
    :cond_4
    invoke-static {p1}, Lcom/b/a/c/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 207
    invoke-static {}, Lcom/b/a/a;->f()V

    .line 208
    invoke-static {}, Lcom/b/a/a;->e()Lcom/b/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/b/a/a;->c:Lcom/b/a/c/i;

    .line 1382
    iget-boolean v1, v0, Lcom/b/a/c/i;->e:Z

    if-nez v1, :cond_0

    .line 1386
    const-string/jumbo v1, "prior to logging exceptions."

    invoke-static {v1}, Lcom/b/a/c/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1390
    if-nez p0, :cond_1

    .line 1391
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const/4 v1, 0x5

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Crashlytics is ignoring a request to log a null exception."

    invoke-interface {v0, v1, v2, v3}, Lc/a/a/a/l;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1393
    :cond_0
    :goto_0
    return-void

    .line 1396
    :cond_1
    iget-object v0, v0, Lcom/b/a/c/i;->d:Lcom/b/a/c/h;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 2345
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 2347
    iget-object v3, v0, Lcom/b/a/c/h;->f:Lcom/b/a/c/g;

    new-instance v4, Lcom/b/a/c/h$14;

    invoke-direct {v4, v0, v2, v1, p0}, Lcom/b/a/c/h$14;-><init>(Lcom/b/a/c/h;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/b/a/c/g;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method private static e()Lcom/b/a/a;
    .locals 1

    .prologue
    .line 188
    const-class v0, Lcom/b/a/a;

    invoke-static {v0}, Lc/a/a/a/c;->a(Ljava/lang/Class;)Lc/a/a/a/i;

    move-result-object v0

    check-cast v0, Lcom/b/a/a;

    return-object v0
.end method

.method private static f()V
    .locals 2

    .prologue
    .line 371
    invoke-static {}, Lcom/b/a/a;->e()Lcom/b/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Crashlytics must be initialized by calling Fabric.with(Context) prior to calling Crashlytics.getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string/jumbo v0, "2.6.6.167"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const-string/jumbo v0, "com.crashlytics.sdk.android:crashlytics"

    return-object v0
.end method

.method public final c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lc/a/a/a/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/b/a/a;->d:Ljava/util/Collection;

    return-object v0
.end method

.method protected final bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method
