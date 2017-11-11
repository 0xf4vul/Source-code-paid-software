.class public Lcom/google/android/gms/internal/cb;
.super Ljava/lang/Object;


# static fields
.field protected static volatile a:Lcom/google/android/gms/internal/afo;

.field private static final d:Landroid/os/ConditionVariable;

.field private static volatile e:Ljava/util/Random;


# instance fields
.field protected volatile b:Ljava/lang/Boolean;

.field private c:Lcom/google/android/gms/internal/fe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cb;->d:Landroid/os/ConditionVariable;

    sput-object v1, Lcom/google/android/gms/internal/cb;->a:Lcom/google/android/gms/internal/afo;

    sput-object v1, Lcom/google/android/gms/internal/cb;->e:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/fe;)V
    .locals 2

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cb;->c:Lcom/google/android/gms/internal/fe;

    .line 1000
    iget-object v0, p1, Lcom/google/android/gms/internal/fe;->c:Ljava/util/concurrent/ExecutorService;

    .line 2000
    new-instance v1, Lcom/google/android/gms/internal/cb$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cb$1;-><init>(Lcom/google/android/gms/internal/cb;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 0
    return-void
.end method

.method public static a()I
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/cb;->c()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/internal/cb;->c()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/cb;)Lcom/google/android/gms/internal/fe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cb;->c:Lcom/google/android/gms/internal/fe;

    return-object v0
.end method

.method static synthetic b()Landroid/os/ConditionVariable;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cb;->d:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private static c()Ljava/util/Random;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/cb;->e:Ljava/util/Random;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/cb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/cb;->e:Ljava/util/Random;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cb;->e:Ljava/util/Random;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/cb;->e:Ljava/util/Random;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(IIJ)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/cb;->d:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cb;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/cb;->a:Lcom/google/android/gms/internal/afo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cb;->c:Lcom/google/android/gms/internal/fe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fe;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/bu$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bu$a;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/cb;->c:Lcom/google/android/gms/internal/fe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fe;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/bu$a;->a:Ljava/lang/String;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/bu$a;->b:Ljava/lang/Long;

    sget-object v1, Lcom/google/android/gms/internal/cb;->a:Lcom/google/android/gms/internal/afo;

    invoke-static {v0}, Lcom/google/android/gms/internal/qc;->a(Lcom/google/android/gms/internal/qc;)[B

    move-result-object v0

    .line 3000
    new-instance v10, Lcom/google/android/gms/internal/afo$a;

    const/4 v2, 0x0

    invoke-direct {v10, v1, v0, v2}, Lcom/google/android/gms/internal/afo$a;-><init>(Lcom/google/android/gms/internal/afo;[BC)V

    .line 4000
    iget-object v0, v10, Lcom/google/android/gms/internal/afo$a;->h:Lcom/google/android/gms/internal/qg$d;

    iput p2, v0, Lcom/google/android/gms/internal/qg$d;->f:I

    .line 5000
    iget-object v0, v10, Lcom/google/android/gms/internal/afo$a;->h:Lcom/google/android/gms/internal/qg$d;

    iput p1, v0, Lcom/google/android/gms/internal/qg$d;->e:I

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cb;->c:Lcom/google/android/gms/internal/fe;

    .line 6000
    iget-object v0, v0, Lcom/google/android/gms/internal/fe;->k:Lcom/google/android/gms/common/api/c;

    .line 8000
    iget-boolean v0, v10, Lcom/google/android/gms/internal/afo$a;->i:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 0
    :catch_0
    move-exception v0

    .line 8000
    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/google/android/gms/internal/afo$a;->i:Z

    .line 9000
    new-instance v11, Lcom/google/android/gms/internal/zzzm;

    new-instance v0, Lcom/google/android/gms/internal/zzzu;

    iget-object v1, v10, Lcom/google/android/gms/internal/afo$a;->j:Lcom/google/android/gms/internal/afo;

    invoke-static {v1}, Lcom/google/android/gms/internal/afo;->h(Lcom/google/android/gms/internal/afo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v10, Lcom/google/android/gms/internal/afo$a;->j:Lcom/google/android/gms/internal/afo;

    invoke-static {v2}, Lcom/google/android/gms/internal/afo;->i(Lcom/google/android/gms/internal/afo;)I

    move-result v2

    iget v3, v10, Lcom/google/android/gms/internal/afo$a;->a:I

    iget-object v4, v10, Lcom/google/android/gms/internal/afo$a;->b:Ljava/lang/String;

    iget-object v5, v10, Lcom/google/android/gms/internal/afo$a;->c:Ljava/lang/String;

    iget-object v6, v10, Lcom/google/android/gms/internal/afo$a;->d:Ljava/lang/String;

    iget-object v7, v10, Lcom/google/android/gms/internal/afo$a;->j:Lcom/google/android/gms/internal/afo;

    invoke-static {v7}, Lcom/google/android/gms/internal/afo;->g(Lcom/google/android/gms/internal/afo;)Z

    move-result v7

    iget v8, v10, Lcom/google/android/gms/internal/afo$a;->e:I

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzzu;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v3, v10, Lcom/google/android/gms/internal/afo$a;->h:Lcom/google/android/gms/internal/qg$d;

    iget-object v4, v10, Lcom/google/android/gms/internal/afo$a;->f:Lcom/google/android/gms/internal/afo$c;

    invoke-static {}, Lcom/google/android/gms/internal/afo;->b()[I

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/afo;->c()[Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/afo;->b()[I

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/afo;->d()[[B

    move-result-object v8

    iget-boolean v9, v10, Lcom/google/android/gms/internal/afo$a;->g:Z

    move-object v1, v11

    move-object v2, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzzm;-><init>(Lcom/google/android/gms/internal/zzzu;Lcom/google/android/gms/internal/qg$d;Lcom/google/android/gms/internal/afo$c;[I[Ljava/lang/String;[I[[BZ)V

    .line 8000
    iget-object v0, v11, Lcom/google/android/gms/internal/zzzm;->a:Lcom/google/android/gms/internal/zzzu;

    iget-object v1, v10, Lcom/google/android/gms/internal/afo$a;->j:Lcom/google/android/gms/internal/afo;

    invoke-static {v1}, Lcom/google/android/gms/internal/afo;->j(Lcom/google/android/gms/internal/afo;)Lcom/google/android/gms/internal/afo$b;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzzu;->g:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/gms/internal/zzzu;->c:I

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/afo$b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v10, Lcom/google/android/gms/internal/afo$a;->j:Lcom/google/android/gms/internal/afo;

    invoke-static {v0}, Lcom/google/android/gms/internal/afo;->k(Lcom/google/android/gms/internal/afo;)Lcom/google/android/gms/internal/afp;

    move-result-object v0

    invoke-interface {v0, v11}, Lcom/google/android/gms/internal/afp;->a(Lcom/google/android/gms/internal/zzzm;)Lcom/google/android/gms/common/api/d;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
