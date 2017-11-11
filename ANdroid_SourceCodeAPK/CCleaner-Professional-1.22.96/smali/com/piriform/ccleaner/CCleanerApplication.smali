.class public Lcom/piriform/ccleaner/CCleanerApplication;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field private static j:Lcom/piriform/ccleaner/j/bl;


# instance fields
.field public final a:Lcom/piriform/ccleaner/a/g;

.field public b:Lcom/piriform/ccleaner/n/a;

.field c:Lcom/piriform/ccleaner/professional/g;

.field public d:Lcom/piriform/ccleaner/t/p;

.field public e:Lcom/piriform/ccleaner/b/e;

.field public f:Lcom/piriform/ccleaner/b/a;

.field g:Lcom/piriform/ccleaner/o/e;

.field h:Lcom/piriform/ccleaner/s/o;

.field i:Lcom/piriform/ccleaner/b/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 31
    new-instance v0, Lcom/piriform/ccleaner/a/g;

    invoke-direct {v0}, Lcom/piriform/ccleaner/a/g;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/CCleanerApplication;->a:Lcom/piriform/ccleaner/a/g;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/piriform/ccleaner/CCleanerApplication;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/CCleanerApplication;

    return-object v0
.end method

.method public static a()Lcom/piriform/ccleaner/j/bl;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/piriform/ccleaner/CCleanerApplication;->j:Lcom/piriform/ccleaner/j/bl;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 77
    invoke-static {}, Lcom/novoda/notils/c/a/a;->a()V

    .line 2106
    monitor-enter p0

    .line 2107
    :try_start_0
    sget-object v0, Lcom/piriform/ccleaner/CCleanerApplication;->j:Lcom/piriform/ccleaner/j/bl;

    if-nez v0, :cond_b

    .line 2109
    invoke-static {}, Lcom/piriform/ccleaner/j/bz;->d()Lcom/piriform/ccleaner/j/bz$a;

    move-result-object v1

    new-instance v0, Lcom/piriform/ccleaner/j/g;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/j/g;-><init>(Landroid/content/Context;)V

    .line 2559
    invoke-static {v0}, La/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/j/g;

    iput-object v0, v1, Lcom/piriform/ccleaner/j/bz$a;->a:Lcom/piriform/ccleaner/j/g;

    .line 3522
    iget-object v0, v1, Lcom/piriform/ccleaner/j/bz$a;->a:Lcom/piriform/ccleaner/j/g;

    if-nez v0, :cond_0

    .line 3523
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/piriform/ccleaner/j/g;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2113
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3525
    :cond_0
    :try_start_1
    iget-object v0, v1, Lcom/piriform/ccleaner/j/bz$a;->b:Lcom/piriform/ccleaner/j/bb;

    if-nez v0, :cond_1

    .line 3526
    new-instance v0, Lcom/piriform/ccleaner/j/bb;

    invoke-direct {v0}, Lcom/piriform/ccleaner/j/bb;-><init>()V

    iput-object v0, v1, Lcom/piriform/ccleaner/j/bz$a;->b:Lcom/piriform/ccleaner/j/bb;

    .line 3528
    :cond_1
    iget-object v0, v1, Lcom/piriform/ccleaner/j/bz$a;->c:Lcom/piriform/ccleaner/j/bm;

    if-nez v0, :cond_2

    .line 3529
    new-instance v0, Lcom/piriform/ccleaner/j/bm;

    invoke-direct {v0}, Lcom/piriform/ccleaner/j/bm;-><init>()V

    iput-object v0, v1, Lcom/piriform/ccleaner/j/bz$a;->c:Lcom/piriform/ccleaner/j/bm;

    .line 3531
    :cond_2
    iget-object v0, v1, Lcom/piriform/ccleaner/j/bz$a;->d:Lcom/piriform/ccleaner/j/cz;

    if-nez v0, :cond_3

    .line 3532
    new-instance v0, Lcom/piriform/ccleaner/j/cz;

    invoke-direct {v0}, Lcom/piriform/ccleaner/j/cz;-><init>()V

    iput-object v0, v1, Lcom/piriform/ccleaner/j/bz$a;->d:Lcom/piriform/ccleaner/j/cz;

    .line 3534
    :cond_3
    iget-object v0, v1, Lcom/piriform/ccleaner/j/bz$a;->e:Lcom/piriform/ccleaner/j/df;

    if-nez v0, :cond_4

    .line 3535
    new-instance v0, Lcom/piriform/ccleaner/j/df;

    invoke-direct {v0}, Lcom/piriform/ccleaner/j/df;-><init>()V

    iput-object v0, v1, Lcom/piriform/ccleaner/j/bz$a;->e:Lcom/piriform/ccleaner/j/df;

    .line 3537
    :cond_4
    iget-object v0, v1, Lcom/piriform/ccleaner/j/bz$a;->f:Lcom/piriform/ccleaner/j/bs;

    if-nez v0, :cond_5

    .line 3538
    new-instance v0, Lcom/piriform/ccleaner/j/bs;

    invoke-direct {v0}, Lcom/piriform/ccleaner/j/bs;-><init>()V

    iput-object v0, v1, Lcom/piriform/ccleaner/j/bz$a;->f:Lcom/piriform/ccleaner/j/bs;

    .line 3540
    :cond_5
    iget-object v0, v1, Lcom/piriform/ccleaner/j/bz$a;->g:Lcom/piriform/ccleaner/j/ax;

    if-nez v0, :cond_6

    .line 3541
    new-instance v0, Lcom/piriform/ccleaner/j/ax;

    invoke-direct {v0}, Lcom/piriform/ccleaner/j/ax;-><init>()V

    iput-object v0, v1, Lcom/piriform/ccleaner/j/bz$a;->g:Lcom/piriform/ccleaner/j/ax;

    .line 3543
    :cond_6
    iget-object v0, v1, Lcom/piriform/ccleaner/j/bz$a;->h:Lcom/piriform/ccleaner/j/ch;

    if-nez v0, :cond_7

    .line 3544
    new-instance v0, Lcom/piriform/ccleaner/j/ch;

    invoke-direct {v0}, Lcom/piriform/ccleaner/j/ch;-><init>()V

    iput-object v0, v1, Lcom/piriform/ccleaner/j/bz$a;->h:Lcom/piriform/ccleaner/j/ch;

    .line 3546
    :cond_7
    iget-object v0, v1, Lcom/piriform/ccleaner/j/bz$a;->i:Lcom/piriform/ccleaner/j/a;

    if-nez v0, :cond_8

    .line 3547
    new-instance v0, Lcom/piriform/ccleaner/j/a;

    invoke-direct {v0}, Lcom/piriform/ccleaner/j/a;-><init>()V

    iput-object v0, v1, Lcom/piriform/ccleaner/j/bz$a;->i:Lcom/piriform/ccleaner/j/a;

    .line 3549
    :cond_8
    iget-object v0, v1, Lcom/piriform/ccleaner/j/bz$a;->j:Lcom/piriform/ccleaner/j/cn;

    if-nez v0, :cond_9

    .line 3550
    new-instance v0, Lcom/piriform/ccleaner/j/cn;

    invoke-direct {v0}, Lcom/piriform/ccleaner/j/cn;-><init>()V

    iput-object v0, v1, Lcom/piriform/ccleaner/j/bz$a;->j:Lcom/piriform/ccleaner/j/cn;

    .line 3552
    :cond_9
    iget-object v0, v1, Lcom/piriform/ccleaner/j/bz$a;->k:Lcom/piriform/ccleaner/j/ca;

    if-nez v0, :cond_a

    .line 3553
    new-instance v0, Lcom/piriform/ccleaner/j/ca;

    invoke-direct {v0}, Lcom/piriform/ccleaner/j/ca;-><init>()V

    iput-object v0, v1, Lcom/piriform/ccleaner/j/bz$a;->k:Lcom/piriform/ccleaner/j/ca;

    .line 3555
    :cond_a
    new-instance v0, Lcom/piriform/ccleaner/j/bz;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/piriform/ccleaner/j/bz;-><init>(Lcom/piriform/ccleaner/j/bz$a;B)V

    .line 2111
    sput-object v0, Lcom/piriform/ccleaner/CCleanerApplication;->j:Lcom/piriform/ccleaner/j/bl;

    .line 2113
    :cond_b
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    sget-object v0, Lcom/piriform/ccleaner/CCleanerApplication;->j:Lcom/piriform/ccleaner/j/bl;

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/CCleanerApplication;)V

    .line 82
    iget-object v0, p0, Lcom/piriform/ccleaner/CCleanerApplication;->b:Lcom/piriform/ccleaner/n/a;

    .line 4167
    iget-object v1, v0, Lcom/piriform/ccleaner/n/a;->a:Lcom/piriform/ccleaner/n/c;

    const-string/jumbo v2, "v"

    invoke-virtual {v1, v2, v3}, Lcom/piriform/ccleaner/n/c;->b(Ljava/lang/String;I)I

    move-result v1

    .line 4058
    if-gtz v1, :cond_c

    .line 4059
    iget-object v2, v0, Lcom/piriform/ccleaner/n/a;->b:Lcom/piriform/ccleaner/n/d;

    iget-object v0, v0, Lcom/piriform/ccleaner/n/a;->a:Lcom/piriform/ccleaner/n/c;

    invoke-interface {v2, v0, v1}, Lcom/piriform/ccleaner/n/d;->a(Lcom/piriform/ccleaner/n/c;I)V

    .line 84
    :cond_c
    iget-object v0, p0, Lcom/piriform/ccleaner/CCleanerApplication;->e:Lcom/piriform/ccleaner/b/e;

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/b/e;->a(Landroid/content/Context;)V

    .line 85
    iget-object v0, p0, Lcom/piriform/ccleaner/CCleanerApplication;->e:Lcom/piriform/ccleaner/b/e;

    const-string/jumbo v1, "app_created"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/piriform/ccleaner/CCleanerApplication;->g:Lcom/piriform/ccleaner/o/e;

    invoke-interface {v0}, Lcom/piriform/ccleaner/o/e;->a()V

    .line 5097
    iget-object v0, p0, Lcom/piriform/ccleaner/CCleanerApplication;->c:Lcom/piriform/ccleaner/professional/g;

    invoke-interface {v0}, Lcom/piriform/ccleaner/professional/g;->b()Lf/d;

    move-result-object v0

    new-instance v1, Lcom/piriform/ccleaner/CCleanerApplication$1;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/CCleanerApplication$1;-><init>(Lcom/piriform/ccleaner/CCleanerApplication;)V

    invoke-virtual {v0, v1}, Lf/d;->a(Lf/e;)Lf/j;

    .line 5141
    iget-object v0, p0, Lcom/piriform/ccleaner/CCleanerApplication;->h:Lcom/piriform/ccleaner/s/o;

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/s/o;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 5147
    iget-object v0, p0, Lcom/piriform/ccleaner/CCleanerApplication;->f:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->c:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 93
    :cond_d
    iget-object v0, p0, Lcom/piriform/ccleaner/CCleanerApplication;->i:Lcom/piriform/ccleaner/b/a/a;

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/b/a/a;->a(Landroid/app/Application;)V

    .line 94
    return-void
.end method
