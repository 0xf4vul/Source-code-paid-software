.class final Lcom/google/android/gms/ads/internal/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/g;->a(Lcom/google/android/gms/internal/acw;Lcom/google/android/gms/internal/acw;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/g$1;->a:Lcom/google/android/gms/ads/internal/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g$1;->a:Lcom/google/android/gms/ads/internal/g;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/g$1;->a:Lcom/google/android/gms/ads/internal/g;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/g;->d(Lcom/google/android/gms/internal/acw;)V

    return-void
.end method
