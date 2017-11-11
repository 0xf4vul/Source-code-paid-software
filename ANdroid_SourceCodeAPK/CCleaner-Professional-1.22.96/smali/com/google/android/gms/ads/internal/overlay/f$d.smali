.class final Lcom/google/android/gms/ads/internal/overlay/f$d;
.super Lcom/google/android/gms/internal/ade;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/overlay/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/overlay/f;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/overlay/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/f$d;->a:Lcom/google/android/gms/ads/internal/overlay/f;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ade;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/overlay/f;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/f$d;-><init>(Lcom/google/android/gms/ads/internal/overlay/f;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->z()Lcom/google/android/gms/internal/ads;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/f$d;->a:Lcom/google/android/gms/ads/internal/overlay/f;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/f;->c:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->p:Lcom/google/android/gms/ads/internal/zzn;

    iget v1, v1, Lcom/google/android/gms/ads/internal/zzn;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/ads;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 0
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->g()Lcom/google/android/gms/internal/adk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/f$d;->a:Lcom/google/android/gms/ads/internal/overlay/f;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/overlay/f;->a(Lcom/google/android/gms/ads/internal/overlay/f;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/f$d;->a:Lcom/google/android/gms/ads/internal/overlay/f;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/f;->c:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->p:Lcom/google/android/gms/ads/internal/zzn;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/zzn;->d:Z

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/f$d;->a:Lcom/google/android/gms/ads/internal/overlay/f;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/f;->c:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->p:Lcom/google/android/gms/ads/internal/zzn;

    iget v4, v4, Lcom/google/android/gms/ads/internal/zzn;->e:F

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/adk;->a(Landroid/content/Context;Landroid/graphics/Bitmap;ZF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/f$d$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/overlay/f$d$1;-><init>(Lcom/google/android/gms/ads/internal/overlay/f$d;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final g_()V
    .locals 0

    return-void
.end method
