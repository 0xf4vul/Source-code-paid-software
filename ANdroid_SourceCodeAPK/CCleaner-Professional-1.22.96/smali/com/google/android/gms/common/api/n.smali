.class public abstract Lcom/google/android/gms/common/api/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/internal/aga;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/aga",
            "<TO;>;"
        }
    .end annotation
.end field

.field public final c:Landroid/os/Looper;

.field public final d:I

.field public final e:Lcom/google/android/gms/common/api/c;

.field protected final f:Lcom/google/android/gms/internal/x;

.field private final g:Landroid/content/Context;

.field private final h:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/gms/internal/ap;

.field private final j:Landroid/accounts/Account;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Landroid/os/Looper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Looper must not be null."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/n;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/n;->a:Lcom/google/android/gms/common/api/a;

    iput-object v1, p0, Lcom/google/android/gms/common/api/n;->h:Lcom/google/android/gms/common/api/a$a;

    iput-object p3, p0, Lcom/google/android/gms/common/api/n;->c:Landroid/os/Looper;

    .line 1000
    new-instance v0, Lcom/google/android/gms/internal/aga;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/aga;-><init>(Lcom/google/android/gms/common/api/a;)V

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/common/api/n;->b:Lcom/google/android/gms/internal/aga;

    new-instance v0, Lcom/google/android/gms/internal/y;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/y;-><init>(Lcom/google/android/gms/common/api/n;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/n;->e:Lcom/google/android/gms/common/api/c;

    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/x;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/n;->f:Lcom/google/android/gms/internal/x;

    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->f:Lcom/google/android/gms/internal/x;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/x;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 0
    iput v0, p0, Lcom/google/android/gms/common/api/n;->d:I

    new-instance v0, Lcom/google/android/gms/internal/afz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/afz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/n;->i:Lcom/google/android/gms/internal/ap;

    iput-object v1, p0, Lcom/google/android/gms/common/api/n;->j:Landroid/accounts/Account;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/n$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;TO;",
            "Lcom/google/android/gms/common/api/n$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Settings must not be null; use Settings.createDefault() instead."

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/n;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/n;->a:Lcom/google/android/gms/common/api/a;

    iput-object p3, p0, Lcom/google/android/gms/common/api/n;->h:Lcom/google/android/gms/common/api/a$a;

    iget-object v0, p4, Lcom/google/android/gms/common/api/n$a;->d:Landroid/os/Looper;

    iput-object v0, p0, Lcom/google/android/gms/common/api/n;->c:Landroid/os/Looper;

    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->a:Lcom/google/android/gms/common/api/a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/n;->h:Lcom/google/android/gms/common/api/a$a;

    .line 3000
    new-instance v2, Lcom/google/android/gms/internal/aga;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/aga;-><init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;)V

    .line 0
    iput-object v2, p0, Lcom/google/android/gms/common/api/n;->b:Lcom/google/android/gms/internal/aga;

    new-instance v0, Lcom/google/android/gms/internal/y;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/y;-><init>(Lcom/google/android/gms/common/api/n;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/n;->e:Lcom/google/android/gms/common/api/c;

    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/x;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/n;->f:Lcom/google/android/gms/internal/x;

    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->f:Lcom/google/android/gms/internal/x;

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/internal/x;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 0
    iput v0, p0, Lcom/google/android/gms/common/api/n;->d:I

    iget-object v0, p4, Lcom/google/android/gms/common/api/n$a;->b:Lcom/google/android/gms/internal/ap;

    iput-object v0, p0, Lcom/google/android/gms/common/api/n;->i:Lcom/google/android/gms/internal/ap;

    iget-object v0, p4, Lcom/google/android/gms/common/api/n$a;->c:Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/gms/common/api/n;->j:Landroid/accounts/Account;

    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->f:Lcom/google/android/gms/internal/x;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/common/api/n;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/internal/ap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;TO;",
            "Lcom/google/android/gms/internal/ap;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 0
    new-instance v0, Lcom/google/android/gms/common/api/n$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/n$a$a;-><init>()V

    .line 5000
    const-string/jumbo v1, "StatusExceptionMapper must not be null."

    invoke-static {p4, v1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, v0, Lcom/google/android/gms/common/api/n$a$a;->a:Lcom/google/android/gms/internal/ap;

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n$a$a;->a()Lcom/google/android/gms/common/api/n$a;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/api/n;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/n$a;)V

    return-void
.end method

.method private a(ILcom/google/android/gms/internal/as;)Lcom/google/android/gms/b/e;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/a$c;",
            ">(I",
            "Lcom/google/android/gms/internal/as",
            "<TA;TTResult;>;)",
            "Lcom/google/android/gms/b/e",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 0
    new-instance v0, Lcom/google/android/gms/b/f;

    invoke-direct {v0}, Lcom/google/android/gms/b/f;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/common/api/n;->f:Lcom/google/android/gms/internal/x;

    iget-object v2, p0, Lcom/google/android/gms/common/api/n;->i:Lcom/google/android/gms/internal/ap;

    .line 7000
    new-instance v3, Lcom/google/android/gms/internal/afy$c;

    invoke-direct {v3, p1, p2, v0, v2}, Lcom/google/android/gms/internal/afy$c;-><init>(ILcom/google/android/gms/internal/as;Lcom/google/android/gms/b/f;Lcom/google/android/gms/internal/ap;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/x;->i:Landroid/os/Handler;

    iget-object v4, v1, Lcom/google/android/gms/internal/x;->i:Landroid/os/Handler;

    const/4 v5, 0x4

    new-instance v6, Lcom/google/android/gms/internal/aj;

    iget-object v1, v1, Lcom/google/android/gms/internal/x;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {v6, v3, v1, p0}, Lcom/google/android/gms/internal/aj;-><init>(Lcom/google/android/gms/internal/afy;ILcom/google/android/gms/common/api/n;)V

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 8000
    iget-object v0, v0, Lcom/google/android/gms/b/f;->a:Lcom/google/android/gms/b/n;

    .line 0
    return-object v0
.end method

.method private a(ILcom/google/android/gms/internal/f$a;)Lcom/google/android/gms/internal/f$a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$c;",
            "T:",
            "Lcom/google/android/gms/internal/f$a",
            "<+",
            "Lcom/google/android/gms/common/api/g;",
            "TA;>;>(ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/f$a;->d()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->f:Lcom/google/android/gms/internal/x;

    .line 6000
    new-instance v1, Lcom/google/android/gms/internal/afy$b;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/afy$b;-><init>(ILcom/google/android/gms/internal/f$a;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/x;->i:Landroid/os/Handler;

    iget-object v3, v0, Lcom/google/android/gms/internal/x;->i:Landroid/os/Handler;

    const/4 v4, 0x4

    new-instance v5, Lcom/google/android/gms/internal/aj;

    iget-object v0, v0, Lcom/google/android/gms/internal/x;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {v5, v1, v0, p0}, Lcom/google/android/gms/internal/aj;-><init>(Lcom/google/android/gms/internal/afy;ILcom/google/android/gms/common/api/n;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 0
    return-object p2
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/as;)Lcom/google/android/gms/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/a$c;",
            ">(",
            "Lcom/google/android/gms/internal/as",
            "<TA;TTResult;>;)",
            "Lcom/google/android/gms/b/e",
            "<TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/n;->a(ILcom/google/android/gms/internal/as;)Lcom/google/android/gms/b/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Looper;Lcom/google/android/gms/internal/x$a;)Lcom/google/android/gms/common/api/a$f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/internal/x$a",
            "<TO;>;)",
            "Lcom/google/android/gms/common/api/a$f;"
        }
    .end annotation

    .prologue
    .line 0
    new-instance v0, Lcom/google/android/gms/common/api/c$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/n;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/c$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/n;->j:Landroid/accounts/Account;

    .line 9000
    iput-object v1, v0, Lcom/google/android/gms/common/api/c$a;->a:Landroid/accounts/Account;

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c$a;->a()Lcom/google/android/gms/common/internal/o;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->a:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->a()Lcom/google/android/gms/common/api/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/n;->g:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/common/api/n;->h:Lcom/google/android/gms/common/api/a$a;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/a$b;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/o;Ljava/lang/Object;Lcom/google/android/gms/common/api/c$b;Lcom/google/android/gms/common/api/c$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/internal/ao;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ao;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ao;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/f$a;)Lcom/google/android/gms/internal/f$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$c;",
            "T:",
            "Lcom/google/android/gms/internal/f$a",
            "<+",
            "Lcom/google/android/gms/common/api/g;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/n;->a(ILcom/google/android/gms/internal/f$a;)Lcom/google/android/gms/internal/f$a;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/internal/as;)Lcom/google/android/gms/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/a$c;",
            ">(",
            "Lcom/google/android/gms/internal/as",
            "<TA;TTResult;>;)",
            "Lcom/google/android/gms/b/e",
            "<TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/n;->a(ILcom/google/android/gms/internal/as;)Lcom/google/android/gms/b/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/internal/f$a;)Lcom/google/android/gms/internal/f$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$c;",
            "T:",
            "Lcom/google/android/gms/internal/f$a",
            "<+",
            "Lcom/google/android/gms/common/api/g;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/n;->a(ILcom/google/android/gms/internal/f$a;)Lcom/google/android/gms/internal/f$a;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/google/android/gms/internal/f$a;)Lcom/google/android/gms/internal/f$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$c;",
            "T:",
            "Lcom/google/android/gms/internal/f$a",
            "<+",
            "Lcom/google/android/gms/common/api/g;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/n;->a(ILcom/google/android/gms/internal/f$a;)Lcom/google/android/gms/internal/f$a;

    move-result-object v0

    return-object v0
.end method
