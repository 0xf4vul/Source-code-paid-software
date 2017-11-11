.class public final Lf/d/c/b;
.super Lf/g;
.source "SourceFile"

# interfaces
.implements Lf/d/c/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/c/b$c;,
        Lf/d/c/b$a;,
        Lf/d/c/b$b;
    }
.end annotation


# static fields
.field static final b:I

.field static final c:Lf/d/c/b$c;

.field static final d:Lf/d/c/b$b;


# instance fields
.field final e:Ljava/util/concurrent/ThreadFactory;

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lf/d/c/b$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    const-string/jumbo v0, "rx.scheduler.max-computation-threads"

    invoke-static {v0, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 36
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    .line 38
    if-lez v0, :cond_0

    if-le v0, v1, :cond_1

    :cond_0
    move v0, v1

    .line 43
    :cond_1
    sput v0, Lf/d/c/b;->b:I

    .line 48
    new-instance v0, Lf/d/c/b$c;

    sget-object v1, Lf/d/e/j;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lf/d/c/b$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 49
    sput-object v0, Lf/d/c/b;->c:Lf/d/c/b$c;

    invoke-virtual {v0}, Lf/d/c/b$c;->b()V

    .line 53
    new-instance v0, Lf/d/c/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lf/d/c/b$b;-><init>(Ljava/util/concurrent/ThreadFactory;I)V

    sput-object v0, Lf/d/c/b;->d:Lf/d/c/b$b;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 3

    .prologue
    .line 95
    invoke-direct {p0}, Lf/g;-><init>()V

    .line 96
    iput-object p1, p0, Lf/d/c/b;->e:Ljava/util/concurrent/ThreadFactory;

    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lf/d/c/b;->d:Lf/d/c/b$b;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lf/d/c/b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1108
    new-instance v0, Lf/d/c/b$b;

    iget-object v1, p0, Lf/d/c/b;->e:Ljava/util/concurrent/ThreadFactory;

    sget v2, Lf/d/c/b;->b:I

    invoke-direct {v0, v1, v2}, Lf/d/c/b$b;-><init>(Ljava/util/concurrent/ThreadFactory;I)V

    .line 1109
    iget-object v1, p0, Lf/d/c/b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lf/d/c/b;->d:Lf/d/c/b$b;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1110
    invoke-virtual {v0}, Lf/d/c/b$b;->b()V

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lf/g$a;
    .locals 2

    .prologue
    .line 103
    new-instance v1, Lf/d/c/b$a;

    iget-object v0, p0, Lf/d/c/b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d/c/b$b;

    invoke-virtual {v0}, Lf/d/c/b$b;->a()Lf/d/c/b$c;

    move-result-object v0

    invoke-direct {v1, v0}, Lf/d/c/b$a;-><init>(Lf/d/c/b$c;)V

    return-object v1
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 117
    :cond_0
    iget-object v0, p0, Lf/d/c/b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d/c/b$b;

    .line 118
    sget-object v1, Lf/d/c/b;->d:Lf/d/c/b$b;

    if-ne v0, v1, :cond_1

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lf/d/c/b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lf/d/c/b;->d:Lf/d/c/b$b;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v0}, Lf/d/c/b$b;->b()V

    goto :goto_0
.end method
