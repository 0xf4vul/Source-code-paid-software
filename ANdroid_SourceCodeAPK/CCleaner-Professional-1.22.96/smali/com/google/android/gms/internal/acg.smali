.class public final Lcom/google/android/gms/internal/acg;
.super Lcom/google/android/gms/internal/ade;

# interfaces
.implements Lcom/google/android/gms/internal/acf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/abp;

.field private final b:Lcom/google/android/gms/internal/acw$a;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/Future;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/aca;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/acb;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/Object;

.field private final j:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/abp;)V
    .locals 6

    .prologue
    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ud;->aI:Lcom/google/android/gms/internal/ty;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/acg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/abp;J)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/abp;J)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ade;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/acg;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/acg;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/acg;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/acg;->g:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/acg;->h:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/acg;->i:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/acg;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/acg;->b:Lcom/google/android/gms/internal/acw$a;

    iput-object p3, p0, Lcom/google/android/gms/internal/acg;->a:Lcom/google/android/gms/internal/abp;

    iput-wide p4, p0, Lcom/google/android/gms/internal/acg;->j:J

    return-void
.end method

.method private a(ILjava/lang/String;Lcom/google/android/gms/internal/xp;)Lcom/google/android/gms/internal/acw;
    .locals 39

    new-instance v2, Lcom/google/android/gms/internal/acw;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/acg;->b:Lcom/google/android/gms/internal/acw$a;

    iget-object v3, v3, Lcom/google/android/gms/internal/acw$a;->a:Lcom/google/android/gms/internal/zzmk;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzmk;->c:Lcom/google/android/gms/internal/zzec;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/acg;->b:Lcom/google/android/gms/internal/acw$a;

    iget-object v5, v5, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzmn;->d:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/acg;->b:Lcom/google/android/gms/internal/acw$a;

    iget-object v6, v6, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget-object v7, v6, Lcom/google/android/gms/internal/zzmn;->f:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/acg;->b:Lcom/google/android/gms/internal/acw$a;

    iget-object v6, v6, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget-object v8, v6, Lcom/google/android/gms/internal/zzmn;->j:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/acg;->b:Lcom/google/android/gms/internal/acw$a;

    iget-object v6, v6, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget v9, v6, Lcom/google/android/gms/internal/zzmn;->l:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/acg;->b:Lcom/google/android/gms/internal/acw$a;

    iget-object v6, v6, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget-wide v10, v6, Lcom/google/android/gms/internal/zzmn;->k:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/acg;->b:Lcom/google/android/gms/internal/acw$a;

    iget-object v6, v6, Lcom/google/android/gms/internal/acw$a;->a:Lcom/google/android/gms/internal/zzmk;

    iget-object v12, v6, Lcom/google/android/gms/internal/zzmk;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/acg;->b:Lcom/google/android/gms/internal/acw$a;

    iget-object v6, v6, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v13, v6, Lcom/google/android/gms/internal/zzmn;->h:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/acg;->b:Lcom/google/android/gms/internal/acw$a;

    iget-object v0, v6, Lcom/google/android/gms/internal/acw$a;->c:Lcom/google/android/gms/internal/xq;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/acg;->b:Lcom/google/android/gms/internal/acw$a;

    iget-object v6, v6, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzmn;->i:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/acg;->b:Lcom/google/android/gms/internal/acw$a;

    iget-object v0, v6, Lcom/google/android/gms/internal/acw$a;->d:Lcom/google/android/gms/internal/zzeg;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/acg;->b:Lcom/google/android/gms/internal/acw$a;

    iget-object v6, v6, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzmn;->g:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/acg;->b:Lcom/google/android/gms/internal/acw$a;

    iget-wide v0, v6, Lcom/google/android/gms/internal/acw$a;->f:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/acg;->b:Lcom/google/android/gms/internal/acw$a;

    iget-object v6, v6, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzmn;->n:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/acg;->b:Lcom/google/android/gms/internal/acw$a;

    iget-object v6, v6, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzmn;->o:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/acg;->b:Lcom/google/android/gms/internal/acw$a;

    iget-object v0, v6, Lcom/google/android/gms/internal/acw$a;->h:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/acg;->b:Lcom/google/android/gms/internal/acw$a;

    iget-object v6, v6, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzmn;->C:Lcom/google/android/gms/internal/zzoo;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/acg;->b:Lcom/google/android/gms/internal/acw$a;

    iget-object v6, v6, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzmn;->D:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/acg;->b:Lcom/google/android/gms/internal/acw$a;

    iget-object v6, v6, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzmn;->E:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/acg;->b:Lcom/google/android/gms/internal/acw$a;

    iget-object v6, v6, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v0, v6, Lcom/google/android/gms/internal/zzmn;->F:Z

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/acg;->b:Lcom/google/android/gms/internal/acw$a;

    iget-object v6, v6, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzmn;->G:Lcom/google/android/gms/internal/zzmp;

    move-object/from16 v35, v0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/acg;->d()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/acg;->b:Lcom/google/android/gms/internal/acw$a;

    iget-object v6, v6, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzmn;->J:Ljava/util/List;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/acg;->b:Lcom/google/android/gms/internal/acw$a;

    iget-object v6, v6, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzmn;->N:Ljava/lang/String;

    move-object/from16 v38, v0

    move/from16 v6, p1

    move-object/from16 v14, p3

    move-object/from16 v16, p2

    invoke-direct/range {v2 .. v38}, Lcom/google/android/gms/internal/acw;-><init>(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/aer;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/xp;Lcom/google/android/gms/internal/yb;Ljava/lang/String;Lcom/google/android/gms/internal/xq;Lcom/google/android/gms/internal/xs;JLcom/google/android/gms/internal/zzeg;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/vb$a;Lcom/google/android/gms/internal/zzoo;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzmp;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v2
.end method

.method private d()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, ""

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/acg;->g:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acg;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/acb;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/acb;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 13000
    iget-object v5, v0, Lcom/google/android/gms/internal/acb;->b:Ljava/lang/String;

    iget v1, v0, Lcom/google/android/gms/internal/acb;->c:I

    .line 14000
    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x6

    .line 13000
    :goto_2
    iget-wide v6, v0, Lcom/google/android/gms/internal/acb;->d:J

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x21

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_0
    move v1, v2

    .line 14000
    goto :goto_2

    :pswitch_1
    const/4 v1, 0x1

    goto :goto_2

    :pswitch_2
    const/4 v1, 0x2

    goto :goto_2

    :pswitch_3
    const/4 v1, 0x3

    goto :goto_2

    :pswitch_4
    const/4 v1, 0x4

    goto :goto_2

    .line 0
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v3, v2, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 14000
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 14

    .prologue
    const/4 v10, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/acg;->b:Lcom/google/android/gms/internal/acw$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw$a;->c:Lcom/google/android/gms/internal/xq;

    iget-object v0, v0, Lcom/google/android/gms/internal/xq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/xp;

    iget-object v3, v4, Lcom/google/android/gms/internal/xp;->i:Ljava/lang/String;

    iget-object v0, v4, Lcom/google/android/gms/internal/xp;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "com.google.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "class_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2000
    :goto_1
    iget-object v13, p0, Lcom/google/android/gms/internal/acg;->i:Ljava/lang/Object;

    monitor-enter v13

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/acg;->a:Lcom/google/android/gms/internal/abp;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/abp;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ach;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 3000
    iget-object v0, v6, Lcom/google/android/gms/internal/ach;->b:Lcom/google/android/gms/internal/ace;

    .line 2000
    if-eqz v0, :cond_2

    .line 4000
    iget-object v0, v6, Lcom/google/android/gms/internal/ach;->a:Lcom/google/android/gms/internal/yb;

    .line 2000
    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/acg;->g:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/internal/acb$a;

    invoke-direct {v1}, Lcom/google/android/gms/internal/acb$a;-><init>()V

    iget-object v5, v4, Lcom/google/android/gms/internal/xp;->d:Ljava/lang/String;

    .line 5000
    iput-object v5, v1, Lcom/google/android/gms/internal/acb$a;->b:Ljava/lang/String;

    .line 6000
    iput-object v2, v1, Lcom/google/android/gms/internal/acb$a;->a:Ljava/lang/String;

    .line 7000
    const-wide/16 v6, 0x0

    iput-wide v6, v1, Lcom/google/android/gms/internal/acb$a;->d:J

    .line 8000
    const/4 v2, 0x7

    iput v2, v1, Lcom/google/android/gms/internal/acb$a;->c:I

    .line 2000
    invoke-virtual {v1}, Lcom/google/android/gms/internal/acb$a;->a()Lcom/google/android/gms/internal/acb;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v13

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 0
    :catch_0
    move-exception v0

    const-string/jumbo v1, "Unable to determine custom event class name, skipping..."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 9000
    :cond_3
    :try_start_2
    new-instance v0, Lcom/google/android/gms/internal/aca;

    iget-object v1, p0, Lcom/google/android/gms/internal/acg;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/acg;->b:Lcom/google/android/gms/internal/acw$a;

    iget-wide v8, p0, Lcom/google/android/gms/internal/acg;->j:J

    move-object v7, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/aca;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/xp;Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/ach;Lcom/google/android/gms/internal/acf;J)V

    .line 2000
    iget-object v5, p0, Lcom/google/android/gms/internal/acg;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ade;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/acg;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/acg;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 0
    :cond_4
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/acg;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/acg;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    iget-object v2, p0, Lcom/google/android/gms/internal/acg;->i:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/acg;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/acg;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aca;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/acg;->g:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aca;->d()Lcom/google/android/gms/internal/acb;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v2, p0, Lcom/google/android/gms/internal/acg;->i:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/acg;->h:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/google/android/gms/internal/acg;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/acg;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/acg;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/acg;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/aca;

    .line 10000
    iget-object v1, v1, Lcom/google/android/gms/internal/aca;->d:Lcom/google/android/gms/internal/xp;

    .line 11000
    :goto_3
    const/4 v3, -0x2

    invoke-direct {p0, v3, v0, v1}, Lcom/google/android/gms/internal/acg;->a(ILjava/lang/String;Lcom/google/android/gms/internal/xp;)Lcom/google/android/gms/internal/acw;

    move-result-object v0

    .line 0
    sget-object v1, Lcom/google/android/gms/internal/aea;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/acg$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/acg$1;-><init>(Lcom/google/android/gms/internal/acg;Lcom/google/android/gms/internal/acw;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :goto_4
    return-void

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :catch_1
    move-exception v0

    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    iget-object v2, p0, Lcom/google/android/gms/internal/acg;->i:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/acg;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/acg;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aca;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/acg;->g:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aca;->d()Lcom/google/android/gms/internal/acb;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 12000
    :cond_7
    const/4 v0, 0x3

    invoke-direct {p0, v0, v10, v10}, Lcom/google/android/gms/internal/acg;->a(ILjava/lang/String;Lcom/google/android/gms/internal/xp;)Lcom/google/android/gms/internal/acw;

    move-result-object v0

    .line 0
    sget-object v1, Lcom/google/android/gms/internal/aea;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/acg$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/acg$2;-><init>(Lcom/google/android/gms/internal/acg;Lcom/google/android/gms/internal/acw;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :catch_2
    move-exception v0

    :try_start_a
    const-string/jumbo v2, "Unable to resolve rewarded adapter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    iget-object v2, p0, Lcom/google/android/gms/internal/acg;->i:Ljava/lang/Object;

    monitor-enter v2

    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/internal/acg;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/google/android/gms/internal/acg;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aca;

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/google/android/gms/internal/acg;->g:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aca;->d()Lcom/google/android/gms/internal/acb;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    monitor-exit v2

    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    move-object v2, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/acg;->i:Ljava/lang/Object;

    monitor-enter v3

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/acg;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/acg;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aca;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/acg;->g:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aca;->d()Lcom/google/android/gms/internal/acb;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v2

    :catchall_5
    move-exception v0

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v0

    :cond_a
    move-object v1, v10

    goto/16 :goto_3

    :cond_b
    :try_start_e
    monitor-exit v2

    goto :goto_5

    :catchall_6
    move-exception v0

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v0

    :cond_c
    move-object v2, v0

    goto/16 :goto_1
.end method

.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/acg;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acg;->h:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final g_()V
    .locals 0

    return-void
.end method
