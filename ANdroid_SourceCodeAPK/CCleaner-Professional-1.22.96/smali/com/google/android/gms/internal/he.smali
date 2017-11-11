.class public final Lcom/google/android/gms/internal/he;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/internal/cc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cc",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/internal/cc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cc",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/internal/cc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cc",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/google/android/gms/internal/cc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cc",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/google/android/gms/internal/cc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cc",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lcom/google/android/gms/internal/cc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cc",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lcom/google/android/gms/internal/cc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cc",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lcom/google/android/gms/internal/cc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cc",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lcom/google/android/gms/internal/cc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cc",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Lcom/google/android/gms/internal/cc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cc",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Lcom/google/android/gms/internal/cc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cc",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Lcom/google/android/gms/internal/cc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cc",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Lcom/google/android/gms/internal/cc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cc",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Lcom/google/android/gms/internal/cc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cc",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x5

    .line 0
    const-string/jumbo v0, "crash:enabled"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 3000
    new-instance v2, Lcom/google/android/gms/internal/cc$a;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/cc$a;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 0
    sput-object v2, Lcom/google/android/gms/internal/he;->a:Lcom/google/android/gms/internal/cc;

    const-string/jumbo v0, "crash:gateway_url"

    const-string/jumbo v1, "https://mobilecrashreporting.googleapis.com/v1/crashes:batchCreate?key="

    .line 4000
    new-instance v2, Lcom/google/android/gms/internal/cc$d;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/cc$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 0
    sput-object v2, Lcom/google/android/gms/internal/he;->b:Lcom/google/android/gms/internal/cc;

    const-string/jumbo v0, "crash:log_buffer_capacity"

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/cc;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/cc$b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/he;->c:Lcom/google/android/gms/internal/cc;

    const-string/jumbo v0, "crash:log_buffer_max_total_size"

    const v1, 0x8000

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cc;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/cc$b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/he;->d:Lcom/google/android/gms/internal/cc;

    const-string/jumbo v0, "crash:crash_backlog_capacity"

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/cc;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/cc$b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/he;->e:Lcom/google/android/gms/internal/cc;

    const-string/jumbo v0, "crash:crash_backlog_max_age"

    const-wide/32 v2, 0x240c8400

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/cc;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/cc$c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/he;->f:Lcom/google/android/gms/internal/cc;

    const-string/jumbo v0, "crash:starting_backoff"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/cc;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/cc$c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/he;->g:Lcom/google/android/gms/internal/cc;

    const-string/jumbo v0, "crash:backoff_limit"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/cc;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/cc$c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/he;->h:Lcom/google/android/gms/internal/cc;

    const-string/jumbo v0, "crash:retry_num_attempts"

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cc;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/cc$b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/he;->i:Lcom/google/android/gms/internal/cc;

    const-string/jumbo v0, "crash:batch_size"

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/cc;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/cc$b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/he;->j:Lcom/google/android/gms/internal/cc;

    const-string/jumbo v0, "crash:batch_throttle"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/cc;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/cc$c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/he;->k:Lcom/google/android/gms/internal/cc;

    const-string/jumbo v0, "crash:frame_depth"

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cc;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/cc$b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/he;->l:Lcom/google/android/gms/internal/cc;

    const-string/jumbo v0, "crash:receiver_delay"

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/cc;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/cc$b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/he;->m:Lcom/google/android/gms/internal/cc;

    const-string/jumbo v0, "crash:thread_idle_timeout"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cc;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/cc$b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/he;->n:Lcom/google/android/gms/internal/cc;

    return-void
.end method

.method public static final a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 0
    invoke-static {}, Lcom/google/android/gms/internal/cg;->a()Lcom/google/android/gms/internal/cd;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/internal/cg;->b()Lcom/google/android/gms/internal/ce;

    move-result-object v1

    .line 2000
    monitor-enter v1

    :try_start_0
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ce;->a:Z

    if-eqz v0, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->e:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    const-string/jumbo v2, "com.google.android.gms.flags"

    invoke-static {p0, v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    const-string/jumbo v2, "com.google.android.gms.flags.impl.FlagProviderImpl"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/cf$a;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/cf;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ce;->b:Lcom/google/android/gms/internal/cf;

    iget-object v0, v1, Lcom/google/android/gms/internal/ce;->b:Lcom/google/android/gms/internal/cf;

    invoke-static {p0}, Lcom/google/android/gms/a/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/cf;->init(Lcom/google/android/gms/a/a;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/gms/internal/ce;->a:Z
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :goto_2
    :try_start_3
    const-string/jumbo v2, "FlagValueProvider"

    const-string/jumbo v3, "Failed to initialize flags module."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method
