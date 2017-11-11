.class public final Lcom/google/android/gms/internal/aai;
.super Lcom/google/android/gms/internal/ade;

# interfaces
.implements Lcom/google/android/gms/internal/aaj$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/aai$a;
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/zzmk$a;

.field final b:Ljava/lang/Object;

.field final c:Landroid/content/Context;

.field d:Ljava/lang/Runnable;

.field e:Lcom/google/android/gms/internal/adl;

.field f:Lcom/google/android/gms/internal/zzmn;

.field g:Lcom/google/android/gms/internal/xq;

.field private final h:Lcom/google/android/gms/internal/aah$a;

.field private i:Lcom/google/android/gms/internal/zzmk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzmk$a;Lcom/google/android/gms/internal/aah$a;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ade;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aai;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/aai;->h:Lcom/google/android/gms/internal/aah$a;

    iput-object p1, p0, Lcom/google/android/gms/internal/aai;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/aai;->a:Lcom/google/android/gms/internal/zzmk$a;

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/zzmk;)Lcom/google/android/gms/internal/zzeg;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/aai$a;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmn;->A:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzmk;->d:Lcom/google/android/gms/internal/zzeg;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzeg;->g:[Lcom/google/android/gms/internal/zzeg;

    array-length v2, v1

    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v4, v1, v0

    iget-boolean v5, v4, Lcom/google/android/gms/internal/zzeg;->i:Z

    if-eqz v5, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzeg;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzmk;->d:Lcom/google/android/gms/internal/zzeg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzeg;->g:[Lcom/google/android/gms/internal/zzeg;

    invoke-direct {v0, v4, v1}, Lcom/google/android/gms/internal/zzeg;-><init>(Lcom/google/android/gms/internal/zzeg;[Lcom/google/android/gms/internal/zzeg;)V

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmn;->m:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/aai$a;

    const-string/jumbo v1, "The ad response must specify one of the supported ad sizes."

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/aai$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmn;->m:Ljava/lang/String;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    new-instance v1, Lcom/google/android/gms/internal/aai$a;

    const-string/jumbo v2, "Invalid ad size format from the ad response: "

    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmn;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/internal/aai$a;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    iget-object v0, p1, Lcom/google/android/gms/internal/zzmk;->d:Lcom/google/android/gms/internal/zzeg;

    iget-object v6, v0, Lcom/google/android/gms/internal/zzeg;->g:[Lcom/google/android/gms/internal/zzeg;

    array-length v7, v6

    move v2, v3

    :goto_3
    if-ge v2, v7, :cond_9

    aget-object v8, v6, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iget v0, v8, Lcom/google/android/gms/internal/zzeg;->e:I

    const/4 v9, -0x1

    if-ne v0, v9, :cond_6

    iget v0, v8, Lcom/google/android/gms/internal/zzeg;->f:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    :goto_4
    iget v9, v8, Lcom/google/android/gms/internal/zzeg;->b:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_7

    iget v9, v8, Lcom/google/android/gms/internal/zzeg;->c:I

    int-to-float v9, v9

    div-float v1, v9, v1

    float-to-int v1, v1

    :goto_5
    if-ne v4, v0, :cond_8

    if-ne v5, v1, :cond_8

    iget-boolean v0, v8, Lcom/google/android/gms/internal/zzeg;->i:Z

    if-nez v0, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/zzeg;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzmk;->d:Lcom/google/android/gms/internal/zzeg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzeg;->g:[Lcom/google/android/gms/internal/zzeg;

    invoke-direct {v0, v8, v1}, Lcom/google/android/gms/internal/zzeg;-><init>(Lcom/google/android/gms/internal/zzeg;[Lcom/google/android/gms/internal/zzeg;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/aai$a;

    const-string/jumbo v2, "Invalid ad size number from the ad response: "

    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmn;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/internal/aai$a;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    iget v0, v8, Lcom/google/android/gms/internal/zzeg;->e:I

    goto :goto_4

    :cond_7
    iget v1, v8, Lcom/google/android/gms/internal/zzeg;->b:I

    goto :goto_5

    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_9
    new-instance v1, Lcom/google/android/gms/internal/aai$a;

    const-string/jumbo v2, "The ad size from the ad response was not one of the requested sizes: "

    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmn;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/internal/aai$a;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 0
    const-string/jumbo v0, "AdLoaderBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/aai$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/aai$1;-><init>(Lcom/google/android/gms/internal/aai;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/aai;->d:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/aai;->d:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/ud;->bF:Lcom/google/android/gms/internal/ty;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v2

    sget-object v0, Lcom/google/android/gms/internal/ud;->bE:Lcom/google/android/gms/internal/ty;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->a:Lcom/google/android/gms/internal/zzmk$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmk$a;->b:Lcom/google/android/gms/internal/zzec;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzec;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->a:Lcom/google/android/gms/internal/zzmk$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmk$a;->b:Lcom/google/android/gms/internal/zzec;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzec;->c:Landroid/os/Bundle;

    const-string/jumbo v1, "_ad"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzmk;

    iget-object v1, p0, Lcom/google/android/gms/internal/aai;->a:Lcom/google/android/gms/internal/zzmk$a;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzmk;-><init>(Lcom/google/android/gms/internal/zzmk$a;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/aai;->i:Lcom/google/android/gms/internal/zzmk;

    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/aai;->i:Lcom/google/android/gms/internal/zzmk;

    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/aba;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzmk;Ljava/lang/String;)Lcom/google/android/gms/internal/zzmn;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aai;->a(Lcom/google/android/gms/internal/zzmn;)V

    :goto_0
    return-void

    :cond_0
    new-instance v7, Lcom/google/android/gms/internal/ael;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ael;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/aai$2;

    invoke-direct {v0, p0, v7}, Lcom/google/android/gms/internal/aai$2;-><init>(Lcom/google/android/gms/internal/aai;Lcom/google/android/gms/internal/aek;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/adi;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/aeh;

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->D()Lcom/google/android/gms/internal/acq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aai;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/acq;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->D()Lcom/google/android/gms/internal/acq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aai;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/acq;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->D()Lcom/google/android/gms/internal/acq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aai;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/acq;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->D()Lcom/google/android/gms/internal/acq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aai;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, v6}, Lcom/google/android/gms/internal/acq;->c(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzmk;

    iget-object v1, p0, Lcom/google/android/gms/internal/aai;->a:Lcom/google/android/gms/internal/zzmk$a;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzmk;-><init>(Lcom/google/android/gms/internal/zzmk$a;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/aai;->i:Lcom/google/android/gms/internal/zzmk;

    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->i:Lcom/google/android/gms/internal/zzmk;

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/aek;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final a(ILjava/lang/String;)V
    .locals 11

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/adf;->d(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzmn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->i:Lcom/google/android/gms/internal/zzmk;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/aai;->i:Lcom/google/android/gms/internal/zzmk;

    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/acw$a;

    iget-object v2, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget-object v3, p0, Lcom/google/android/gms/internal/aai;->g:Lcom/google/android/gms/internal/xq;

    const/4 v4, 0x0

    const-wide/16 v6, -0x1

    iget-object v5, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget-wide v8, v5, Lcom/google/android/gms/internal/zzmn;->n:J

    const/4 v10, 0x0

    move v5, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/acw$a;-><init>(Lcom/google/android/gms/internal/zzmk;Lcom/google/android/gms/internal/zzmn;Lcom/google/android/gms/internal/xq;Lcom/google/android/gms/internal/zzeg;IJJLorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/aai;->h:Lcom/google/android/gms/internal/aah$a;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/aah$a;->a(Lcom/google/android/gms/internal/acw$a;)V

    return-void

    :cond_1
    invoke-static {p2}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzmn;

    iget-object v1, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzmn;->k:J

    invoke-direct {v0, p1, v2, v3}, Lcom/google/android/gms/internal/zzmn;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/zzmk;

    iget-object v1, p0, Lcom/google/android/gms/internal/aai;->a:Lcom/google/android/gms/internal/zzmk$a;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzmk;-><init>(Lcom/google/android/gms/internal/zzmk$a;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_2
.end method

.method public final a(Lcom/google/android/gms/internal/zzmn;)V
    .locals 11

    .prologue
    const/4 v5, -0x2

    const/4 v8, -0x3

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 0
    const-string/jumbo v0, "Received ad response."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v6

    iget-object v2, p0, Lcom/google/android/gms/internal/aai;->b:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/internal/aai;->e:Lcom/google/android/gms/internal/adl;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/aai;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/zzmn;->H:Z

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/acz;->b(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    sget-object v0, Lcom/google/android/gms/internal/ud;->aW:Lcom/google/android/gms/internal/ty;

    .line 3000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmn;->P:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/aai;->i:Lcom/google/android/gms/internal/zzmk;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmk;->e:Ljava/lang/String;

    .line 6000
    const-string/jumbo v3, "admob"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5000
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    const-string/jumbo v4, "never_pool_slots"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "never_pool_slots"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 0
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget v0, v0, Lcom/google/android/gms/internal/zzmn;->e:I

    if-eq v0, v5, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget v0, v0, Lcom/google/android/gms/internal/zzmn;->e:I

    if-eq v0, v8, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/aai$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget v1, v1, Lcom/google/android/gms/internal/zzmn;->e:I

    const/16 v2, 0x42

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "There was a problem getting an ad response. ErrorCode: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget v2, v2, Lcom/google/android/gms/internal/zzmn;->e:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/aai$a;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_1
    .catch Lcom/google/android/gms/internal/aai$a; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 14000
    iget v1, v0, Lcom/google/android/gms/internal/aai$a;->a:I

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/aai$a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/aai;->a(ILjava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/aai;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/aai;->i:Lcom/google/android/gms/internal/zzmk;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmk;->e:Ljava/lang/String;

    .line 9000
    const-string/jumbo v3, "admob"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 8000
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    const-string/jumbo v4, "never_pool_slots"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "never_pool_slots"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 10000
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget v0, v0, Lcom/google/android/gms/internal/zzmn;->e:I

    if-eq v0, v8, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmn;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/aai$a;

    const-string/jumbo v1, "No fill from ad server."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/aai$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/aai;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/zzmn;->u:Z

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/acz;->a(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmn;->h:Z
    :try_end_3
    .catch Lcom/google/android/gms/internal/aai$a; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v0, :cond_6

    :try_start_4
    new-instance v0, Lcom/google/android/gms/internal/xq;

    iget-object v2, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmn;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/xq;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/aai;->g:Lcom/google/android/gms/internal/xq;

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/aai;->g:Lcom/google/android/gms/internal/xq;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/xq;->g:Z

    .line 11000
    iput-boolean v2, v0, Lcom/google/android/gms/internal/acz;->h:Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/android/gms/internal/aai$a; {:try_start_4 .. :try_end_4} :catch_0

    .line 10000
    :goto_2
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmn;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/ud;->cV:Lcom/google/android/gms/internal/ty;

    .line 13000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 10000
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "Received cookie from server. Setting webview cookie in CookieManager."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->g()Lcom/google/android/gms/internal/adk;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/aai;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/adk;->c(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v2, "googleads.g.doubleclick.net"

    iget-object v3, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzmn;->I:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 0
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->i:Lcom/google/android/gms/internal/zzmk;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmk;->d:Lcom/google/android/gms/internal/zzeg;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeg;->g:[Lcom/google/android/gms/internal/zzeg;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->i:Lcom/google/android/gms/internal/zzmk;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aai;->a(Lcom/google/android/gms/internal/zzmk;)Lcom/google/android/gms/internal/zzeg;
    :try_end_5
    .catch Lcom/google/android/gms/internal/aai$a; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v4

    :goto_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzmn;->v:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/acz;->b(Z)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzmn;->O:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/acz;->c(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmn;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    :try_start_6
    new-instance v10, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmn;->r:Ljava/lang/String;

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :goto_4
    new-instance v0, Lcom/google/android/gms/internal/acw$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/aai;->i:Lcom/google/android/gms/internal/zzmk;

    iget-object v2, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget-object v3, p0, Lcom/google/android/gms/internal/aai;->g:Lcom/google/android/gms/internal/xq;

    iget-object v8, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget-wide v8, v8, Lcom/google/android/gms/internal/zzmn;->n:J

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/acw$a;-><init>(Lcom/google/android/gms/internal/zzmk;Lcom/google/android/gms/internal/zzmn;Lcom/google/android/gms/internal/xq;Lcom/google/android/gms/internal/zzeg;IJJLorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/aai;->h:Lcom/google/android/gms/internal/aah$a;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/aah$a;->a(Lcom/google/android/gms/internal/acw$a;)V

    sget-object v0, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/aai;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 10000
    :catch_1
    move-exception v0

    :try_start_7
    const-string/jumbo v1, "Could not parse mediation config."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/google/android/gms/internal/aai$a;

    const-string/jumbo v2, "Could not parse mediation config: "

    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmn;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/aai$a;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/aai;->f:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzmn;->K:Z

    .line 12000
    iput-boolean v2, v0, Lcom/google/android/gms/internal/acz;->h:Z
    :try_end_7
    .catch Lcom/google/android/gms/internal/aai$a; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2

    .line 0
    :catch_2
    move-exception v0

    const-string/jumbo v2, "Error parsing the JSON for Active View."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    move-object v10, v1

    goto :goto_4

    :cond_8
    move-object v4, v1

    goto/16 :goto_3
.end method

.method public final g_()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/aai;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->e:Lcom/google/android/gms/internal/adl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aai;->e:Lcom/google/android/gms/internal/adl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/adl;->b()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
