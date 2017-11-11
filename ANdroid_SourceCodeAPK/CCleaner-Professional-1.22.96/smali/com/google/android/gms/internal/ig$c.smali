.class final Lcom/google/android/gms/internal/ig$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ig$b;
.implements Lcom/google/android/gms/internal/md;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ig;

.field private b:Lcom/google/android/gms/internal/mc;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ig;Lcom/google/android/gms/internal/mc;)V
    .locals 1

    .prologue
    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ig$c;->a:Lcom/google/android/gms/internal/ig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ig$c;->b:Lcom/google/android/gms/internal/mc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ig$c;->b:Lcom/google/android/gms/internal/mc;

    .line 1000
    iput-object p0, v0, Lcom/google/android/gms/internal/mc;->a:Lcom/google/android/gms/internal/md;

    .line 0
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ig;Lcom/google/android/gms/internal/mc;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ig$c;-><init>(Lcom/google/android/gms/internal/ig;Lcom/google/android/gms/internal/mc;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ig$c;->b:Lcom/google/android/gms/internal/mc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mc;->c()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/me; {:try_start_0 .. :try_end_0} :catch_0

    .line 4000
    :goto_0
    return-void

    .line 0
    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ig$c;->a:Lcom/google/android/gms/internal/ig;

    invoke-static {v1}, Lcom/google/android/gms/internal/ig;->c(Lcom/google/android/gms/internal/ig;)Lcom/google/android/gms/internal/lc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ig$c;->a:Lcom/google/android/gms/internal/ig;

    invoke-static {v1}, Lcom/google/android/gms/internal/ig;->c(Lcom/google/android/gms/internal/ig;)Lcom/google/android/gms/internal/lc;

    move-result-object v1

    const-string/jumbo v2, "Error connecting"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 4000
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ig$c;->b:Lcom/google/android/gms/internal/mc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mc;->d()V

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ig$c;->b:Lcom/google/android/gms/internal/mc;

    .line 5000
    iget-object v1, v0, Lcom/google/android/gms/internal/mc;->b:Lcom/google/android/gms/internal/mi;

    .line 6000
    iget-object v1, v1, Lcom/google/android/gms/internal/mi;->e:Ljava/lang/Thread;

    .line 5000
    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/mc;->b:Lcom/google/android/gms/internal/mi;

    .line 7000
    iget-object v1, v1, Lcom/google/android/gms/internal/mi;->e:Ljava/lang/Thread;

    .line 5000
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 8000
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/mc;->c:Ljava/lang/Thread;

    .line 5000
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4000
    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ig$c;->a:Lcom/google/android/gms/internal/ig;

    invoke-static {v1}, Lcom/google/android/gms/internal/ig;->c(Lcom/google/android/gms/internal/ig;)Lcom/google/android/gms/internal/lc;

    move-result-object v1

    const-string/jumbo v2, "Interrupted while shutting down websocket threads"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/me;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ig$c;->a:Lcom/google/android/gms/internal/ig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->e(Lcom/google/android/gms/internal/ig;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ig$c$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ig$c$4;-><init>(Lcom/google/android/gms/internal/ig$c;Lcom/google/android/gms/internal/me;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/mg;)V
    .locals 5

    .prologue
    .line 0
    .line 2000
    iget-object v1, p1, Lcom/google/android/gms/internal/mg;->a:Ljava/lang/String;

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ig$c;->a:Lcom/google/android/gms/internal/ig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->c(Lcom/google/android/gms/internal/ig;)Lcom/google/android/gms/internal/lc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ig$c;->a:Lcom/google/android/gms/internal/ig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->c(Lcom/google/android/gms/internal/ig;)Lcom/google/android/gms/internal/lc;

    move-result-object v2

    const-string/jumbo v3, "ws message: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 3000
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ig$c;->a:Lcom/google/android/gms/internal/ig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->e(Lcom/google/android/gms/internal/ig;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ig$c$2;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ig$c$2;-><init>(Lcom/google/android/gms/internal/ig$c;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ig$c;->b:Lcom/google/android/gms/internal/mc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mc;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ig$c;->b:Lcom/google/android/gms/internal/mc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mc;->d()V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ig$c;->a:Lcom/google/android/gms/internal/ig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->e(Lcom/google/android/gms/internal/ig;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ig$c$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ig$c$1;-><init>(Lcom/google/android/gms/internal/ig$c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ig$c;->a:Lcom/google/android/gms/internal/ig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->e(Lcom/google/android/gms/internal/ig;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ig$c$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ig$c$3;-><init>(Lcom/google/android/gms/internal/ig$c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
