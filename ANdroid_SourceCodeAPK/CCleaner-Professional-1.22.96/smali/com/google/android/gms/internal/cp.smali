.class public Lcom/google/android/gms/internal/cp;
.super Lcom/google/android/gms/internal/dl;


# static fields
.field private static final t:Ljava/lang/String;


# instance fields
.field l:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/cp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/cp;->t:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, ""

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/dl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/bz;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lcom/google/android/gms/internal/cp;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/cp;->a(Landroid/content/Context;Z)V

    new-instance v0, Lcom/google/android/gms/internal/cp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cp;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Landroid/view/View;)Lcom/google/android/gms/internal/bv$a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/internal/fe;Lcom/google/android/gms/internal/bv$a;Lcom/google/android/gms/internal/bs$a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fe;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/cp;->l:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/cp;->l:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/fg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/gms/internal/bv$a;->aa:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/gms/internal/bv$a;->ab:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/android/gms/internal/cp;->l:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/gms/internal/bv$a;->ac:Ljava/lang/Boolean;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/cp;->l:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/cp;->b(Lcom/google/android/gms/internal/fe;Lcom/google/android/gms/internal/bv$a;Lcom/google/android/gms/internal/bs$a;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/cp;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected final b(Lcom/google/android/gms/internal/fe;Lcom/google/android/gms/internal/bv$a;Lcom/google/android/gms/internal/bs$a;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/fe;",
            "Lcom/google/android/gms/internal/bv$a;",
            "Lcom/google/android/gms/internal/bs$a;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1000
    iget-object v0, p1, Lcom/google/android/gms/internal/fe;->c:Ljava/util/concurrent/ExecutorService;

    .line 0
    if-nez v0, :cond_0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fe;->j()I

    move-result v5

    new-instance v0, Lcom/google/android/gms/internal/hm;

    .line 2000
    const-string/jumbo v2, "/kx5MRqcn95qiPsrER7Pf1KGd7PBYuhpMEcvRTG/50mqLTSF+WRdejBEGdAcneo9"

    .line 3000
    const-string/jumbo v3, "IV2mOci6PItyVa4+aS/m3tdGY5jvNepAthMITbGHa+4="

    move-object v1, p1

    move-object v4, p2

    .line 0
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hm;-><init>(Lcom/google/android/gms/internal/fe;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bv$a;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v6

    goto :goto_0
.end method
