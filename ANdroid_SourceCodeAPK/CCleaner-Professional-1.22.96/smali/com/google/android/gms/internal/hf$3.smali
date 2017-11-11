.class final Lcom/google/android/gms/internal/hf$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ij$b;

.field final synthetic b:Lcom/google/android/gms/internal/hf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hf;Lcom/google/android/gms/internal/ij$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hf$3;->b:Lcom/google/android/gms/internal/hf;

    iput-object p2, p0, Lcom/google/android/gms/internal/hf$3;->a:Lcom/google/android/gms/internal/ij$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/na;)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/hf$3;->b:Lcom/google/android/gms/internal/hf;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/hf;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/hf$3$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/hf$3$1;-><init>(Lcom/google/android/gms/internal/hf$3;Lcom/google/android/gms/internal/na;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
