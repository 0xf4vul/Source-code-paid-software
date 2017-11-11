.class public Lcom/google/android/gms/internal/zzeg;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzeg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:I

.field public final f:I

.field public final g:[Lcom/google/android/gms/internal/zzeg;

.field public final h:Z

.field public final i:Z

.field public j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/sk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/sk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzeg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    const/4 v2, 0x0

    const-string/jumbo v1, "interstitial_mb"

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v3, v2

    move v5, v2

    move v6, v2

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzeg;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/zzeg;ZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/ads/d;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzeg;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/d;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/google/android/gms/ads/d;)V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    aget-object v6, p2, v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzeg;->d:Z

    .line 1000
    iget v0, v6, Lcom/google/android/gms/ads/d;->k:I

    const/4 v3, -0x3

    if-ne v0, v3, :cond_2

    iget v0, v6, Lcom/google/android/gms/ads/d;->l:I

    const/4 v3, -0x4

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 0
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzeg;->i:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzeg;->i:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/ads/d;->a:Lcom/google/android/gms/ads/d;

    .line 2000
    iget v0, v0, Lcom/google/android/gms/ads/d;->k:I

    .line 0
    iput v0, p0, Lcom/google/android/gms/internal/zzeg;->e:I

    sget-object v0, Lcom/google/android/gms/ads/d;->a:Lcom/google/android/gms/ads/d;

    .line 3000
    iget v0, v0, Lcom/google/android/gms/ads/d;->l:I

    .line 0
    iput v0, p0, Lcom/google/android/gms/internal/zzeg;->b:I

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/zzeg;->e:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_2
    iget v3, p0, Lcom/google/android/gms/internal/zzeg;->b:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_5

    move v3, v1

    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    invoke-static {p1}, Lcom/google/android/gms/internal/aea;->e(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    invoke-static {p1}, Lcom/google/android/gms/internal/aea;->f(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 6000
    iget v4, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 0
    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    invoke-static {p1}, Lcom/google/android/gms/internal/aea;->g(Landroid/content/Context;)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/gms/internal/zzeg;->f:I

    :goto_4
    iget v4, p0, Lcom/google/android/gms/internal/zzeg;->f:I

    int-to-float v4, v4

    iget v5, v7, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    float-to-double v8, v4

    double-to-int v4, v8

    double-to-int v5, v8

    int-to-double v10, v5

    sub-double/2addr v8, v10

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v5, v8, v10

    if-ltz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    move v5, v4

    :goto_5
    if-eqz v3, :cond_8

    invoke-static {v7}, Lcom/google/android/gms/internal/zzeg;->c(Landroid/util/DisplayMetrics;)I

    move-result v4

    :goto_6
    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    invoke-static {v7, v4}, Lcom/google/android/gms/internal/aea;->a(Landroid/util/DisplayMetrics;I)I

    move-result v7

    iput v7, p0, Lcom/google/android/gms/internal/zzeg;->c:I

    if-nez v0, :cond_1

    if-eqz v3, :cond_9

    :cond_1
    const/16 v0, 0x1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "_as"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeg;->a:Ljava/lang/String;

    :goto_7
    array-length v0, p2

    if-le v0, v1, :cond_b

    array-length v0, p2

    new-array v0, v0, [Lcom/google/android/gms/internal/zzeg;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeg;->g:[Lcom/google/android/gms/internal/zzeg;

    move v0, v2

    :goto_8
    array-length v1, p2

    if-ge v0, v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg;->g:[Lcom/google/android/gms/internal/zzeg;

    new-instance v3, Lcom/google/android/gms/internal/zzeg;

    aget-object v4, p2, v0

    invoke-direct {v3, p1, v4}, Lcom/google/android/gms/internal/zzeg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_2
    move v0, v2

    .line 1000
    goto/16 :goto_0

    .line 4000
    :cond_3
    iget v0, v6, Lcom/google/android/gms/ads/d;->k:I

    .line 0
    iput v0, p0, Lcom/google/android/gms/internal/zzeg;->e:I

    .line 5000
    iget v0, v6, Lcom/google/android/gms/ads/d;->l:I

    .line 0
    iput v0, p0, Lcom/google/android/gms/internal/zzeg;->b:I

    goto/16 :goto_1

    :cond_4
    move v0, v2

    goto/16 :goto_2

    :cond_5
    move v3, v2

    goto/16 :goto_3

    .line 7000
    :cond_6
    iget v4, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 0
    iput v4, p0, Lcom/google/android/gms/internal/zzeg;->f:I

    goto :goto_4

    :cond_7
    iget v4, p0, Lcom/google/android/gms/internal/zzeg;->e:I

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    iget v5, p0, Lcom/google/android/gms/internal/zzeg;->e:I

    invoke-static {v7, v5}, Lcom/google/android/gms/internal/aea;->a(Landroid/util/DisplayMetrics;I)I

    move-result v5

    iput v5, p0, Lcom/google/android/gms/internal/zzeg;->f:I

    move v5, v4

    goto :goto_5

    :cond_8
    iget v4, p0, Lcom/google/android/gms/internal/zzeg;->b:I

    goto :goto_6

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzeg;->i:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "320x50_mb"

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeg;->a:Ljava/lang/String;

    goto :goto_7

    :cond_a
    invoke-virtual {v6}, Lcom/google/android/gms/ads/d;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeg;->a:Ljava/lang/String;

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeg;->g:[Lcom/google/android/gms/internal/zzeg;

    :cond_c
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzeg;->h:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzeg;->j:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzeg;[Lcom/google/android/gms/internal/zzeg;)V
    .locals 11

    iget-object v1, p1, Lcom/google/android/gms/internal/zzeg;->a:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/gms/internal/zzeg;->b:I

    iget v3, p1, Lcom/google/android/gms/internal/zzeg;->c:I

    iget-boolean v4, p1, Lcom/google/android/gms/internal/zzeg;->d:Z

    iget v5, p1, Lcom/google/android/gms/internal/zzeg;->e:I

    iget v6, p1, Lcom/google/android/gms/internal/zzeg;->f:I

    iget-boolean v8, p1, Lcom/google/android/gms/internal/zzeg;->h:Z

    iget-boolean v9, p1, Lcom/google/android/gms/internal/zzeg;->i:Z

    iget-boolean v10, p1, Lcom/google/android/gms/internal/zzeg;->j:Z

    move-object v0, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzeg;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/zzeg;ZZZ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/zzeg;ZZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeg;->a:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzeg;->b:I

    iput p3, p0, Lcom/google/android/gms/internal/zzeg;->c:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzeg;->d:Z

    iput p5, p0, Lcom/google/android/gms/internal/zzeg;->e:I

    iput p6, p0, Lcom/google/android/gms/internal/zzeg;->f:I

    iput-object p7, p0, Lcom/google/android/gms/internal/zzeg;->g:[Lcom/google/android/gms/internal/zzeg;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzeg;->h:Z

    iput-boolean p9, p0, Lcom/google/android/gms/internal/zzeg;->i:Z

    iput-boolean p10, p0, Lcom/google/android/gms/internal/zzeg;->j:Z

    return-void
.end method

.method public static a(Landroid/util/DisplayMetrics;)I
    .locals 1

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static a()Lcom/google/android/gms/internal/zzeg;
    .locals 11

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzeg;

    const-string/jumbo v1, "320x50_mb"

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzeg;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/zzeg;ZZZ)V

    return-object v0
.end method

.method public static b(Landroid/util/DisplayMetrics;)I
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzeg;->c(Landroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static b()Lcom/google/android/gms/internal/zzeg;
    .locals 11

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzeg;

    const-string/jumbo v1, "reward_mb"

    const/4 v4, 0x1

    const/4 v7, 0x0

    move v3, v2

    move v5, v2

    move v6, v2

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzeg;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/zzeg;ZZZ)V

    return-object v0
.end method

.method private static c(Landroid/util/DisplayMetrics;)I
    .locals 2

    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x190

    if-gt v0, v1, :cond_0

    const/16 v0, 0x20

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x2d0

    if-gt v0, v1, :cond_1

    const/16 v0, 0x32

    goto :goto_0

    :cond_1
    const/16 v0, 0x5a

    goto :goto_0
.end method


# virtual methods
.method public final c()Lcom/google/android/gms/ads/d;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/zzeg;->e:I

    iget v1, p0, Lcom/google/android/gms/internal/zzeg;->b:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeg;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/i;->a(IILjava/lang/String;)Lcom/google/android/gms/ads/d;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/sk;->a(Lcom/google/android/gms/internal/zzeg;Landroid/os/Parcel;I)V

    return-void
.end method
