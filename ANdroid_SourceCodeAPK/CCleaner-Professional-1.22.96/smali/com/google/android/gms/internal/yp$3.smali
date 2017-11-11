.class final Lcom/google/android/gms/internal/yp$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/yp;->showInterstitial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field final synthetic b:Lcom/google/android/gms/internal/yp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/yp;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/yp$3;->b:Lcom/google/android/gms/internal/yp;

    iput-object p2, p0, Lcom/google/android/gms/internal/yp$3;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->c()Lcom/google/android/gms/ads/internal/overlay/g;

    iget-object v0, p0, Lcom/google/android/gms/internal/yp$3;->b:Lcom/google/android/gms/internal/yp;

    invoke-static {v0}, Lcom/google/android/gms/internal/yp;->b(Lcom/google/android/gms/internal/yp;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/yp$3;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 1000
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/g;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    .line 0
    return-void
.end method
