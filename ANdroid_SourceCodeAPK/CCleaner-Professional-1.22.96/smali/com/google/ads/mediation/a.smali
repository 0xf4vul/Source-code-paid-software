.class public abstract Lcom/google/ads/mediation/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/a/a/b;
.implements Lcom/google/android/gms/ads/mediation/c;
.implements Lcom/google/android/gms/ads/mediation/g;
.implements Lcom/google/android/gms/internal/aff;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/a$b;,
        Lcom/google/ads/mediation/a$a;,
        Lcom/google/ads/mediation/a$e;,
        Lcom/google/ads/mediation/a$d;,
        Lcom/google/ads/mediation/a$c;
    }
.end annotation


# static fields
.field public static final AD_UNIT_ID_PARAMETER:Ljava/lang/String; = "pubid"


# instance fields
.field protected zzcD:Lcom/google/android/gms/ads/AdView;

.field protected zzcE:Lcom/google/android/gms/ads/f;

.field private zzcF:Lcom/google/android/gms/ads/b;

.field private zzcG:Landroid/content/Context;

.field private zzcH:Lcom/google/android/gms/ads/f;

.field private zzcI:Lcom/google/android/gms/ads/a/a/c;

.field final zzcJ:Lcom/google/android/gms/ads/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/mediation/a$1;

    invoke-direct {v0, p0}, Lcom/google/ads/mediation/a$1;-><init>(Lcom/google/ads/mediation/a;)V

    iput-object v0, p0, Lcom/google/ads/mediation/a;->zzcJ:Lcom/google/android/gms/ads/a/c;

    return-void
.end method

.method static synthetic zza(Lcom/google/ads/mediation/a;)Lcom/google/android/gms/ads/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/a;->zzcI:Lcom/google/android/gms/ads/a/a/c;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/ads/mediation/a;Lcom/google/android/gms/ads/f;)Lcom/google/android/gms/ads/f;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/a;->zzcH:Lcom/google/android/gms/ads/f;

    return-object p1
.end method


# virtual methods
.method public getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "pubid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/a;->zzcD:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method public getInterstitialAdapterInfo()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 0
    new-instance v0, Lcom/google/android/gms/ads/mediation/b$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/mediation/b$a;-><init>()V

    .line 22000
    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/ads/mediation/b$a;->a:I

    .line 23000
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "capabilities"

    iget v0, v0, Lcom/google/android/gms/ads/mediation/b$a;->a:I

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 0
    return-object v1
.end method

.method public initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/a;Ljava/lang/String;Lcom/google/android/gms/ads/a/a/c;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/mediation/a;->zzcG:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/ads/mediation/a;->zzcI:Lcom/google/android/gms/ads/a/a/c;

    iget-object v0, p0, Lcom/google/ads/mediation/a;->zzcI:Lcom/google/android/gms/ads/a/a/c;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/a/a/c;->a(Lcom/google/android/gms/ads/a/a/b;)V

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/a;->zzcI:Lcom/google/android/gms/ads/a/a/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd(Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/ads/mediation/a;->zzcG:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/a;->zzcI:Lcom/google/android/gms/ads/a/a/c;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "AdMobAdapter.loadAd called before initialize."

    invoke-static {v0}, Lcom/google/android/gms/internal/aeb;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/f;

    iget-object v1, p0, Lcom/google/ads/mediation/a;->zzcG:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/a;->zzcH:Lcom/google/android/gms/ads/f;

    iget-object v0, p0, Lcom/google/ads/mediation/a;->zzcH:Lcom/google/android/gms/ads/f;

    .line 24000
    iget-object v0, v0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/internal/tj;

    .line 25000
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/tj;->n:Z

    .line 0
    iget-object v0, p0, Lcom/google/ads/mediation/a;->zzcH:Lcom/google/android/gms/ads/f;

    invoke-virtual {p0, p2}, Lcom/google/ads/mediation/a;->getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/a;->zzcH:Lcom/google/android/gms/ads/f;

    iget-object v1, p0, Lcom/google/ads/mediation/a;->zzcJ:Lcom/google/android/gms/ads/a/c;

    .line 26000
    iget-object v0, v0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/internal/tj;

    .line 27000
    :try_start_0
    iput-object v1, v0, Lcom/google/android/gms/internal/tj;->m:Lcom/google/android/gms/ads/a/c;

    iget-object v2, v0, Lcom/google/android/gms/internal/tj;->e:Lcom/google/android/gms/internal/sw;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/google/android/gms/internal/tj;->e:Lcom/google/android/gms/internal/sw;

    if-eqz v1, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/abw;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/abw;-><init>(Lcom/google/android/gms/ads/a/c;)V

    :goto_1
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/sw;->a(Lcom/google/android/gms/internal/abt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/google/ads/mediation/a;->zzcH:Lcom/google/android/gms/ads/f;

    iget-object v1, p0, Lcom/google/ads/mediation/a;->zzcG:Landroid/content/Context;

    invoke-virtual {p0, v1, p1, p3, p2}, Lcom/google/ads/mediation/a;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/f;->a(Lcom/google/android/gms/ads/c;)V

    goto :goto_0

    .line 27000
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to set the AdListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/aeb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/ads/mediation/a;->zzcD:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/a;->zzcD:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->c()V

    iput-object v1, p0, Lcom/google/ads/mediation/a;->zzcD:Lcom/google/android/gms/ads/AdView;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/a;->zzcE:Lcom/google/android/gms/ads/f;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/ads/mediation/a;->zzcE:Lcom/google/android/gms/ads/f;

    :cond_1
    iget-object v0, p0, Lcom/google/ads/mediation/a;->zzcF:Lcom/google/android/gms/ads/b;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/google/ads/mediation/a;->zzcF:Lcom/google/android/gms/ads/b;

    :cond_2
    iget-object v0, p0, Lcom/google/ads/mediation/a;->zzcH:Lcom/google/android/gms/ads/f;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/google/ads/mediation/a;->zzcH:Lcom/google/android/gms/ads/f;

    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/a;->zzcD:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/a;->zzcD:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->b()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/a;->zzcD:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/a;->zzcD:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->a()V

    :cond_0
    return-void
.end method

.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/d;Landroid/os/Bundle;Lcom/google/android/gms/ads/d;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 0
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/a;->zzcD:Lcom/google/android/gms/ads/AdView;

    iget-object v0, p0, Lcom/google/ads/mediation/a;->zzcD:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/android/gms/ads/d;

    .line 17000
    iget v2, p4, Lcom/google/android/gms/ads/d;->k:I

    .line 18000
    iget v3, p4, Lcom/google/android/gms/ads/d;->l:I

    .line 0
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/ads/d;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/d;)V

    iget-object v0, p0, Lcom/google/ads/mediation/a;->zzcD:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p0, p3}, Lcom/google/ads/mediation/a;->getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/a;->zzcD:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/ads/mediation/a$c;

    invoke-direct {v1, p0, p2}, Lcom/google/ads/mediation/a$c;-><init>(Lcom/google/ads/mediation/a;Lcom/google/android/gms/ads/mediation/d;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/a;)V

    iget-object v0, p0, Lcom/google/ads/mediation/a;->zzcD:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p0, p1, p5, p6, p3}, Lcom/google/ads/mediation/a;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->a(Lcom/google/android/gms/ads/c;)V

    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/f;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 0
    new-instance v0, Lcom/google/android/gms/ads/f;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/a;->zzcE:Lcom/google/android/gms/ads/f;

    iget-object v0, p0, Lcom/google/ads/mediation/a;->zzcE:Lcom/google/android/gms/ads/f;

    invoke-virtual {p0, p3}, Lcom/google/ads/mediation/a;->getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/f;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/ads/mediation/a;->zzcE:Lcom/google/android/gms/ads/f;

    new-instance v0, Lcom/google/ads/mediation/a$d;

    invoke-direct {v0, p0, p2}, Lcom/google/ads/mediation/a$d;-><init>(Lcom/google/ads/mediation/a;Lcom/google/android/gms/ads/mediation/f;)V

    .line 19000
    iget-object v1, v2, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/internal/tj;

    .line 20000
    :try_start_0
    iput-object v0, v1, Lcom/google/android/gms/internal/tj;->c:Lcom/google/android/gms/ads/a;

    iget-object v3, v1, Lcom/google/android/gms/internal/tj;->e:Lcom/google/android/gms/internal/sw;

    if-eqz v3, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/internal/tj;->e:Lcom/google/android/gms/internal/sw;

    new-instance v3, Lcom/google/android/gms/internal/sd;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/sd;-><init>(Lcom/google/android/gms/ads/a;)V

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/sw;->a(Lcom/google/android/gms/internal/ss;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19000
    :cond_0
    :goto_0
    iget-object v1, v2, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/internal/tj;

    check-cast v0, Lcom/google/android/gms/internal/sb;

    .line 21000
    :try_start_1
    iput-object v0, v1, Lcom/google/android/gms/internal/tj;->d:Lcom/google/android/gms/internal/sb;

    iget-object v2, v1, Lcom/google/android/gms/internal/tj;->e:Lcom/google/android/gms/internal/sw;

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/internal/tj;->e:Lcom/google/android/gms/internal/sw;

    new-instance v2, Lcom/google/android/gms/internal/sc;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/sc;-><init>(Lcom/google/android/gms/internal/sb;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/sw;->a(Lcom/google/android/gms/internal/sr;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 0
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/ads/mediation/a;->zzcE:Lcom/google/android/gms/ads/f;

    invoke-virtual {p0, p1, p4, p5, p3}, Lcom/google/ads/mediation/a;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/f;->a(Lcom/google/android/gms/ads/c;)V

    return-void

    .line 20000
    :catch_0
    move-exception v1

    const-string/jumbo v3, "Failed to set the AdListener."

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/aeb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 21000
    :catch_1
    move-exception v0

    const-string/jumbo v1, "Failed to set the AdClickListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/aeb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/h;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/l;Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Lcom/google/ads/mediation/a$e;

    invoke-direct {v0, p0, p2}, Lcom/google/ads/mediation/a$e;-><init>(Lcom/google/ads/mediation/a;Lcom/google/android/gms/ads/mediation/h;)V

    const-string/jumbo v1, "pubid"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/ads/mediation/a;->zza(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/ads/b$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/b$a;->a(Lcom/google/android/gms/ads/a;)Lcom/google/android/gms/ads/b$a;

    move-result-object v1

    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/l;->h()Lcom/google/android/gms/ads/formats/b;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/b$a;->a(Lcom/google/android/gms/ads/formats/b;)Lcom/google/android/gms/ads/b$a;

    :cond_0
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/l;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/b$a;->a(Lcom/google/android/gms/ads/formats/c$a;)Lcom/google/android/gms/ads/b$a;

    :cond_1
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/l;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/b$a;->a(Lcom/google/android/gms/ads/formats/d$a;)Lcom/google/android/gms/ads/b$a;

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/ads/b$a;->a()Lcom/google/android/gms/ads/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/mediation/a;->zzcF:Lcom/google/android/gms/ads/b;

    iget-object v0, p0, Lcom/google/ads/mediation/a;->zzcF:Lcom/google/android/gms/ads/b;

    invoke-virtual {p0, p1, p4, p5, p3}, Lcom/google/ads/mediation/a;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/b;->a(Lcom/google/android/gms/ads/c;)V

    return-void
.end method

.method public showInterstitial()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/a;->zzcE:Lcom/google/android/gms/ads/f;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/f;->a()V

    return-void
.end method

.method public showVideo()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/a;->zzcH:Lcom/google/android/gms/ads/f;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/f;->a()V

    return-void
.end method

.method protected abstract zza(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method zza(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/ads/b$a;
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/b$a;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/ads/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method zza(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 0
    new-instance v3, Lcom/google/android/gms/ads/c$a;

    invoke-direct {v3}, Lcom/google/android/gms/ads/c$a;-><init>()V

    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/a;->a()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1000
    iget-object v4, v3, Lcom/google/android/gms/ads/c$a;->a:Lcom/google/android/gms/internal/th$a;

    .line 2000
    iput-object v0, v4, Lcom/google/android/gms/internal/th$a;->g:Ljava/util/Date;

    .line 0
    :cond_0
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/a;->b()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3000
    iget-object v4, v3, Lcom/google/android/gms/ads/c$a;->a:Lcom/google/android/gms/internal/th$a;

    .line 4000
    iput v0, v4, Lcom/google/android/gms/internal/th$a;->i:I

    .line 0
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/a;->c()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5000
    iget-object v5, v3, Lcom/google/android/gms/ads/c$a;->a:Lcom/google/android/gms/internal/th$a;

    .line 6000
    iget-object v5, v5, Lcom/google/android/gms/internal/th$a;->a:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 0
    :cond_2
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/a;->d()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7000
    iget-object v4, v3, Lcom/google/android/gms/ads/c$a;->a:Lcom/google/android/gms/internal/th$a;

    .line 8000
    iput-object v0, v4, Lcom/google/android/gms/internal/th$a;->j:Landroid/location/Location;

    .line 0
    :cond_3
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/a;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    invoke-static {p1}, Lcom/google/android/gms/internal/aea;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 9000
    iget-object v4, v3, Lcom/google/android/gms/ads/c$a;->a:Lcom/google/android/gms/internal/th$a;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/th$a;->a(Ljava/lang/String;)V

    .line 0
    :cond_4
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/a;->e()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_5

    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/a;->e()I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    .line 10000
    :goto_1
    iget-object v4, v3, Lcom/google/android/gms/ads/c$a;->a:Lcom/google/android/gms/internal/th$a;

    .line 11000
    if-eqz v0, :cond_8

    :goto_2
    iput v1, v4, Lcom/google/android/gms/internal/th$a;->n:I

    .line 0
    :cond_5
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/a;->g()Z

    move-result v0

    .line 12000
    iget-object v1, v3, Lcom/google/android/gms/ads/c$a;->a:Lcom/google/android/gms/internal/th$a;

    .line 13000
    iput-boolean v0, v1, Lcom/google/android/gms/internal/th$a;->o:Z

    .line 0
    invoke-virtual {p0, p3, p4}, Lcom/google/ads/mediation/a;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 14000
    iget-object v2, v3, Lcom/google/android/gms/ads/c$a;->a:Lcom/google/android/gms/internal/th$a;

    .line 15000
    iget-object v2, v2, Lcom/google/android/gms/internal/th$a;->b:Landroid/os/Bundle;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 14000
    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "_emulatorLiveAds"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v3, Lcom/google/android/gms/ads/c$a;->a:Lcom/google/android/gms/internal/th$a;

    const-string/jumbo v1, "B3EEABB8EE11C2BE770B684D95219ECB"

    .line 16000
    iget-object v0, v0, Lcom/google/android/gms/internal/th$a;->d:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 0
    :cond_6
    invoke-virtual {v3}, Lcom/google/android/gms/ads/c$a;->a()Lcom/google/android/gms/ads/c;

    move-result-object v0

    return-object v0

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    move v1, v2

    .line 11000
    goto :goto_2
.end method
