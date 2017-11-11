.class final Lcom/google/ads/mediation/a$a;
.super Lcom/google/android/gms/ads/mediation/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final n:Lcom/google/android/gms/ads/formats/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/c;)V
    .locals 2

    .prologue
    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/j;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/a$a;->n:Lcom/google/android/gms/ads/formats/c;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1000
    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/j;->e:Ljava/lang/String;

    .line 0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->c()Ljava/util/List;

    move-result-object v0

    .line 2000
    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/j;->f:Ljava/util/List;

    .line 0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3000
    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/j;->g:Ljava/lang/String;

    .line 0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->e()Lcom/google/android/gms/ads/formats/a$a;

    move-result-object v0

    .line 4000
    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/j;->h:Lcom/google/android/gms/ads/formats/a$a;

    .line 0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->f()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5000
    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/j;->i:Ljava/lang/String;

    .line 0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->g()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->g()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 6000
    iput-wide v0, p0, Lcom/google/android/gms/ads/mediation/j;->j:D

    .line 0
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->h()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->h()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7000
    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/j;->k:Ljava/lang/String;

    .line 0
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->i()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->i()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8000
    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/j;->l:Ljava/lang/String;

    .line 0
    :cond_2
    invoke-virtual {p0}, Lcom/google/ads/mediation/a$a;->a()V

    invoke-virtual {p0}, Lcom/google/ads/mediation/a$a;->b()V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->j()Lcom/google/android/gms/ads/g;

    move-result-object v0

    .line 9000
    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/j;->m:Lcom/google/android/gms/ads/g;

    .line 0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/ads/formats/NativeAdView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/ads/formats/NativeAdView;

    iget-object v0, p0, Lcom/google/ads/mediation/a$a;->n:Lcom/google/android/gms/ads/formats/c;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/a;)V

    :cond_0
    return-void
.end method
