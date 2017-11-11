.class final Lf/d/c/a$b;
.super Lf/g$a;
.source "SourceFile"

# interfaces
.implements Lf/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Lf/j/b;

.field final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Lf/d/c/a$a;

.field private final d:Lf/d/c/a$c;


# direct methods
.method constructor <init>(Lf/d/c/a$a;)V
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0}, Lf/g$a;-><init>()V

    .line 178
    new-instance v0, Lf/j/b;

    invoke-direct {v0}, Lf/j/b;-><init>()V

    iput-object v0, p0, Lf/d/c/a$b;->a:Lf/j/b;

    .line 184
    iput-object p1, p0, Lf/d/c/a$b;->c:Lf/d/c/a$a;

    .line 185
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lf/d/c/a$b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 186
    invoke-virtual {p1}, Lf/d/c/a$a;->a()Lf/d/c/a$c;

    move-result-object v0

    iput-object v0, p0, Lf/d/c/a$b;->d:Lf/d/c/a$c;

    .line 187
    return-void
.end method


# virtual methods
.method public final a(Lf/c/a;)Lf/j;
    .locals 5

    .prologue
    .line 212
    .line 2217
    iget-object v0, p0, Lf/d/c/a$b;->a:Lf/j/b;

    .line 3051
    iget-boolean v0, v0, Lf/j/b;->a:Z

    .line 2217
    if-eqz v0, :cond_0

    .line 2219
    invoke-static {}, Lf/j/d;->a()Lf/j;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2222
    :cond_0
    iget-object v0, p0, Lf/d/c/a$b;->d:Lf/d/c/a$c;

    new-instance v1, Lf/d/c/a$b$1;

    invoke-direct {v1, p0, p1}, Lf/d/c/a$b$1;-><init>(Lf/d/c/a$b;Lf/c/a;)V

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lf/d/c/a$c;->a(Lf/c/a;JLjava/util/concurrent/TimeUnit;)Lf/d/c/h;

    move-result-object v0

    .line 2231
    iget-object v1, p0, Lf/d/c/a$b;->a:Lf/j/b;

    invoke-virtual {v1, v0}, Lf/j/b;->a(Lf/j;)V

    .line 2232
    iget-object v1, p0, Lf/d/c/a$b;->a:Lf/j/b;

    .line 3110
    iget-object v2, v0, Lf/d/c/h;->a:Lf/d/e/l;

    new-instance v3, Lf/d/c/h$b;

    invoke-direct {v3, v0, v1}, Lf/d/c/h$b;-><init>(Lf/d/c/h;Lf/j/b;)V

    invoke-virtual {v2, v3}, Lf/d/e/l;->a(Lf/j;)V

    goto :goto_0
.end method

.method public final a()V
    .locals 6

    .prologue
    .line 202
    iget-object v0, p0, Lf/d/c/a$b;->c:Lf/d/c/a$a;

    iget-object v1, p0, Lf/d/c/a$b;->d:Lf/d/c/a$c;

    .line 1127
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1103
    iget-wide v4, v0, Lf/d/c/a$a;->a:J

    add-long/2addr v2, v4

    .line 1250
    iput-wide v2, v1, Lf/d/c/a$c;->a:J

    .line 1105
    iget-object v0, v0, Lf/d/c/a$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 203
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lf/d/c/a$b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lf/d/c/a$b;->d:Lf/d/c/a$c;

    invoke-virtual {v0, p0}, Lf/d/c/a$c;->a(Lf/c/a;)Lf/j;

    .line 197
    :cond_0
    iget-object v0, p0, Lf/d/c/a$b;->a:Lf/j/b;

    invoke-virtual {v0}, Lf/j/b;->b()V

    .line 198
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lf/d/c/a$b;->a:Lf/j/b;

    .line 2051
    iget-boolean v0, v0, Lf/j/b;->a:Z

    .line 207
    return v0
.end method
