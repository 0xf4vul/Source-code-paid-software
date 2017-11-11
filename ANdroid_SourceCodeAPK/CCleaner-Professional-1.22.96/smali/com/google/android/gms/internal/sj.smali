.class public final Lcom/google/android/gms/internal/sj;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/internal/sj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/sj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/sj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/sj;->a:Lcom/google/android/gms/internal/sj;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/sj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/sj;->a:Lcom/google/android/gms/internal/sj;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/zzec;
    .locals 22

    .prologue
    .line 0
    .line 1000
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/th;->a:Ljava/util/Date;

    .line 0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 2000
    :goto_0
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/google/android/gms/internal/th;->b:Ljava/lang/String;

    .line 3000
    move-object/from16 v0, p1

    iget v7, v0, Lcom/google/android/gms/internal/th;->c:I

    .line 4000
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/th;->d:Ljava/util/Set;

    .line 0
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 5000
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/th;->m:Ljava/util/Set;

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/aea;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 6000
    move-object/from16 v0, p1

    iget v10, v0, Lcom/google/android/gms/internal/th;->l:I

    .line 7000
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/android/gms/internal/th;->e:Landroid/location/Location;

    .line 0
    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 8000
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/th;->g:Landroid/os/Bundle;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 9000
    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/google/android/gms/internal/th;->f:Z

    .line 10000
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/gms/internal/th;->i:Ljava/lang/String;

    .line 11000
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/th;->k:Lcom/google/android/gms/ads/search/a;

    .line 0
    if-eqz v2, :cond_3

    new-instance v13, Lcom/google/android/gms/internal/zzfp;

    invoke-direct {v13, v2}, Lcom/google/android/gms/internal/zzfp;-><init>(Lcom/google/android/gms/ads/search/a;)V

    :goto_2
    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/aea;->a([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 12000
    :cond_0
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/internal/th;->p:Z

    move/from16 v21, v0

    .line 0
    new-instance v2, Lcom/google/android/gms/internal/zzec;

    const/4 v3, 0x7

    .line 13000
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/th;->g:Landroid/os/Bundle;

    move-object/from16 v16, v0

    .line 14000
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/th;->n:Landroid/os/Bundle;

    move-object/from16 v17, v0

    .line 0
    new-instance v18, Ljava/util/ArrayList;

    .line 15000
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/th;->o:Ljava/util/Set;

    move-object/from16 v19, v0

    .line 0
    invoke-direct/range {v18 .. v19}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v18

    .line 16000
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/th;->j:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 0
    invoke-direct/range {v2 .. v21}, Lcom/google/android/gms/internal/zzec;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/zzfp;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2

    :cond_1
    const-wide/16 v4, -0x1

    goto/16 :goto_0

    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_2
.end method
