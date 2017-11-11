.class public final Lf/d/c/a;
.super Lf/g;
.source "SourceFile"

# interfaces
.implements Lf/d/c/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/c/a$c;,
        Lf/d/c/a$b;,
        Lf/d/c/a$a;
    }
.end annotation


# static fields
.field static final b:Lf/d/c/a$c;

.field static final c:Lf/d/c/a$a;

.field private static final f:Ljava/util/concurrent/TimeUnit;


# instance fields
.field final d:Ljava/util/concurrent/ThreadFactory;

.field final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lf/d/c/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 28
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lf/d/c/a;->f:Ljava/util/concurrent/TimeUnit;

    .line 39
    new-instance v0, Lf/d/c/a$c;

    sget-object v1, Lf/d/e/j;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lf/d/c/a$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 40
    sput-object v0, Lf/d/c/a;->b:Lf/d/c/a$c;

    invoke-virtual {v0}, Lf/d/c/a$c;->b()V

    .line 42
    new-instance v0, Lf/d/c/a$a;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v4, v2, v3, v4}, Lf/d/c/a$a;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V

    .line 43
    sput-object v0, Lf/d/c/a;->c:Lf/d/c/a$a;

    invoke-virtual {v0}, Lf/d/c/a$a;->b()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 5

    .prologue
    .line 144
    invoke-direct {p0}, Lf/g;-><init>()V

    .line 145
    iput-object p1, p0, Lf/d/c/a;->d:Ljava/util/concurrent/ThreadFactory;

    .line 146
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lf/d/c/a;->c:Lf/d/c/a$a;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lf/d/c/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1152
    new-instance v0, Lf/d/c/a$a;

    iget-object v1, p0, Lf/d/c/a;->d:Ljava/util/concurrent/ThreadFactory;

    const-wide/16 v2, 0x3c

    sget-object v4, Lf/d/c/a;->f:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2, v3, v4}, Lf/d/c/a$a;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V

    .line 1154
    iget-object v1, p0, Lf/d/c/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lf/d/c/a;->c:Lf/d/c/a$a;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1155
    invoke-virtual {v0}, Lf/d/c/a$a;->b()V

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lf/g$a;
    .locals 2

    .prologue
    .line 174
    new-instance v1, Lf/d/c/a$b;

    iget-object v0, p0, Lf/d/c/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d/c/a$a;

    invoke-direct {v1, v0}, Lf/d/c/a$b;-><init>(Lf/d/c/a$a;)V

    return-object v1
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 161
    :cond_0
    iget-object v0, p0, Lf/d/c/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d/c/a$a;

    .line 162
    sget-object v1, Lf/d/c/a;->c:Lf/d/c/a$a;

    if-ne v0, v1, :cond_1

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v1, p0, Lf/d/c/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lf/d/c/a;->c:Lf/d/c/a$a;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v0}, Lf/d/c/a$a;->b()V

    goto :goto_0
.end method
