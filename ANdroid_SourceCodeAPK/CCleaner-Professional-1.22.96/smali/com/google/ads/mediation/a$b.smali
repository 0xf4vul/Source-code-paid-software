.class final Lcom/google/ads/mediation/a$b;
.super Lcom/google/android/gms/ads/mediation/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final l:Lcom/google/android/gms/ads/formats/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/d;)V
    .locals 1

    .prologue
    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/k;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/a$b;->l:Lcom/google/android/gms/ads/formats/d;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/d;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1000
    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/k;->e:Ljava/lang/String;

    .line 0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/d;->c()Ljava/util/List;

    move-result-object v0

    .line 2000
    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/k;->f:Ljava/util/List;

    .line 0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/d;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3000
    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/k;->g:Ljava/lang/String;

    .line 0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/d;->e()Lcom/google/android/gms/ads/formats/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/d;->e()Lcom/google/android/gms/ads/formats/a$a;

    move-result-object v0

    .line 4000
    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/k;->h:Lcom/google/android/gms/ads/formats/a$a;

    .line 0
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/d;->f()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5000
    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/k;->i:Ljava/lang/String;

    .line 0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/d;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6000
    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/k;->j:Ljava/lang/String;

    .line 0
    invoke-virtual {p0}, Lcom/google/ads/mediation/a$b;->a()V

    invoke-virtual {p0}, Lcom/google/ads/mediation/a$b;->b()V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/d;->h()Lcom/google/android/gms/ads/g;

    move-result-object v0

    .line 7000
    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/k;->k:Lcom/google/android/gms/ads/g;

    .line 0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/ads/formats/NativeAdView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/ads/formats/NativeAdView;

    iget-object v0, p0, Lcom/google/ads/mediation/a$b;->l:Lcom/google/android/gms/ads/formats/d;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/a;)V

    :cond_0
    return-void
.end method
