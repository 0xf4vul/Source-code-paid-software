.class public final Lcom/google/android/gms/ads/internal/overlay/p;
.super Lcom/google/android/gms/ads/internal/overlay/l;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/aer;ZLcom/google/android/gms/internal/ul;)Lcom/google/android/gms/ads/internal/overlay/k;
    .locals 8

    .prologue
    .line 0
    .line 1000
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2000
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1000
    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 0
    :goto_0
    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1000
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 0
    :cond_2
    new-instance v6, Lcom/google/android/gms/ads/internal/overlay/e;

    .line 3000
    invoke-interface {p2}, Lcom/google/android/gms/internal/aer;->k()Lcom/google/android/gms/internal/zzeg;

    move-result-object v0

    iget-boolean v7, v0, Lcom/google/android/gms/internal/zzeg;->d:Z

    .line 0
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/aa;

    invoke-interface {p2}, Lcom/google/android/gms/internal/aer;->o()Lcom/google/android/gms/internal/zzqh;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/android/gms/internal/aer;->v()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/aer;->x()Lcom/google/android/gms/internal/uj;

    move-result-object v5

    move-object v1, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/aa;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Ljava/lang/String;Lcom/google/android/gms/internal/ul;Lcom/google/android/gms/internal/uj;)V

    invoke-direct {v6, p1, p3, v7, v0}, Lcom/google/android/gms/ads/internal/overlay/e;-><init>(Landroid/content/Context;ZZLcom/google/android/gms/ads/internal/overlay/aa;)V

    move-object v0, v6

    goto :goto_1
.end method
