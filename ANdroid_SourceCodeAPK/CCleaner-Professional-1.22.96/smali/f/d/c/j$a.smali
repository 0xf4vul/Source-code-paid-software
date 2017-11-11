.class final Lf/d/c/j$a;
.super Lf/g$a;
.source "SourceFile"

# interfaces
.implements Lf/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final b:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lf/d/c/j$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lf/j/a;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lf/g$a;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lf/d/c/j$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lf/d/c/j$a;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 47
    new-instance v0, Lf/j/a;

    invoke-direct {v0}, Lf/j/a;-><init>()V

    iput-object v0, p0, Lf/d/c/j$a;->c:Lf/j/a;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lf/d/c/j$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final a(Lf/c/a;)Lf/j;
    .locals 3

    .prologue
    .line 52
    .line 1173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2063
    iget-object v2, p0, Lf/d/c/j$a;->c:Lf/j/a;

    invoke-virtual {v2}, Lf/j/a;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2064
    invoke-static {}, Lf/j/d;->a()Lf/j;

    move-result-object v0

    .line 2076
    :goto_0
    return-object v0

    .line 2066
    :cond_0
    new-instance v2, Lf/d/c/j$b;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lf/d/c/j$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-direct {v2, p1, v0, v1}, Lf/d/c/j$b;-><init>(Lf/c/a;Ljava/lang/Long;I)V

    .line 2067
    iget-object v0, p0, Lf/d/c/j$a;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 2069
    iget-object v0, p0, Lf/d/c/j$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_3

    .line 2071
    :cond_1
    iget-object v0, p0, Lf/d/c/j$a;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d/c/j$b;

    .line 2072
    if-eqz v0, :cond_2

    .line 2073
    iget-object v0, v0, Lf/d/c/j$b;->a:Lf/c/a;

    invoke-interface {v0}, Lf/c/a;->a()V

    .line 2075
    :cond_2
    iget-object v0, p0, Lf/d/c/j$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2076
    invoke-static {}, Lf/j/d;->a()Lf/j;

    move-result-object v0

    goto :goto_0

    .line 2079
    :cond_3
    new-instance v0, Lf/d/c/j$a$1;

    invoke-direct {v0, p0, v2}, Lf/d/c/j$a$1;-><init>(Lf/d/c/j$a;Lf/d/c/j$b;)V

    invoke-static {v0}, Lf/j/d;->a(Lf/c/a;)Lf/j;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lf/d/c/j$a;->c:Lf/j/a;

    invoke-virtual {v0}, Lf/j/a;->b()V

    .line 93
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lf/d/c/j$a;->c:Lf/j/a;

    invoke-virtual {v0}, Lf/j/a;->c()Z

    move-result v0

    return v0
.end method
