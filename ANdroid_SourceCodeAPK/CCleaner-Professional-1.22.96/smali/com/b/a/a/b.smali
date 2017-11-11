.class public final Lcom/b/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/a/a/a/a/d/d;


# instance fields
.field final a:Lc/a/a/a/i;

.field final b:Landroid/content/Context;

.field final c:Lcom/b/a/a/c;

.field final d:Lcom/b/a/a/v;

.field final e:Lc/a/a/a/a/e/e;

.field final f:Ljava/util/concurrent/ScheduledExecutorService;

.field g:Lcom/b/a/a/r;


# direct methods
.method public constructor <init>(Lc/a/a/a/i;Landroid/content/Context;Lcom/b/a/a/c;Lcom/b/a/a/v;Lc/a/a/a/a/e/e;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/b/a/a/h;

    invoke-direct {v0}, Lcom/b/a/a/h;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/b;->g:Lcom/b/a/a/r;

    .line 32
    iput-object p1, p0, Lcom/b/a/a/b;->a:Lc/a/a/a/i;

    .line 33
    iput-object p2, p0, Lcom/b/a/a/b;->b:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lcom/b/a/a/b;->c:Lcom/b/a/a/c;

    .line 35
    iput-object p4, p0, Lcom/b/a/a/b;->d:Lcom/b/a/a/v;

    .line 36
    iput-object p5, p0, Lcom/b/a/a/b;->e:Lc/a/a/a/a/e/e;

    .line 37
    iput-object p6, p0, Lcom/b/a/a/b;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/b/a/a/b$3;

    invoke-direct {v0, p0}, Lcom/b/a/a/b$3;-><init>(Lcom/b/a/a/b;)V

    invoke-virtual {p0, v0}, Lcom/b/a/a/b;->a(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method public final a(Lcom/b/a/a/s$a;ZZ)V
    .locals 4

    .prologue
    .line 150
    new-instance v0, Lcom/b/a/a/b$6;

    invoke-direct {v0, p0, p1, p3}, Lcom/b/a/a/b$6;-><init>(Lcom/b/a/a/b;Lcom/b/a/a/s$a;Z)V

    .line 165
    if-eqz p2, :cond_0

    .line 1174
    :try_start_0
    iget-object v1, p0, Lcom/b/a/a/b;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1177
    :goto_0
    return-void

    .line 1175
    :catch_0
    move-exception v0

    .line 1176
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v1

    const-string/jumbo v2, "Answers"

    const-string/jumbo v3, "Failed to run events task"

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0, v0}, Lcom/b/a/a/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method final a(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v1

    const-string/jumbo v2, "Answers"

    const-string/jumbo v3, "Failed to submit events task"

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
