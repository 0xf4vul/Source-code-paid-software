.class public final Lf/d/a/aa;
.super Lf/e/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/aa$f;,
        Lf/d/a/aa$a;,
        Lf/d/a/aa$c;,
        Lf/d/a/aa$g;,
        Lf/d/a/aa$d;,
        Lf/d/a/aa$b;,
        Lf/d/a/aa$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lf/e/b",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final e:Lf/c/d;


# instance fields
.field final b:Lf/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lf/d/a/aa$e",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final d:Lf/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c/d",
            "<+",
            "Lf/d/a/aa$d",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lf/d/a/aa$1;

    invoke-direct {v0}, Lf/d/a/aa$1;-><init>()V

    sput-object v0, Lf/d/a/aa;->e:Lf/c/d;

    return-void
.end method

.method private constructor <init>(Lf/d$a;Lf/d;Ljava/util/concurrent/atomic/AtomicReference;Lf/c/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d$a",
            "<TT;>;",
            "Lf/d",
            "<+TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lf/d/a/aa$e",
            "<TT;>;>;",
            "Lf/c/d",
            "<+",
            "Lf/d/a/aa$d",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lf/e/b;-><init>(Lf/d$a;)V

    .line 252
    iput-object p2, p0, Lf/d/a/aa;->b:Lf/d;

    .line 253
    iput-object p3, p0, Lf/d/a/aa;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 254
    iput-object p4, p0, Lf/d/a/aa;->d:Lf/c/d;

    .line 255
    return-void
.end method

.method public static a(Lf/d;I)Lf/e/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/d",
            "<+TT;>;I)",
            "Lf/e/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 145
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 1132
    sget-object v0, Lf/d/a/aa;->e:Lf/c/d;

    invoke-static {p0, v0}, Lf/d/a/aa;->a(Lf/d;Lf/c/d;)Lf/e/b;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lf/d/a/aa$2;

    invoke-direct {v0, p1}, Lf/d/a/aa$2;-><init>(I)V

    invoke-static {p0, v0}, Lf/d/a/aa;->a(Lf/d;Lf/c/d;)Lf/e/b;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lf/d;Lf/c/d;)Lf/e/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/d",
            "<+TT;>;",
            "Lf/c/d",
            "<+",
            "Lf/d/a/aa$d",
            "<TT;>;>;)",
            "Lf/e/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 202
    new-instance v1, Lf/d/a/aa$3;

    invoke-direct {v1, v0, p1}, Lf/d/a/aa$3;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lf/c/d;)V

    .line 246
    new-instance v2, Lf/d/a/aa;

    invoke-direct {v2, v1, p0, v0, p1}, Lf/d/a/aa;-><init>(Lf/d$a;Lf/d;Ljava/util/concurrent/atomic/AtomicReference;Lf/c/d;)V

    return-object v2
.end method

.method public static c(Lf/d;)Lf/e/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/d",
            "<+TT;>;)",
            "Lf/e/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 132
    sget-object v0, Lf/d/a/aa;->e:Lf/c/d;

    invoke-static {p0, v0}, Lf/d/a/aa;->a(Lf/d;Lf/c/d;)Lf/e/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b(Lf/c/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/c/b",
            "<-",
            "Lf/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 264
    :cond_0
    iget-object v0, p0, Lf/d/a/aa;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d/a/aa$e;

    .line 266
    if-eqz v0, :cond_1

    .line 2108
    iget-object v1, v0, Lf/i;->b:Lf/d/e/l;

    .line 3059
    iget-boolean v1, v1, Lf/d/e/l;->b:Z

    .line 266
    if-eqz v1, :cond_2

    .line 268
    :cond_1
    new-instance v2, Lf/d/a/aa$e;

    iget-object v1, p0, Lf/d/a/aa;->d:Lf/c/d;

    invoke-interface {v1}, Lf/c/d;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/d/a/aa$d;

    invoke-direct {v2, v1}, Lf/d/a/aa$e;-><init>(Lf/d/a/aa$d;)V

    .line 270
    invoke-virtual {v2}, Lf/d/a/aa$e;->a()V

    .line 272
    iget-object v1, p0, Lf/d/a/aa;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v2

    .line 281
    :cond_2
    iget-object v1, v0, Lf/d/a/aa$e;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lf/d/a/aa$e;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    .line 297
    :goto_0
    invoke-interface {p1, v0}, Lf/c/b;->call(Ljava/lang/Object;)V

    .line 298
    if-eqz v1, :cond_3

    .line 299
    iget-object v1, p0, Lf/d/a/aa;->b:Lf/d;

    invoke-virtual {v1, v0}, Lf/d;->a(Lf/i;)Lf/j;

    .line 301
    :cond_3
    return-void

    :cond_4
    move v1, v4

    .line 281
    goto :goto_0
.end method
