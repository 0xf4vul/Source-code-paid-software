.class final Lcom/google/android/gms/internal/zx$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ado;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ado",
        "<",
        "Lcom/google/android/gms/internal/xe;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zx$3;->a:Lcom/google/android/gms/internal/zx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/xe;

    .line 1000
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/zx$3;->a:Lcom/google/android/gms/internal/zx;

    invoke-static {v1}, Lcom/google/android/gms/internal/zx;->a(Lcom/google/android/gms/internal/zx;)Lcom/google/android/gms/ads/internal/r;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/r;

    invoke-interface {p1, v0, v0, v0, v0}, Lcom/google/android/gms/internal/xe;->a(Lcom/google/android/gms/internal/sb;Lcom/google/android/gms/ads/internal/overlay/i;Lcom/google/android/gms/internal/vw;Lcom/google/android/gms/ads/internal/overlay/r;)V

    .line 0
    return-void
.end method
