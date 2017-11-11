.class public final Lcom/google/android/gms/internal/hf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ij;


# instance fields
.field final a:Ljava/util/concurrent/ScheduledExecutorService;

.field private final b:Lcom/google/firebase/b;


# direct methods
.method public constructor <init>(Lcom/google/firebase/b;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/hf;->b:Lcom/google/firebase/b;

    iput-object p2, p0, Lcom/google/android/gms/internal/hf;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ij$b;)V
    .locals 2

    .prologue
    .line 0
    .line 2000
    new-instance v0, Lcom/google/android/gms/internal/hf$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/hf$3;-><init>(Lcom/google/android/gms/internal/hf;Lcom/google/android/gms/internal/ij$b;)V

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/hf;->b:Lcom/google/firebase/b;

    .line 3000
    invoke-virtual {v1}, Lcom/google/firebase/b;->e()V

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/firebase/b;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 0
    return-void
.end method

.method public final a(ZLcom/google/android/gms/internal/ij$a;)V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/hf;->b:Lcom/google/firebase/b;

    .line 1000
    invoke-virtual {v0}, Lcom/google/firebase/b;->e()V

    iget-object v1, v0, Lcom/google/firebase/b;->e:Lcom/google/android/gms/internal/mz;

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/firebase/a;

    const-string/jumbo v1, "firebase-auth is not linked, please fall back to unauthenticated mode."

    invoke-direct {v0, v1}, Lcom/google/firebase/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/b/h;->a(Ljava/lang/Exception;)Lcom/google/android/gms/b/e;

    move-result-object v0

    .line 0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/hf;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/hf$2;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/hf$2;-><init>(Lcom/google/android/gms/internal/ij$a;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/b/e;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/b/c;)Lcom/google/android/gms/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/hf;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/hf$1;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/hf$1;-><init>(Lcom/google/android/gms/internal/ij$a;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/b/e;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/b/b;)Lcom/google/android/gms/b/e;

    return-void

    .line 1000
    :cond_0
    iget-object v0, v0, Lcom/google/firebase/b;->e:Lcom/google/android/gms/internal/mz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/mz;->a(Z)Lcom/google/android/gms/b/e;

    move-result-object v0

    goto :goto_0
.end method
