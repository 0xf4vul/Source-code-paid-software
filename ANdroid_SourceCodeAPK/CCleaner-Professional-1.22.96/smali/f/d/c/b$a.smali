.class final Lf/d/c/b$a;
.super Lf/g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lf/d/e/l;

.field private final b:Lf/d/e/l;

.field private final c:Lf/j/b;

.field private final d:Lf/d/c/b$c;


# direct methods
.method constructor <init>(Lf/d/c/b$c;)V
    .locals 4

    .prologue
    .line 145
    invoke-direct {p0}, Lf/g$a;-><init>()V

    .line 140
    new-instance v0, Lf/d/e/l;

    invoke-direct {v0}, Lf/d/e/l;-><init>()V

    iput-object v0, p0, Lf/d/c/b$a;->b:Lf/d/e/l;

    .line 141
    new-instance v0, Lf/j/b;

    invoke-direct {v0}, Lf/j/b;-><init>()V

    iput-object v0, p0, Lf/d/c/b$a;->c:Lf/j/b;

    .line 142
    new-instance v0, Lf/d/e/l;

    const/4 v1, 0x2

    new-array v1, v1, [Lf/j;

    const/4 v2, 0x0

    iget-object v3, p0, Lf/d/c/b$a;->b:Lf/d/e/l;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lf/d/c/b$a;->c:Lf/j/b;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lf/d/e/l;-><init>([Lf/j;)V

    iput-object v0, p0, Lf/d/c/b$a;->a:Lf/d/e/l;

    .line 146
    iput-object p1, p0, Lf/d/c/b$a;->d:Lf/d/c/b$c;

    .line 148
    return-void
.end method


# virtual methods
.method public final a(Lf/c/a;)Lf/j;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 162
    .line 1157
    iget-object v0, p0, Lf/d/c/b$a;->a:Lf/d/e/l;

    .line 2059
    iget-boolean v0, v0, Lf/d/e/l;->b:Z

    .line 162
    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Lf/j/d;->a()Lf/j;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lf/d/c/b$a;->d:Lf/d/c/b$c;

    new-instance v1, Lf/d/c/b$a$1;

    invoke-direct {v1, p0, p1}, Lf/d/c/b$a$1;-><init>(Lf/d/c/b$a;Lf/c/a;)V

    iget-object v2, p0, Lf/d/c/b$a;->b:Lf/d/e/l;

    .line 2268
    invoke-static {v1}, Lf/g/c;->a(Lf/c/a;)Lf/c/a;

    move-result-object v3

    .line 2269
    new-instance v1, Lf/d/c/h;

    invoke-direct {v1, v3, v2}, Lf/d/c/h;-><init>(Lf/c/a;Lf/d/e/l;)V

    .line 2270
    invoke-virtual {v2, v1}, Lf/d/e/l;->a(Lf/j;)V

    .line 2273
    cmp-long v2, v4, v4

    if-gtz v2, :cond_1

    .line 2274
    iget-object v0, v0, Lf/d/c/g;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 2278
    :goto_1
    invoke-virtual {v1, v0}, Lf/d/c/h;->a(Ljava/util/concurrent/Future;)V

    move-object v0, v1

    .line 166
    goto :goto_0

    .line 2276
    :cond_1
    iget-object v0, v0, Lf/d/c/g;->b:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v4, v5, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lf/d/c/b$a;->a:Lf/d/e/l;

    invoke-virtual {v0}, Lf/d/e/l;->b()V

    .line 153
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lf/d/c/b$a;->a:Lf/d/e/l;

    .line 1059
    iget-boolean v0, v0, Lf/d/e/l;->b:Z

    .line 157
    return v0
.end method
