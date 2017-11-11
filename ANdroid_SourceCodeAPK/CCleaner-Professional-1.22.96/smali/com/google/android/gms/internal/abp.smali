.class public final Lcom/google/android/gms/internal/abp;
.super Lcom/google/android/gms/ads/internal/b;

# interfaces
.implements Lcom/google/android/gms/internal/acd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# static fields
.field private static m:Lcom/google/android/gms/internal/abp;

.field private static final n:Lcom/google/android/gms/internal/xy;


# instance fields
.field final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ach;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/xy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/xy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/abp;->n:Lcom/google/android/gms/internal/xy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/e;Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/ya;Lcom/google/android/gms/internal/zzqh;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/ya;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/e;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/abp;->l:Ljava/util/Map;

    sput-object p0, Lcom/google/android/gms/internal/abp;->m:Lcom/google/android/gms/internal/abp;

    return-void
.end method

.method public static J()Lcom/google/android/gms/internal/abp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/abp;->m:Lcom/google/android/gms/internal/abp;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/abp;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/abp;->a(I)V

    return-void
.end method

.method private static b(Lcom/google/android/gms/internal/acw$a;)Lcom/google/android/gms/internal/acw$a;
    .locals 12

    .prologue
    .line 0
    const-string/jumbo v0, "Creating mediation ad response for non-mediated rewarded ad."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    invoke-static {v0}, Lcom/google/android/gms/internal/aba;->a(Lcom/google/android/gms/internal/zzmn;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "pubid"

    iget-object v3, p0, Lcom/google/android/gms/internal/acw$a;->a:Lcom/google/android/gms/internal/zzmk;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzmk;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/internal/xp;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "com.google.ads.mediation.admob.AdMobAdapter"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/xp;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    new-instance v11, Lcom/google/android/gms/internal/xq;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/xp;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/internal/ud;->bG:Lcom/google/android/gms/internal/ty;

    .line 11000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    const-string/jumbo v9, ""

    move-object v0, v11

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/xq;-><init>(Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/acw$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/acw$a;->a:Lcom/google/android/gms/internal/zzmk;

    iget-object v2, p0, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget-object v4, p0, Lcom/google/android/gms/internal/acw$a;->d:Lcom/google/android/gms/internal/zzeg;

    iget v5, p0, Lcom/google/android/gms/internal/acw$a;->e:I

    iget-wide v6, p0, Lcom/google/android/gms/internal/acw$a;->f:J

    iget-wide v8, p0, Lcom/google/android/gms/internal/acw$a;->g:J

    iget-object v10, p0, Lcom/google/android/gms/internal/acw$a;->h:Lorg/json/JSONObject;

    move-object v3, v11

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/acw$a;-><init>(Lcom/google/android/gms/internal/zzmk;Lcom/google/android/gms/internal/zzmn;Lcom/google/android/gms/internal/xq;Lcom/google/android/gms/internal/zzeg;IJJLorg/json/JSONObject;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Unable to generate ad state for non-mediated rewarded video."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10000
    new-instance v0, Lcom/google/android/gms/internal/acw$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/acw$a;->a:Lcom/google/android/gms/internal/zzmk;

    iget-object v2, p0, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/acw$a;->d:Lcom/google/android/gms/internal/zzeg;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/google/android/gms/internal/acw$a;->f:J

    iget-wide v8, p0, Lcom/google/android/gms/internal/acw$a;->g:J

    iget-object v10, p0, Lcom/google/android/gms/internal/acw$a;->h:Lorg/json/JSONObject;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/acw$a;-><init>(Lcom/google/android/gms/internal/zzmk;Lcom/google/android/gms/internal/zzmn;Lcom/google/android/gms/internal/xq;Lcom/google/android/gms/internal/zzeg;IJJLorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final K()V
    .locals 2

    .prologue
    .line 0
    const-string/jumbo v0, "showAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/abp;->L()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "The reward video has not loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/abp;->o:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->q:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/abp;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ach;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8000
    iget-object v1, v0, Lcom/google/android/gms/internal/ach;->a:Lcom/google/android/gms/internal/yb;

    .line 0
    if-eqz v1, :cond_0

    .line 9000
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ach;->a:Lcom/google/android/gms/internal/yb;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/internal/yb;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Could not call showVideo."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final L()Z
    .locals 1

    const-string/jumbo v0, "isLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->g:Lcom/google/android/gms/internal/ade;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->h:Lcom/google/android/gms/internal/adl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/abp;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final M()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/abp;->a(Lcom/google/android/gms/internal/acw;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/abp;->t()V

    return-void
.end method

.method public final N()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->o:Lcom/google/android/gms/internal/xp;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->x()Lcom/google/android/gms/internal/xv;

    iget-object v0, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->e:Lcom/google/android/gms/internal/zzqh;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqh;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v3, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/w;->b:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v5, v5, Lcom/google/android/gms/internal/acw;->o:Lcom/google/android/gms/internal/xp;

    iget-object v5, v5, Lcom/google/android/gms/internal/xp;->j:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/xv;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/acw;Ljava/lang/String;ZLjava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/abp;->v()V

    return-void
.end method

.method public final O()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/abp;->r()V

    return-void
.end method

.method public final P()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/abp;->e()V

    return-void
.end method

.method public final Q()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/abp;->s()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/ul;)V
    .locals 5

    .prologue
    .line 0
    iget v0, p1, Lcom/google/android/gms/internal/acw$a;->e:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/abp$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/abp$2;-><init>(Lcom/google/android/gms/internal/abp;Lcom/google/android/gms/internal/acw$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/w;->k:Lcom/google/android/gms/internal/acw$a;

    iget-object v0, p1, Lcom/google/android/gms/internal/acw$a;->c:Lcom/google/android/gms/internal/xq;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-static {p1}, Lcom/google/android/gms/internal/abp;->b(Lcom/google/android/gms/internal/acw$a;)Lcom/google/android/gms/internal/acw$a;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/w;->k:Lcom/google/android/gms/internal/acw$a;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/w;->F:I

    iget-object v1, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->d()Lcom/google/android/gms/internal/zr;

    iget-object v0, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->k:Lcom/google/android/gms/internal/acw$a;

    .line 1000
    new-instance v3, Lcom/google/android/gms/internal/acg;

    invoke-direct {v3, v0, v2, p0}, Lcom/google/android/gms/internal/acg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/abp;)V

    const-string/jumbo v2, "AdRenderer: "

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/google/android/gms/internal/adl;->c()Ljava/lang/Object;

    .line 0
    iput-object v3, v1, Lcom/google/android/gms/ads/internal/w;->h:Lcom/google/android/gms/internal/adl;

    goto :goto_0

    .line 1000
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/internal/zzoa;)V
    .locals 2

    const-string/jumbo v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzoa;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Invalid ad unit id. Aborting."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/abp$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/abp$1;-><init>(Lcom/google/android/gms/internal/abp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/abp;->o:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzoa;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/w;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzoa;->a:Lcom/google/android/gms/internal/zzec;

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/internal/b;->a(Lcom/google/android/gms/internal/zzec;)Z

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/acw;Lcom/google/android/gms/internal/acw;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final a(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/acw;Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/ach;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/abp;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ach;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/abp;->j:Lcom/google/android/gms/internal/ya;

    const-string/jumbo v2, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/abp;->n:Lcom/google/android/gms/internal/xy;

    move-object v2, v1

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ach;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ya;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/yb;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/internal/ach;-><init>(Lcom/google/android/gms/internal/yb;Lcom/google/android/gms/internal/acd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/abp;->l:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_2
    const-string/jumbo v3, "Fail to instantiate adapter "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, v1

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/internal/zzoo;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->o:Lcom/google/android/gms/internal/xp;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->x()Lcom/google/android/gms/internal/xv;

    iget-object v0, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->e:Lcom/google/android/gms/internal/zzqh;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqh;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v3, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/w;->b:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v5, v5, Lcom/google/android/gms/internal/acw;->o:Lcom/google/android/gms/internal/xp;

    iget-object v5, v5, Lcom/google/android/gms/internal/xp;->k:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/xv;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/acw;Ljava/lang/String;ZLjava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->r:Lcom/google/android/gms/internal/xq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->r:Lcom/google/android/gms/internal/xq;

    iget-object v0, v0, Lcom/google/android/gms/internal/xq;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/zzoo;

    iget-object v0, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->r:Lcom/google/android/gms/internal/xq;

    iget-object v0, v0, Lcom/google/android/gms/internal/xq;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v1, v1, Lcom/google/android/gms/internal/acw;->r:Lcom/google/android/gms/internal/xq;

    iget v1, v1, Lcom/google/android/gms/internal/xq;->k:I

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzoo;-><init>(Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/abp;->a(Lcom/google/android/gms/internal/zzoo;)V

    return-void
.end method

.method public final h()V
    .locals 4

    .prologue
    .line 0
    const-string/jumbo v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/abp;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/abp;->l:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ach;

    if-eqz v1, :cond_0

    .line 6000
    iget-object v3, v1, Lcom/google/android/gms/internal/ach;->a:Lcom/google/android/gms/internal/yb;

    .line 0
    if-eqz v3, :cond_0

    .line 7000
    iget-object v1, v1, Lcom/google/android/gms/internal/ach;->a:Lcom/google/android/gms/internal/yb;

    .line 0
    invoke-interface {v1}, Lcom/google/android/gms/internal/yb;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v1, "Fail to destroy adapter: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final m()V
    .locals 4

    .prologue
    .line 0
    const-string/jumbo v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/abp;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/abp;->l:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ach;

    if-eqz v1, :cond_0

    .line 2000
    iget-object v3, v1, Lcom/google/android/gms/internal/ach;->a:Lcom/google/android/gms/internal/yb;

    .line 0
    if-eqz v3, :cond_0

    .line 3000
    iget-object v1, v1, Lcom/google/android/gms/internal/ach;->a:Lcom/google/android/gms/internal/yb;

    .line 0
    invoke-interface {v1}, Lcom/google/android/gms/internal/yb;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v1, "Fail to pause adapter: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final n()V
    .locals 4

    .prologue
    .line 0
    const-string/jumbo v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/abp;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/abp;->l:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ach;

    if-eqz v1, :cond_0

    .line 4000
    iget-object v3, v1, Lcom/google/android/gms/internal/ach;->a:Lcom/google/android/gms/internal/yb;

    .line 0
    if-eqz v3, :cond_0

    .line 5000
    iget-object v1, v1, Lcom/google/android/gms/internal/ach;->a:Lcom/google/android/gms/internal/yb;

    .line 0
    invoke-interface {v1}, Lcom/google/android/gms/internal/yb;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v1, "Fail to resume adapter: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected final r()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/abp;->f:Lcom/google/android/gms/ads/internal/w;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/b;->r()V

    return-void
.end method
