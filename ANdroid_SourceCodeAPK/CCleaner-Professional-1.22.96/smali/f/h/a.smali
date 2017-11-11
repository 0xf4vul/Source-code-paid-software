.class public final Lf/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lf/h/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lf/g;

.field private final b:Lf/g;

.field private final c:Lf/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lf/h/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Lf/g/f;->a()Lf/g/f;

    move-result-object v0

    invoke-virtual {v0}, Lf/g/f;->f()Lf/g/g;

    .line 59
    invoke-static {}, Lf/g/g;->d()Lf/g;

    .line 63
    invoke-static {}, Lf/g/g;->a()Lf/g;

    move-result-object v0

    iput-object v0, p0, Lf/h/a;->a:Lf/g;

    .line 66
    invoke-static {}, Lf/g/g;->e()Lf/g;

    .line 70
    invoke-static {}, Lf/g/g;->b()Lf/g;

    move-result-object v0

    iput-object v0, p0, Lf/h/a;->b:Lf/g;

    .line 73
    invoke-static {}, Lf/g/g;->f()Lf/g;

    .line 77
    invoke-static {}, Lf/g/g;->c()Lf/g;

    move-result-object v0

    iput-object v0, p0, Lf/h/a;->c:Lf/g;

    .line 79
    return-void
.end method

.method public static a()Lf/g;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lf/d/c/e;->b:Lf/d/c/e;

    return-object v0
.end method

.method public static b()Lf/g;
    .locals 3

    .prologue
    .line 1042
    :goto_0
    sget-object v0, Lf/h/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/h/a;

    .line 1043
    if-eqz v0, :cond_1

    .line 140
    :cond_0
    iget-object v0, v0, Lf/h/a;->b:Lf/g;

    invoke-static {v0}, Lf/g/c;->a(Lf/g;)Lf/g;

    move-result-object v0

    return-object v0

    .line 1046
    :cond_1
    new-instance v0, Lf/h/a;

    invoke-direct {v0}, Lf/h/a;-><init>()V

    .line 1047
    sget-object v1, Lf/h/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1050
    invoke-direct {v0}, Lf/h/a;->c()V

    goto :goto_0
.end method

.method private declared-synchronized c()V
    .locals 1

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/h/a;->a:Lf/g;

    instance-of v0, v0, Lf/d/c/i;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lf/h/a;->a:Lf/g;

    check-cast v0, Lf/d/c/i;

    invoke-interface {v0}, Lf/d/c/i;->b()V

    .line 233
    :cond_0
    iget-object v0, p0, Lf/h/a;->b:Lf/g;

    instance-of v0, v0, Lf/d/c/i;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lf/h/a;->b:Lf/g;

    check-cast v0, Lf/d/c/i;

    invoke-interface {v0}, Lf/d/c/i;->b()V

    .line 236
    :cond_1
    iget-object v0, p0, Lf/h/a;->c:Lf/g;

    instance-of v0, v0, Lf/d/c/i;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lf/h/a;->c:Lf/g;

    check-cast v0, Lf/d/c/i;

    invoke-interface {v0}, Lf/d/c/i;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_2
    monitor-exit p0

    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
