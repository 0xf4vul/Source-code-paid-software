.class final Lcom/google/android/gms/ads/internal/u$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/internal/qp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/u;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/u;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/u$3;->a:Lcom/google/android/gms/ads/internal/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 0
    .line 1000
    new-instance v0, Lcom/google/android/gms/internal/qp;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/u$3;->a:Lcom/google/android/gms/ads/internal/u;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/u;->c(Lcom/google/android/gms/ads/internal/u;)Lcom/google/android/gms/internal/zzqh;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqh;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/u$3;->a:Lcom/google/android/gms/ads/internal/u;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/u;->d(Lcom/google/android/gms/ads/internal/u;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/qp;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 0
    return-object v0
.end method
