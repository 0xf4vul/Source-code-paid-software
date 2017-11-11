.class public Lcom/piriform/ccleaner/a/a/i;
.super Lcom/piriform/ccleaner/a/a/a;
.source "SourceFile"


# instance fields
.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/piriform/ccleaner/m/k;

.field private final k:Lcom/piriform/ccleaner/core/b/a;

.field private l:I

.field private m:J

.field private final n:Lf/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/m/k;Lcom/piriform/ccleaner/core/b/a;Lcom/piriform/ccleaner/b/e;)V
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/piriform/ccleaner/a/h;->d:Lcom/piriform/ccleaner/a/h;

    sget-object v1, Lcom/piriform/ccleaner/a/c;->a:Lcom/piriform/ccleaner/a/c;

    invoke-direct {p0, p1, v0, v1, p4}, Lcom/piriform/ccleaner/a/a/a;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/a/h;Lcom/piriform/ccleaner/a/c;Lcom/piriform/ccleaner/b/e;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/a/a/i;->i:Ljava/util/List;

    .line 32
    new-instance v0, Lcom/piriform/ccleaner/a/a/i$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/a/a/i$1;-><init>(Lcom/piriform/ccleaner/a/a/i;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/a/a/i;->n:Lf/i;

    .line 55
    iput-object p2, p0, Lcom/piriform/ccleaner/a/a/i;->j:Lcom/piriform/ccleaner/m/k;

    .line 56
    iput-object p3, p0, Lcom/piriform/ccleaner/a/a/i;->k:Lcom/piriform/ccleaner/core/b/a;

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/a/a/i;Lcom/piriform/ccleaner/core/data/AndroidPackage;)V
    .locals 6

    .prologue
    .line 22
    .line 22113
    iget v0, p0, Lcom/piriform/ccleaner/a/a/i;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/piriform/ccleaner/a/a/i;->l:I

    .line 22114
    iget v0, p0, Lcom/piriform/ccleaner/a/a/i;->l:I

    iget v1, p0, Lcom/piriform/ccleaner/a/a/i;->l:I

    invoke-virtual {p0, v0, v1}, Lcom/piriform/ccleaner/a/a/i;->a(II)V

    .line 23123
    iget-wide v0, p1, Lcom/piriform/ccleaner/core/data/AndroidPackage;->e:J

    .line 22115
    const-wide/32 v2, 0xa000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 22116
    iget-wide v0, p0, Lcom/piriform/ccleaner/a/a/i;->m:J

    .line 24123
    iget-wide v2, p1, Lcom/piriform/ccleaner/core/data/AndroidPackage;->e:J

    .line 24178
    iget-wide v4, p1, Lcom/piriform/ccleaner/core/data/AndroidPackage;->k:J

    .line 22116
    add-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/piriform/ccleaner/a/a/i;->m:J

    .line 22117
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/i;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25053
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 22118
    const v1, 0x7f080045

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/piriform/ccleaner/a/a/i;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/piriform/ccleaner/a/a/i;->m:J

    .line 22119
    invoke-static {v4, v5}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 22118
    invoke-interface {v0, v1, v2}, Lcom/piriform/ccleaner/a/q;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 22121
    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/a/a/i;->a(Ljava/lang/String;)V

    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method protected final c()I
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 61
    .line 11053
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 61
    const v1, 0x7f08003e

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/piriform/ccleaner/a/q;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/a/a/i;->a(Ljava/lang/String;)V

    .line 63
    iput-wide v4, p0, Lcom/piriform/ccleaner/a/a/i;->m:J

    .line 64
    iput v7, p0, Lcom/piriform/ccleaner/a/a/i;->l:I

    .line 65
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/i;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 66
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/i;->j:Lcom/piriform/ccleaner/m/k;

    invoke-interface {v0}, Lcom/piriform/ccleaner/m/k;->c()V

    .line 68
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/i;->j:Lcom/piriform/ccleaner/m/k;

    invoke-interface {v0}, Lcom/piriform/ccleaner/m/k;->b()Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/a/a/i;->n:Lf/i;

    .line 11213
    invoke-static {v1, v0}, Lf/d;->a(Lf/i;Lf/d;)Lf/j;

    .line 12092
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    sget v0, Lcom/piriform/ccleaner/a/a/d$a;->d:I

    .line 81
    :goto_0
    return v0

    .line 74
    :cond_0
    new-instance v0, Lcom/piriform/ccleaner/core/data/AndroidPackage$a;

    invoke-direct {v0}, Lcom/piriform/ccleaner/core/data/AndroidPackage$a;-><init>()V

    .line 75
    sget v1, Lcom/piriform/ccleaner/core/d$a;->b:I

    .line 13018
    iput v1, v0, Lcom/piriform/ccleaner/core/d;->a:I

    .line 77
    iget-wide v0, p0, Lcom/piriform/ccleaner/a/a/i;->m:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 78
    sget v0, Lcom/piriform/ccleaner/a/a/d$a;->e:I

    goto :goto_0

    .line 80
    :cond_1
    iget-wide v0, p0, Lcom/piriform/ccleaner/a/a/i;->m:J

    iget-object v2, p0, Lcom/piriform/ccleaner/a/a/i;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 14053
    iget-object v4, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 13087
    invoke-static {v0, v1}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 13088
    const v1, 0x7f090004

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v7

    aput-object v0, v2, v6

    invoke-interface {v4, v1, v3, v2}, Lcom/piriform/ccleaner/a/q;->a(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 13089
    const v2, 0x7f08005d

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-interface {v4, v2, v5}, Lcom/piriform/ccleaner/a/q;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 13090
    const v0, 0x7f090026

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v4, v0, v3, v5}, Lcom/piriform/ccleaner/a/q;->a(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 13091
    iget-wide v4, p0, Lcom/piriform/ccleaner/a/a/i;->m:J

    iget v6, p0, Lcom/piriform/ccleaner/a/a/i;->l:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/piriform/ccleaner/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 81
    sget v0, Lcom/piriform/ccleaner/a/a/d$a;->a:I

    goto :goto_0
.end method

.method protected f()Lcom/piriform/ccleaner/a/a/d$b;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 96
    iget-object v1, p0, Lcom/piriform/ccleaner/a/a/i;->k:Lcom/piriform/ccleaner/core/b/a;

    iget-object v2, p0, Lcom/piriform/ccleaner/a/a/i;->i:Ljava/util/List;

    .line 15056
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 15057
    new-instance v4, Ljava/io/File;

    .line 15072
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 15073
    const-string/jumbo v6, "%s/Android/data/%s/cache"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v5, v7, v9

    .line 15107
    iget-object v5, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->b:Ljava/lang/String;

    .line 15073
    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 15057
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15058
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 16049
    :try_start_0
    invoke-static {v4}, Lcom/piriform/ccleaner/f/j;->a(Ljava/io/File;)Lcom/piriform/ccleaner/f/j;

    move-result-object v5

    .line 16280
    sget-object v6, Lcom/piriform/ccleaner/f/i;->a:Lcom/piriform/ccleaner/f/i;

    invoke-virtual {v5, v6}, Lcom/piriform/ccleaner/f/j;->a(Lcom/piriform/ccleaner/f/i;)Lcom/piriform/ccleaner/f/h;

    .line 15061
    invoke-virtual {v4}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v6

    .line 17174
    iput-wide v6, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->k:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 15063
    :catch_0
    move-exception v0

    new-array v5, v8, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Deletion failed for folder "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v9

    invoke-static {v0, v5}, Lcom/novoda/notils/c/a/a;->b(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 15066
    :cond_0
    new-array v4, v10, [Ljava/lang/Object;

    const-string/jumbo v5, "External cache folder does not exist for package"

    aput-object v5, v4, v9

    .line 18107
    iget-object v0, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->b:Ljava/lang/String;

    .line 15066
    aput-object v0, v4, v8

    invoke-static {v4}, Lcom/novoda/notils/c/a/a;->a([Ljava/lang/Object;)V

    goto :goto_0

    .line 15042
    :cond_1
    iget-object v0, v1, Lcom/piriform/ccleaner/core/b/a;->b:Lcom/piriform/ccleaner/s/h;

    invoke-interface {v0}, Lcom/piriform/ccleaner/s/h;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/piriform/ccleaner/core/b/a;->b:Lcom/piriform/ccleaner/s/h;

    invoke-interface {v0}, Lcom/piriform/ccleaner/s/h;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15043
    new-instance v3, Lcom/piriform/ccleaner/rooted/f;

    invoke-direct {v3}, Lcom/piriform/ccleaner/rooted/f;-><init>()V

    .line 15044
    iget-object v0, v1, Lcom/piriform/ccleaner/core/b/a;->a:Landroid/content/Context;

    .line 19051
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 20015
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 20107
    iget-object v4, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->b:Ljava/lang/String;

    .line 20016
    invoke-virtual {v3, v1, v4}, Lcom/piriform/ccleaner/rooted/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20017
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20018
    invoke-virtual {v4}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v4

    .line 20127
    iput-wide v4, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->e:J

    goto :goto_1

    .line 21077
    :cond_2
    iget-object v0, v1, Lcom/piriform/ccleaner/core/b/a;->c:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_3

    .line 21080
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 21082
    :try_start_1
    iget-object v2, v1, Lcom/piriform/ccleaner/core/b/a;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "freeStorageAndNotify"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/content/pm/IPackageDataObserver;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 21087
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 21088
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 21089
    const-wide v4, 0x7fffffffffffffffL

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 21090
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 21091
    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 21092
    const/4 v3, 0x1

    new-instance v5, Lcom/piriform/ccleaner/core/b/a$a;

    invoke-direct {v5, v0}, Lcom/piriform/ccleaner/core/b/a$a;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    aput-object v5, v4, v3

    .line 21093
    iget-object v1, v1, Lcom/piriform/ccleaner/core/b/a;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4

    .line 21096
    const-wide/16 v2, 0x1

    :try_start_2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    .line 22053
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 97
    const v1, 0x7f0800eb

    new-array v2, v8, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/piriform/ccleaner/a/a/i;->m:J

    invoke-static {v4, v5}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-interface {v0, v1, v2}, Lcom/piriform/ccleaner/a/q;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-wide v2, p0, Lcom/piriform/ccleaner/a/a/i;->m:J

    iget v1, p0, Lcom/piriform/ccleaner/a/a/i;->l:I

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/piriform/ccleaner/a/a/i;->a(Ljava/lang/String;JI)V

    .line 99
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/i;->j:Lcom/piriform/ccleaner/m/k;

    invoke-interface {v0}, Lcom/piriform/ccleaner/m/k;->c()V

    .line 100
    invoke-virtual {p0}, Lcom/piriform/ccleaner/a/a/i;->t()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/piriform/ccleaner/a/a/d$b;->a:Lcom/piriform/ccleaner/a/a/d$b;

    :goto_3
    return-object v0

    .line 21098
    :catch_1
    move-exception v0

    const/4 v1, 0x1

    :try_start_3
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Waiting for package data was interrupted"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/novoda/notils/c/a/a;->b(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    .line 21100
    :catch_2
    move-exception v0

    .line 21101
    new-instance v1, Lcom/piriform/ccleaner/core/m;

    invoke-direct {v1, v0}, Lcom/piriform/ccleaner/core/m;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 21102
    :catch_3
    move-exception v0

    .line 21103
    new-instance v1, Lcom/piriform/ccleaner/core/m;

    invoke-direct {v1, v0}, Lcom/piriform/ccleaner/core/m;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 21104
    :catch_4
    move-exception v0

    .line 21105
    new-instance v1, Lcom/piriform/ccleaner/core/m;

    invoke-direct {v1, v0}, Lcom/piriform/ccleaner/core/m;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 100
    :cond_4
    sget-object v0, Lcom/piriform/ccleaner/a/a/d$b;->b:Lcom/piriform/ccleaner/a/a/d$b;

    goto :goto_3
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/i;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/i;->k:Lcom/piriform/ccleaner/core/b/a;

    .line 22110
    iget-object v0, v0, Lcom/piriform/ccleaner/core/b/a;->b:Lcom/piriform/ccleaner/s/h;

    invoke-interface {v0}, Lcom/piriform/ccleaner/s/h;->d()Z

    move-result v0

    .line 126
    return v0
.end method
