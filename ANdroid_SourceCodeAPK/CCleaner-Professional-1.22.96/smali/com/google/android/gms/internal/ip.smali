.class public abstract Lcom/google/android/gms/internal/ip;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic d:Z


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public b:Lcom/google/android/gms/internal/iq;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ip;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/ip;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ip;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ip;->c:Z

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/ip;
.end method

.method public abstract a(Lcom/google/android/gms/internal/kk;Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/kl;
.end method

.method public abstract a()Lcom/google/android/gms/internal/kr;
.end method

.method public abstract a(Lcom/google/android/gms/internal/kl;)V
.end method

.method public abstract a(Lcom/google/firebase/database/b;)V
.end method

.method public abstract a(Lcom/google/android/gms/internal/ip;)Z
.end method

.method public abstract a(Lcom/google/android/gms/internal/km$a;)Z
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ip;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ip;->b:Lcom/google/android/gms/internal/iq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ip;->b:Lcom/google/android/gms/internal/iq;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/iq;->a(Lcom/google/android/gms/internal/ip;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ip;->b:Lcom/google/android/gms/internal/iq;

    :cond_0
    return-void
.end method
