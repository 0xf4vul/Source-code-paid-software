.class public final Lcom/google/android/gms/ads/internal/m;
.super Lcom/google/android/gms/ads/internal/c;

# interfaces
.implements Lcom/google/android/gms/internal/wf;
.implements Lcom/google/android/gms/internal/wl$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/m$a;
    }
.end annotation


# instance fields
.field protected transient l:Z

.field private m:I

.field private n:Z

.field private o:F

.field private final p:Lcom/google/android/gms/internal/acp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/ya;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/e;)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/ads/internal/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/ya;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/e;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/m;->m:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/m;->l:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->D()Lcom/google/android/gms/internal/acq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/acq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/acp;

    invoke-direct {v0, p1, p3}, Lcom/google/android/gms/internal/acp;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/m;->p:Lcom/google/android/gms/internal/acp;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->e:Lcom/google/android/gms/internal/zzqh;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqh;->a:Ljava/lang/String;

    const-string/jumbo v2, "gmob-apps"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/adj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/m;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/m;->n:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/ads/internal/m;)F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/m;->o:F

    return v0
.end method

.method private static b(Lcom/google/android/gms/internal/acw$a;)Lcom/google/android/gms/internal/acw$a;
    .locals 47

    .prologue
    .line 0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    invoke-static {v2}, Lcom/google/android/gms/internal/aba;->a(Lcom/google/android/gms/internal/zzmn;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "pubid"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/acw$a;->a:Lcom/google/android/gms/internal/zzmk;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzmk;->e:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    new-instance v2, Lcom/google/android/gms/internal/xp;

    const-string/jumbo v4, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/xp;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    move-object/from16 v45, v0

    new-instance v46, Lcom/google/android/gms/internal/xq;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sget-object v2, Lcom/google/android/gms/internal/ud;->bG:Lcom/google/android/gms/internal/ty;

    .line 13000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v2

    .line 0
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    move-object/from16 v0, v45

    iget-object v9, v0, Lcom/google/android/gms/internal/zzmn;->J:Ljava/util/List;

    move-object/from16 v0, v45

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zzmn;->K:Z

    const-string/jumbo v11, ""

    move-object/from16 v2, v46

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/xq;-><init>(Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/zzmn;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/acw$a;->a:Lcom/google/android/gms/internal/zzmk;

    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/google/android/gms/internal/zzmn;->b:Ljava/lang/String;

    move-object/from16 v0, v45

    iget-object v5, v0, Lcom/google/android/gms/internal/zzmn;->c:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, v45

    iget-wide v8, v0, Lcom/google/android/gms/internal/zzmn;->g:J

    const/4 v10, 0x1

    move-object/from16 v0, v45

    iget-wide v11, v0, Lcom/google/android/gms/internal/zzmn;->i:J

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, v45

    iget-wide v14, v0, Lcom/google/android/gms/internal/zzmn;->k:J

    move-object/from16 v0, v45

    iget v0, v0, Lcom/google/android/gms/internal/zzmn;->l:I

    move/from16 v16, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmn;->m:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v45

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzmn;->n:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmn;->o:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v45

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmn;->p:Z

    move/from16 v21, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmn;->q:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v45

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmn;->s:Z

    move/from16 v24, v0

    move-object/from16 v0, v45

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmn;->t:Z

    move/from16 v25, v0

    move-object/from16 v0, v45

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmn;->u:Z

    move/from16 v26, v0

    move-object/from16 v0, v45

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmn;->v:Z

    move/from16 v27, v0

    move-object/from16 v0, v45

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmn;->w:Z

    move/from16 v28, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmn;->z:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v45

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmn;->A:Z

    move/from16 v30, v0

    move-object/from16 v0, v45

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmn;->B:Z

    move/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v33

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v34

    move-object/from16 v0, v45

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmn;->F:Z

    move/from16 v35, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmn;->G:Lcom/google/android/gms/internal/zzmp;

    move-object/from16 v36, v0

    move-object/from16 v0, v45

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmn;->H:Z

    move/from16 v37, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmn;->I:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmn;->J:Ljava/util/List;

    move-object/from16 v39, v0

    move-object/from16 v0, v45

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmn;->K:Z

    move/from16 v40, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmn;->L:Ljava/lang/String;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmn;->N:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v45

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmn;->O:Z

    move/from16 v44, v0

    move-object/from16 v0, v45

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmn;->P:Z

    move/from16 v45, v0

    invoke-direct/range {v2 .. v45}, Lcom/google/android/gms/internal/zzmn;-><init>(Lcom/google/android/gms/internal/zzmk;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZLcom/google/android/gms/internal/zzoo;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzmp;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/internal/zzor;Ljava/lang/String;ZZ)V

    new-instance v4, Lcom/google/android/gms/internal/acw$a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/acw$a;->a:Lcom/google/android/gms/internal/zzmk;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/acw$a;->d:Lcom/google/android/gms/internal/zzeg;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/gms/internal/acw$a;->e:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/internal/acw$a;->f:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/internal/acw$a;->g:J

    const/4 v14, 0x0

    move-object v6, v2

    move-object/from16 v7, v46

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/internal/acw$a;-><init>(Lcom/google/android/gms/internal/zzmk;Lcom/google/android/gms/internal/zzmn;Lcom/google/android/gms/internal/xq;Lcom/google/android/gms/internal/zzeg;IJJLorg/json/JSONObject;)V

    :goto_0
    return-object v4

    :catch_0
    move-exception v2

    const-string/jumbo v3, "Unable to generate ad state for an interstitial ad with pooling."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v4, p0

    goto :goto_0
.end method


# virtual methods
.method public final G()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v5, -0x1

    .line 0
    const-string/jumbo v0, "showInterstitial must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    if-nez v0, :cond_1

    const-string/jumbo v0, "The interstitial has not loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ud;->br:Lcom/google/android/gms/internal/ty;

    .line 6000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/m;->l:Z

    if-nez v1, :cond_2

    const-string/jumbo v1, "It is not recommended to show an interstitial before onAdLoaded completes."

    invoke-static {v1}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "appid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "action"

    const-string/jumbo v3, "show_interstitial_before_load_finish"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/m;->a(Landroid/os/Bundle;)V

    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/adj;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "It is not recommended to show an interstitial when app is not in foreground."

    invoke-static {v1}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "appid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "action"

    const-string/jumbo v2, "show_interstitial_app_not_in_foreground"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/m;->a(Landroid/os/Bundle;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/w;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/acw;->n:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->p:Lcom/google/android/gms/internal/yb;

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->p:Lcom/google/android/gms/internal/yb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/yb;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Could not show interstitial."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/m;->O()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    if-nez v0, :cond_6

    const-string/jumbo v0, "The interstitial failed to load."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->p()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "The interstitial is already showing."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/aer;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->h:Lcom/google/android/gms/internal/qx;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/internal/zzeg;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/qx;->a(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/acw;)V

    .line 7000
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/acw;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lcom/google/android/gms/internal/rd;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-interface {v3}, Lcom/google/android/gms/internal/aer;->b()Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/rd;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/rd;->a(Lcom/google/android/gms/internal/rd$b;)V

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/w;->H:Z

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/adj;->f(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    :goto_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->z()Lcom/google/android/gms/internal/ads;

    move-result-object v0

    .line 9000
    if-nez v1, :cond_b

    const-string/jumbo v0, "Bitmap is null. Skipping putting into the Memory Map."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;)V

    move v0, v5

    .line 0
    :goto_4
    iput v0, p0, Lcom/google/android/gms/ads/internal/m;->m:I

    sget-object v0, Lcom/google/android/gms/internal/ud;->bU:Lcom/google/android/gms/internal/ty;

    .line 10000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    new-instance v0, Lcom/google/android/gms/ads/internal/m$a;

    iget v1, p0, Lcom/google/android/gms/ads/internal/m;->m:I

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/internal/m$a;-><init>(Lcom/google/android/gms/ads/internal/m;I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ade;->c()Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    iget-object v1, v0, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/internal/m$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/m$1;-><init>(Lcom/google/android/gms/ads/internal/m;Lcom/google/android/gms/internal/acw;)V

    .line 8000
    iput-object v2, v1, Lcom/google/android/gms/internal/aes;->e:Lcom/google/android/gms/internal/aes$c;

    goto :goto_2

    .line 0
    :cond_a
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_3

    .line 9000
    :cond_b
    iget-object v2, v0, Lcom/google/android/gms/internal/ads;->a:Ljava/util/Map;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    goto :goto_4

    .line 0
    :cond_c
    new-instance v0, Lcom/google/android/gms/ads/internal/zzn;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/w;->H:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/m;->N()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/zzn;-><init>(ZZZFI)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v1, v1, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/aer;->q()I

    move-result v6

    if-ne v6, v5, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget v6, v1, Lcom/google/android/gms/internal/acw;->g:I

    :cond_d
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v5, v2, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/w;->e:Lcom/google/android/gms/internal/zzqh;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v8, v2, Lcom/google/android/gms/internal/acw;->C:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/sb;Lcom/google/android/gms/ads/internal/overlay/i;Lcom/google/android/gms/ads/internal/overlay/r;Lcom/google/android/gms/internal/aer;ILcom/google/android/gms/internal/zzqh;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzn;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->c()Lcom/google/android/gms/ads/internal/overlay/g;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    .line 11000
    invoke-static {v0, v1, v10}, Lcom/google/android/gms/ads/internal/overlay/g;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    goto/16 :goto_0
.end method

.method protected final N()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_3

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_3

    iget v0, v2, Landroid/graphics/Rect;->top:I

    iget v2, v3, Landroid/graphics/Rect;->top:I

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final O()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->z()Lcom/google/android/gms/internal/ads;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/ads/internal/m;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 12000
    iget-object v0, v0, Lcom/google/android/gms/internal/ads;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/w;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/w;->a()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iput-boolean v2, v0, Lcom/google/android/gms/ads/internal/w;->H:Z

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/m;->l:Z

    :cond_0
    return-void
.end method

.method public final P()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->y:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->e:Lcom/google/android/gms/internal/zzqh;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqh;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v2, v2, Lcom/google/android/gms/internal/acw;->y:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/adj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/m;->v()V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/ads/internal/f;Lcom/google/android/gms/internal/acn;)Lcom/google/android/gms/internal/aer;
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->f()Lcom/google/android/gms/internal/aet;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/internal/zzeg;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v4, v3, Lcom/google/android/gms/ads/internal/w;->d:Lcom/google/android/gms/internal/ej;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v5, v3, Lcom/google/android/gms/ads/internal/w;->e:Lcom/google/android/gms/internal/zzqh;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/m;->a:Lcom/google/android/gms/internal/ul;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/m;->i:Lcom/google/android/gms/ads/internal/e;

    move v3, v2

    move-object v7, p0

    invoke-static/range {v0 .. v8}, Lcom/google/android/gms/internal/aet;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;ZZLcom/google/android/gms/internal/ej;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/ul;Lcom/google/android/gms/ads/internal/t;Lcom/google/android/gms/ads/internal/e;)Lcom/google/android/gms/internal/aer;

    move-result-object v11

    invoke-interface {v11}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ud;->ap:Lcom/google/android/gms/internal/ty;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v1

    .line 0
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v1, p0

    move-object v2, v10

    move-object v3, p0

    move-object v4, p0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p2

    move-object v9, v10

    move-object v10, p3

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/internal/aes;->a(Lcom/google/android/gms/internal/sb;Lcom/google/android/gms/ads/internal/overlay/i;Lcom/google/android/gms/internal/vw;Lcom/google/android/gms/ads/internal/overlay/r;ZLcom/google/android/gms/internal/wd;Lcom/google/android/gms/internal/wf;Lcom/google/android/gms/ads/internal/f;Lcom/google/android/gms/internal/yx;Lcom/google/android/gms/internal/acn;)V

    invoke-virtual {p0, v11}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/internal/xi;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/acw$a;->a:Lcom/google/android/gms/internal/zzmk;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmk;->v:Ljava/lang/String;

    invoke-interface {v11, v0}, Lcom/google/android/gms/internal/aer;->b(Ljava/lang/String;)V

    .line 3000
    invoke-interface {v11}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v0

    const-string/jumbo v1, "/reward"

    new-instance v2, Lcom/google/android/gms/internal/wl;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/wl;-><init>(Lcom/google/android/gms/internal/wl$a;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    .line 0
    return-object v11
.end method

.method public final a()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/c;->a()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->D()Lcom/google/android/gms/internal/acq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/acq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->p:Lcom/google/android/gms/internal/acp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/acp;->a(Z)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/ul;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ud;->aW:Lcom/google/android/gms/internal/ty;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/ul;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/acw$a;->e:I

    const/4 v3, -0x2

    if-eq v0, v3, :cond_1

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/ul;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/acw$a;->a:Lcom/google/android/gms/internal/zzmk;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmk;->c:Lcom/google/android/gms/internal/zzec;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzec;->m:Landroid/os/Bundle;

    const-string/jumbo v3, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v3, "gw"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    move v0, v2

    :goto_1
    iget-object v3, p1, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/zzmn;->h:Z

    if-nez v3, :cond_5

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/m;->b(Lcom/google/android/gms/internal/acw$a;)Lcom/google/android/gms/internal/acw$a;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/w;->k:Lcom/google/android/gms/internal/acw$a;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->k:Lcom/google/android/gms/internal/acw$a;

    invoke-super {p0, v0, p2}, Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/ul;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2
.end method

.method public final a(ZF)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/m;->n:Z

    iput p2, p0, Lcom/google/android/gms/ads/internal/m;->o:F

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/acw;Lcom/google/android/gms/internal/acw;)Z
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/internal/acw;Lcom/google/android/gms/internal/acw;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/w;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->E:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/google/android/gms/internal/acw;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->h:Lcom/google/android/gms/internal/qx;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/internal/zzeg;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->E:Landroid/view/View;

    invoke-virtual {v0, v1, p2, v2}, Lcom/google/android/gms/internal/qx;->a(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/acw;Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/acw;Z)Z
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/w;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->g()Lcom/google/android/gms/internal/adk;

    iget-object v0, p2, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-static {v0}, Lcom/google/android/gms/internal/adk;->a(Lcom/google/android/gms/internal/aer;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->e:Lcom/google/android/gms/ads/internal/s;

    .line 4000
    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/s;->b:Z

    .line 0
    return v0
.end method

.method public final a(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/ul;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "An interstitial is already loading. Aborting."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/ul;)Z

    move-result v0

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/internal/zzoo;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->z:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->e:Lcom/google/android/gms/internal/zzqh;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqh;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v2, v2, Lcom/google/android/gms/internal/acw;->z:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/adj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->x:Lcom/google/android/gms/internal/zzoo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object p1, v0, Lcom/google/android/gms/internal/acw;->x:Lcom/google/android/gms/internal/zzoo;

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/internal/zzoo;)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iput-boolean p1, v0, Lcom/google/android/gms/ads/internal/w;->H:Z

    return-void
.end method

.method public final d()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/m;->E()V

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/c;->d()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v1, v1, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v1, v1, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aes;->g()V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->D()Lcom/google/android/gms/internal/acq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/acq;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->D()Lcom/google/android/gms/internal/acq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/acq;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->D()Lcom/google/android/gms/internal/acq;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->b:Ljava/lang/String;

    .line 5000
    invoke-virtual {v4}, Lcom/google/android/gms/internal/acq;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    instance-of v5, v2, Landroid/app/Activity;

    if-eqz v5, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v3, v1

    :goto_0
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string/jumbo v5, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v1, "getInstance"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v5, v1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    const-string/jumbo v7, "setCurrentScreen"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/app/Activity;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v3, v7, v1

    const/4 v1, 0x2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->p:Lcom/google/android/gms/internal/acp;

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/acp;->a(Z)V

    :cond_2
    return-void

    .line 5000
    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "_"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "setCurrentScreen"

    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/acq;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected final r()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/m;->O()V

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/c;->r()V

    return-void
.end method

.method protected final u()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/c;->u()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/m;->l:Z

    return-void
.end method
