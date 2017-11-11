.class final Lcom/google/android/gms/ads/internal/m$a;
.super Lcom/google/android/gms/internal/ade;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/m;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/m;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/m$a;->a:Lcom/google/android/gms/ads/internal/m;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ade;-><init>()V

    iput p2, p0, Lcom/google/android/gms/ads/internal/m$a;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    const/4 v6, -0x1

    new-instance v0, Lcom/google/android/gms/ads/internal/zzn;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m$a;->a:Lcom/google/android/gms/ads/internal/m;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/w;->H:Z

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/m$a;->a:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/m;->N()Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/m$a;->a:Lcom/google/android/gms/ads/internal/m;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/ads/internal/m;)Z

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/m$a;->a:Lcom/google/android/gms/ads/internal/m;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/m;->b(Lcom/google/android/gms/ads/internal/m;)F

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/m$a;->a:Lcom/google/android/gms/ads/internal/m;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-boolean v5, v5, Lcom/google/android/gms/ads/internal/w;->H:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/google/android/gms/ads/internal/m$a;->b:I

    :goto_0
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/zzn;-><init>(ZZZFI)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m$a;->a:Lcom/google/android/gms/ads/internal/m;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v1, v1, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/aer;->q()I

    move-result v1

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m$a;->a:Lcom/google/android/gms/ads/internal/m;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget v6, v1, Lcom/google/android/gms/internal/acw;->g:I

    :goto_1
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/m$a;->a:Lcom/google/android/gms/ads/internal/m;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/m$a;->a:Lcom/google/android/gms/ads/internal/m;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/m$a;->a:Lcom/google/android/gms/ads/internal/m;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/m$a;->a:Lcom/google/android/gms/ads/internal/m;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v5, v5, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/m$a;->a:Lcom/google/android/gms/ads/internal/m;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/w;->e:Lcom/google/android/gms/internal/zzqh;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/m$a;->a:Lcom/google/android/gms/ads/internal/m;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v8, v8, Lcom/google/android/gms/internal/acw;->C:Ljava/lang/String;

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/sb;Lcom/google/android/gms/ads/internal/overlay/i;Lcom/google/android/gms/ads/internal/overlay/r;Lcom/google/android/gms/internal/aer;ILcom/google/android/gms/internal/zzqh;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzn;)V

    sget-object v0, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/m$a$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/ads/internal/m$a$1;-><init>(Lcom/google/android/gms/ads/internal/m$a;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    move v5, v6

    goto :goto_0

    :cond_1
    move v6, v1

    goto :goto_1
.end method

.method public final g_()V
    .locals 0

    return-void
.end method
