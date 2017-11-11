.class final Lcom/google/android/gms/ads/internal/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/b;->a(Lcom/google/android/gms/internal/zzec;Landroid/os/Bundle;Lcom/google/android/gms/internal/acy;)Lcom/google/android/gms/internal/zzmk$a;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/b$3;->a:Lcom/google/android/gms/ads/internal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b$3;->a:Lcom/google/android/gms/ads/internal/b;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->d:Lcom/google/android/gms/internal/ej;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/ej;->e:Lcom/google/android/gms/internal/cn;

    .line 1000
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b$3;->a:Lcom/google/android/gms/ads/internal/b;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/cn;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 0
    return-object v0
.end method
