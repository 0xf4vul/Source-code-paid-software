.class final Lcom/google/android/gms/ads/internal/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/p;->a(Ljava/lang/String;Lcom/google/android/gms/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/google/android/gms/ads/internal/p;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/p;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/p$1;->b:Lcom/google/android/gms/ads/internal/p;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/p$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    new-instance v0, Lcom/google/android/gms/ads/internal/p$1$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/p$1$1;-><init>(Lcom/google/android/gms/ads/internal/p$1;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/adj;->a(Ljava/lang/Runnable;)V

    return-void
.end method
