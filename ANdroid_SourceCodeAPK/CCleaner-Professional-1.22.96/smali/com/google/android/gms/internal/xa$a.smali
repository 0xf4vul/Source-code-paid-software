.class final Lcom/google/android/gms/internal/xa$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/xa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/google/android/gms/ads/internal/m;

.field b:Lcom/google/android/gms/internal/zzec;

.field c:Lcom/google/android/gms/internal/wv;

.field d:J

.field e:Z

.field f:Z

.field final synthetic g:Lcom/google/android/gms/internal/xa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/xa;Lcom/google/android/gms/internal/wu;)V
    .locals 7

    .prologue
    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/xa$a;->g:Lcom/google/android/gms/internal/xa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    iget-object v3, p1, Lcom/google/android/gms/internal/xa;->c:Ljava/lang/String;

    .line 2000
    new-instance v0, Lcom/google/android/gms/ads/internal/m;

    iget-object v1, p2, Lcom/google/android/gms/internal/wu;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzeg;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzeg;-><init>()V

    iget-object v4, p2, Lcom/google/android/gms/internal/wu;->b:Lcom/google/android/gms/internal/ya;

    iget-object v5, p2, Lcom/google/android/gms/internal/wu;->c:Lcom/google/android/gms/internal/zzqh;

    iget-object v6, p2, Lcom/google/android/gms/internal/wu;->d:Lcom/google/android/gms/ads/internal/e;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/m;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/ya;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/e;)V

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/xa$a;->a:Lcom/google/android/gms/ads/internal/m;

    new-instance v0, Lcom/google/android/gms/internal/wv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/xa$a;->c:Lcom/google/android/gms/internal/wv;

    iget-object v0, p0, Lcom/google/android/gms/internal/xa$a;->c:Lcom/google/android/gms/internal/wv;

    iget-object v1, p0, Lcom/google/android/gms/internal/xa$a;->a:Lcom/google/android/gms/ads/internal/m;

    .line 3000
    new-instance v2, Lcom/google/android/gms/internal/wv$1;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/wv$1;-><init>(Lcom/google/android/gms/internal/wv;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/internal/ss;)V

    new-instance v2, Lcom/google/android/gms/internal/wv$2;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/wv$2;-><init>(Lcom/google/android/gms/internal/wv;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/internal/sy;)V

    new-instance v2, Lcom/google/android/gms/internal/wv$3;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/wv$3;-><init>(Lcom/google/android/gms/internal/wv;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/internal/zf;)V

    new-instance v2, Lcom/google/android/gms/internal/wv$4;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/wv$4;-><init>(Lcom/google/android/gms/internal/wv;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/internal/up;)V

    new-instance v2, Lcom/google/android/gms/internal/wv$5;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/wv$5;-><init>(Lcom/google/android/gms/internal/wv;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/internal/sr;)V

    new-instance v2, Lcom/google/android/gms/internal/wv$6;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/wv$6;-><init>(Lcom/google/android/gms/internal/wv;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/internal/abt;)V

    .line 0
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/xa;Lcom/google/android/gms/internal/wu;Lcom/google/android/gms/internal/zzec;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/xa$a;-><init>(Lcom/google/android/gms/internal/xa;Lcom/google/android/gms/internal/wu;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/xa$a;->b:Lcom/google/android/gms/internal/zzec;

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/xa$a;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/xa$a;->b:Lcom/google/android/gms/internal/zzec;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/xa$a;->b:Lcom/google/android/gms/internal/zzec;

    .line 5000
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/wx;->c(Lcom/google/android/gms/internal/zzec;)Lcom/google/android/gms/internal/zzec;

    move-result-object v0

    const-string/jumbo v2, "_skipMediation"

    .line 6000
    iget-object v3, v0, Lcom/google/android/gms/internal/zzec;->m:Landroid/os/Bundle;

    const-string/jumbo v4, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/internal/zzec;->c:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 0
    iget-object v2, p0, Lcom/google/android/gms/internal/xa$a;->a:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/internal/zzec;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/xa$a;->f:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/xa$a;->e:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/xa$a;->d:J

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/xa$a;->g:Lcom/google/android/gms/internal/xa;

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/internal/xa;->b:Lcom/google/android/gms/internal/zzec;

    goto :goto_1
.end method
