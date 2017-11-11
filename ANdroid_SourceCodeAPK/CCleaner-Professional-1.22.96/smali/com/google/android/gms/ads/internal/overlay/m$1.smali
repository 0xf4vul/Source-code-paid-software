.class final Lcom/google/android/gms/ads/internal/overlay/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/overlay/m;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/overlay/m;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/m$1;->a:Lcom/google/android/gms/ads/internal/overlay/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/m$1;->a:Lcom/google/android/gms/ads/internal/overlay/m;

    const-string/jumbo v1, "surfaceCreated"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/m;->a(Lcom/google/android/gms/ads/internal/overlay/m;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
