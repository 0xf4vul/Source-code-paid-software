.class final Lcom/google/android/gms/internal/id$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hx$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/id$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/google/android/gms/internal/id$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/id$1;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/id$1$1;->b:Lcom/google/android/gms/internal/id$1;

    iput-wide p2, p0, Lcom/google/android/gms/internal/id$1$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 0
    iget-wide v2, p0, Lcom/google/android/gms/internal/id$1$1;->a:J

    iget-object v0, p0, Lcom/google/android/gms/internal/id$1$1;->b:Lcom/google/android/gms/internal/id$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/id$1;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/id;->d(Lcom/google/android/gms/internal/id;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/id$1$1;->b:Lcom/google/android/gms/internal/id$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/id$1;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/id;->b(Lcom/google/android/gms/internal/id;)Lcom/google/android/gms/internal/id$b;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/id$b;->b:Lcom/google/android/gms/internal/id$b;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/id$1$1;->b:Lcom/google/android/gms/internal/id$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/id$1;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/id;->a(Lcom/google/android/gms/internal/id;)Lcom/google/android/gms/internal/lc;

    move-result-object v0

    const-string/jumbo v2, "Successfully fetched token, opening connection"

    new-array v3, v6, [Ljava/lang/Object;

    .line 1000
    invoke-virtual {v0, v2, v7, v3}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/id$1$1;->b:Lcom/google/android/gms/internal/id$1;

    iget-object v4, v0, Lcom/google/android/gms/internal/id$1;->b:Lcom/google/android/gms/internal/id;

    .line 2000
    iget-object v0, v4, Lcom/google/android/gms/internal/id;->e:Lcom/google/android/gms/internal/id$b;

    sget-object v2, Lcom/google/android/gms/internal/id$b;->b:Lcom/google/android/gms/internal/id$b;

    if-ne v0, v2, :cond_2

    move v0, v1

    :goto_0
    const-string/jumbo v2, "Trying to open network connection while in the wrong state: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, v4, Lcom/google/android/gms/internal/id;->e:Lcom/google/android/gms/internal/id$b;

    aput-object v3, v1, v6

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/hz;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    iget-object v0, v4, Lcom/google/android/gms/internal/id;->a:Lcom/google/android/gms/internal/ic$a;

    invoke-interface {v0, v6}, Lcom/google/android/gms/internal/ic$a;->a(Z)V

    :cond_0
    iput-object p1, v4, Lcom/google/android/gms/internal/id;->f:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/id$b;->c:Lcom/google/android/gms/internal/id$b;

    iput-object v0, v4, Lcom/google/android/gms/internal/id;->e:Lcom/google/android/gms/internal/id$b;

    new-instance v0, Lcom/google/android/gms/internal/hw;

    iget-object v1, v4, Lcom/google/android/gms/internal/id;->g:Lcom/google/android/gms/internal/hy;

    iget-object v2, v4, Lcom/google/android/gms/internal/id;->b:Lcom/google/android/gms/internal/ia;

    iget-object v3, v4, Lcom/google/android/gms/internal/id;->c:Ljava/lang/String;

    iget-object v5, v4, Lcom/google/android/gms/internal/id;->h:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hw;-><init>(Lcom/google/android/gms/internal/hy;Lcom/google/android/gms/internal/ia;Ljava/lang/String;Lcom/google/android/gms/internal/hw$a;Ljava/lang/String;)V

    iput-object v0, v4, Lcom/google/android/gms/internal/id;->d:Lcom/google/android/gms/internal/hw;

    iget-object v0, v4, Lcom/google/android/gms/internal/id;->d:Lcom/google/android/gms/internal/hw;

    .line 3000
    iget-object v1, v0, Lcom/google/android/gms/internal/hw;->c:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/hw;->c:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v2, "Opening a connection"

    new-array v3, v6, [Ljava/lang/Object;

    .line 4000
    invoke-virtual {v1, v2, v7, v3}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 3000
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/ig;

    .line 5000
    iget-object v1, v0, Lcom/google/android/gms/internal/ig;->a:Lcom/google/android/gms/internal/ig$b;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ig$b;->a()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ig;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/ig$1;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ig$1;-><init>(Lcom/google/android/gms/internal/ig;)V

    const-wide/16 v4, 0x7530

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ig;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 0
    :goto_1
    return-void

    :cond_2
    move v0, v6

    .line 2000
    goto :goto_0

    .line 0
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/id$1$1;->b:Lcom/google/android/gms/internal/id$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/id$1;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/id;->b(Lcom/google/android/gms/internal/id;)Lcom/google/android/gms/internal/id$b;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/id$b;->a:Lcom/google/android/gms/internal/id$b;

    if-ne v0, v2, :cond_4

    move v0, v1

    :goto_2
    const-string/jumbo v2, "Expected connection state disconnected, but was %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/id$1$1;->b:Lcom/google/android/gms/internal/id$1;

    iget-object v3, v3, Lcom/google/android/gms/internal/id$1;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v3}, Lcom/google/android/gms/internal/id;->b(Lcom/google/android/gms/internal/id;)Lcom/google/android/gms/internal/id$b;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/hz;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/id$1$1;->b:Lcom/google/android/gms/internal/id$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/id$1;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/id;->a(Lcom/google/android/gms/internal/id;)Lcom/google/android/gms/internal/lc;

    move-result-object v0

    const-string/jumbo v1, "Not opening connection after token refresh, because connection was set to disconnected"

    new-array v2, v6, [Ljava/lang/Object;

    .line 6000
    invoke-virtual {v0, v1, v7, v2}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    move v0, v6

    .line 0
    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/id$1$1;->b:Lcom/google/android/gms/internal/id$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/id$1;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/id;->a(Lcom/google/android/gms/internal/id;)Lcom/google/android/gms/internal/lc;

    move-result-object v0

    const-string/jumbo v1, "Ignoring getToken result, because this was not the latest attempt."

    new-array v2, v6, [Ljava/lang/Object;

    .line 7000
    invoke-virtual {v0, v1, v7, v2}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/id$1$1;->a:J

    iget-object v2, p0, Lcom/google/android/gms/internal/id$1$1;->b:Lcom/google/android/gms/internal/id$1;

    iget-object v2, v2, Lcom/google/android/gms/internal/id$1;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v2}, Lcom/google/android/gms/internal/id;->d(Lcom/google/android/gms/internal/id;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/id$1$1;->b:Lcom/google/android/gms/internal/id$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/id$1;->b:Lcom/google/android/gms/internal/id;

    sget-object v1, Lcom/google/android/gms/internal/id$b;->a:Lcom/google/android/gms/internal/id$b;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/id;->a(Lcom/google/android/gms/internal/id;Lcom/google/android/gms/internal/id$b;)Lcom/google/android/gms/internal/id$b;

    iget-object v0, p0, Lcom/google/android/gms/internal/id$1$1;->b:Lcom/google/android/gms/internal/id$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/id$1;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/id;->a(Lcom/google/android/gms/internal/id;)Lcom/google/android/gms/internal/lc;

    move-result-object v1

    const-string/jumbo v2, "Error fetching token: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v2, v4, [Ljava/lang/Object;

    .line 8000
    invoke-virtual {v1, v0, v5, v2}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/id$1$1;->b:Lcom/google/android/gms/internal/id$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/id$1;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/id;->e(Lcom/google/android/gms/internal/id;)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/id$1$1;->b:Lcom/google/android/gms/internal/id$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/id$1;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/id;->a(Lcom/google/android/gms/internal/id;)Lcom/google/android/gms/internal/lc;

    move-result-object v0

    const-string/jumbo v1, "Ignoring getToken error, because this was not the latest attempt."

    new-array v2, v4, [Ljava/lang/Object;

    .line 9000
    invoke-virtual {v0, v1, v5, v2}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method
