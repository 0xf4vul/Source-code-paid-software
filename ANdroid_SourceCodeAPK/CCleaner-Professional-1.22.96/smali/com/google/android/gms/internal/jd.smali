.class public Lcom/google/android/gms/internal/jd;
.super Ljava/lang/Object;


# static fields
.field static final synthetic b:Z


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/kq;",
            "Lcom/google/android/gms/internal/ks;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/jz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/jd;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/jd;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/jz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/jd;->a:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/jd;->c:Lcom/google/android/gms/internal/jz;

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/ks;Lcom/google/android/gms/internal/js;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ls;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ks;",
            "Lcom/google/android/gms/internal/js;",
            "Lcom/google/android/gms/internal/jm;",
            "Lcom/google/android/gms/internal/ls;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/kl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    .line 1000
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/js;->c()Lcom/google/android/gms/internal/js$a;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/js$a;->b:Lcom/google/android/gms/internal/js$a;

    if-ne v2, v3, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/js;->b()Lcom/google/android/gms/internal/jt;

    move-result-object v2

    .line 2000
    iget-object v2, v2, Lcom/google/android/gms/internal/jt;->c:Lcom/google/android/gms/internal/kq;

    .line 1000
    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/google/android/gms/internal/ks;->e:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ks;->c:Lcom/google/android/gms/internal/kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/kt;->b()Lcom/google/android/gms/internal/ls;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    const-string/jumbo v3, "We should always have a full cache before handling merges"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :cond_0
    sget-boolean v2, Lcom/google/android/gms/internal/ks;->e:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ks;->c:Lcom/google/android/gms/internal/kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/kt;->a()Lcom/google/android/gms/internal/ls;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    const-string/jumbo v3, "Missing event cache, even though we have a server cache"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :cond_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/ks;->c:Lcom/google/android/gms/internal/kt;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ks;->b:Lcom/google/android/gms/internal/ku;

    .line 3000
    new-instance v8, Lcom/google/android/gms/internal/kv;

    invoke-direct {v8}, Lcom/google/android/gms/internal/kv;-><init>()V

    sget-object v4, Lcom/google/android/gms/internal/ku$2;->a:[I

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/js;->c()Lcom/google/android/gms/internal/js$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/js$a;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/js;->c()Lcom/google/android/gms/internal/js$a;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x13

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Unknown operation: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :pswitch_0
    check-cast p2, Lcom/google/android/gms/internal/ju;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ju;->b()Lcom/google/android/gms/internal/jt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/jt;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ju;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v4

    .line 4000
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/internal/ju;->a:Lcom/google/android/gms/internal/ls;

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 3000
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ku;->a(Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/kt;

    move-result-object v2

    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    .line 40000
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v8, Lcom/google/android/gms/internal/kv;->a:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3000
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3, v2, v4}, Lcom/google/android/gms/internal/ku;->a(Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/kt;Ljava/util/List;)V

    new-instance v5, Lcom/google/android/gms/internal/ku$a;

    invoke-direct {v5, v2, v4}, Lcom/google/android/gms/internal/ku$a;-><init>(Lcom/google/android/gms/internal/kt;Ljava/util/List;)V

    .line 1000
    sget-boolean v2, Lcom/google/android/gms/internal/ks;->e:Z

    if-nez v2, :cond_17

    iget-object v2, v5, Lcom/google/android/gms/internal/ku$a;->a:Lcom/google/android/gms/internal/kt;

    .line 41000
    iget-object v2, v2, Lcom/google/android/gms/internal/kt;->b:Lcom/google/android/gms/internal/ki;

    .line 42000
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ki;->b:Z

    .line 1000
    if-nez v2, :cond_17

    .line 43000
    iget-object v2, v3, Lcom/google/android/gms/internal/kt;->b:Lcom/google/android/gms/internal/ki;

    .line 44000
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ki;->b:Z

    .line 1000
    if-eqz v2, :cond_17

    new-instance v2, Ljava/lang/AssertionError;

    const-string/jumbo v3, "Once a server snap is complete, it should never go back"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 3000
    :cond_2
    sget-boolean v4, Lcom/google/android/gms/internal/ku;->c:Z

    if-nez v4, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ju;->b()Lcom/google/android/gms/internal/jt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/jt;->b()Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ju;->b()Lcom/google/android/gms/internal/jt;

    move-result-object v4

    .line 5000
    iget-boolean v4, v4, Lcom/google/android/gms/internal/jt;->d:Z

    .line 3000
    if-nez v4, :cond_4

    .line 6000
    iget-object v4, v3, Lcom/google/android/gms/internal/kt;->b:Lcom/google/android/gms/internal/ki;

    .line 7000
    iget-boolean v4, v4, Lcom/google/android/gms/internal/ki;->c:Z

    .line 3000
    if-eqz v4, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ju;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    const/4 v15, 0x1

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ju;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v11

    .line 8000
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/google/android/gms/internal/ju;->a:Lcom/google/android/gms/internal/ls;

    move-object v9, v2

    move-object v10, v3

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v16, v8

    .line 3000
    invoke-virtual/range {v9 .. v16}, Lcom/google/android/gms/internal/ku;->a(Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ls;ZLcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/kt;

    move-result-object v2

    goto :goto_0

    :cond_5
    const/4 v15, 0x0

    goto :goto_1

    :pswitch_1
    check-cast p2, Lcom/google/android/gms/internal/jr;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/jr;->b()Lcom/google/android/gms/internal/jt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/jt;->a()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/jr;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v4

    .line 9000
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/internal/jr;->a:Lcom/google/android/gms/internal/ik;

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 3000
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ku;->a(Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ik;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/kt;

    move-result-object v2

    goto/16 :goto_0

    :cond_6
    sget-boolean v4, Lcom/google/android/gms/internal/ku;->c:Z

    if-nez v4, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/jr;->b()Lcom/google/android/gms/internal/jt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/jt;->b()Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/jr;->b()Lcom/google/android/gms/internal/jt;

    move-result-object v4

    .line 10000
    iget-boolean v4, v4, Lcom/google/android/gms/internal/jt;->d:Z

    .line 3000
    if-nez v4, :cond_8

    .line 11000
    iget-object v4, v3, Lcom/google/android/gms/internal/kt;->b:Lcom/google/android/gms/internal/ki;

    .line 12000
    iget-boolean v4, v4, Lcom/google/android/gms/internal/ki;->c:Z

    .line 3000
    if-eqz v4, :cond_9

    :cond_8
    const/4 v15, 0x1

    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/jr;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v11

    .line 13000
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/google/android/gms/internal/jr;->a:Lcom/google/android/gms/internal/ik;

    move-object v9, v2

    move-object v10, v3

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v16, v8

    .line 3000
    invoke-virtual/range {v9 .. v16}, Lcom/google/android/gms/internal/ku;->a(Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ik;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ls;ZLcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/kt;

    move-result-object v2

    goto/16 :goto_0

    :cond_9
    const/4 v15, 0x0

    goto :goto_2

    :pswitch_2
    check-cast p2, Lcom/google/android/gms/internal/jp;

    .line 14000
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/google/android/gms/internal/jp;->a:Z

    .line 3000
    if-nez v4, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/jp;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v4

    .line 15000
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/internal/jp;->b:Lcom/google/android/gms/internal/ke;

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 3000
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ku;->a(Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ke;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/kt;

    move-result-object v2

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/jp;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v4

    .line 16000
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/jm;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v5

    if-eqz v5, :cond_b

    move-object v2, v3

    goto/16 :goto_0

    :cond_b
    new-instance v14, Lcom/google/android/gms/internal/ku$b;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v14, v0, v3, v1}, Lcom/google/android/gms/internal/ku$b;-><init>(Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/ls;)V

    .line 17000
    iget-object v5, v3, Lcom/google/android/gms/internal/kt;->a:Lcom/google/android/gms/internal/ki;

    .line 18000
    iget-object v10, v5, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 16000
    invoke-virtual {v4}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v4}, Lcom/google/android/gms/internal/iu;->d()Lcom/google/android/gms/internal/lf;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/lf;->e()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 19000
    :cond_c
    iget-object v4, v3, Lcom/google/android/gms/internal/kt;->b:Lcom/google/android/gms/internal/ki;

    .line 20000
    iget-boolean v4, v4, Lcom/google/android/gms/internal/ki;->b:Z

    .line 16000
    if-eqz v4, :cond_f

    invoke-virtual {v3}, Lcom/google/android/gms/internal/kt;->b()Lcom/google/android/gms/internal/ls;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/jm;->a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v4

    :goto_3
    iget-object v5, v2, Lcom/google/android/gms/internal/ku;->a:Lcom/google/android/gms/internal/ky;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ky;->b()Lcom/google/android/gms/internal/ll;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ll;)Lcom/google/android/gms/internal/lm;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/gms/internal/ku;->a:Lcom/google/android/gms/internal/ky;

    invoke-interface {v5, v10, v4, v8}, Lcom/google/android/gms/internal/ky;->a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/lm;

    move-result-object v10

    .line 33000
    :cond_d
    :goto_4
    iget-object v4, v3, Lcom/google/android/gms/internal/kt;->b:Lcom/google/android/gms/internal/ki;

    .line 34000
    iget-boolean v4, v4, Lcom/google/android/gms/internal/ki;->b:Z

    .line 16000
    if-nez v4, :cond_e

    invoke-static {}, Lcom/google/android/gms/internal/iu;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/jm;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v4

    if-eqz v4, :cond_14

    :cond_e
    const/4 v4, 0x1

    :goto_5
    iget-object v2, v2, Lcom/google/android/gms/internal/ku;->a:Lcom/google/android/gms/internal/ky;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ky;->c()Z

    move-result v2

    invoke-virtual {v3, v10, v4, v2}, Lcom/google/android/gms/internal/kt;->a(Lcom/google/android/gms/internal/lm;ZZ)Lcom/google/android/gms/internal/kt;

    move-result-object v2

    goto/16 :goto_0

    .line 21000
    :cond_f
    iget-object v4, v3, Lcom/google/android/gms/internal/kt;->b:Lcom/google/android/gms/internal/ki;

    .line 22000
    iget-object v4, v4, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 23000
    iget-object v4, v4, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 16000
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/jm;->b(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v4

    goto :goto_3

    :cond_10
    invoke-virtual {v4}, Lcom/google/android/gms/internal/iu;->d()Lcom/google/android/gms/internal/lf;

    move-result-object v11

    .line 24000
    iget-object v5, v3, Lcom/google/android/gms/internal/kt;->b:Lcom/google/android/gms/internal/ki;

    .line 16000
    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v5}, Lcom/google/android/gms/internal/jm;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ls;

    move-result-object v12

    if-nez v12, :cond_11

    .line 25000
    iget-object v5, v3, Lcom/google/android/gms/internal/kt;->b:Lcom/google/android/gms/internal/ki;

    .line 16000
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ki;->a(Lcom/google/android/gms/internal/lf;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 26000
    iget-object v5, v10, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 16000
    invoke-interface {v5, v11}, Lcom/google/android/gms/internal/ls;->c(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/ls;

    move-result-object v12

    :cond_11
    if-eqz v12, :cond_13

    iget-object v9, v2, Lcom/google/android/gms/internal/ku;->a:Lcom/google/android/gms/internal/ky;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/iu;->e()Lcom/google/android/gms/internal/iu;

    move-result-object v13

    move-object v15, v8

    invoke-interface/range {v9 .. v15}, Lcom/google/android/gms/internal/ky;->a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ky$a;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/lm;

    move-result-object v10

    .line 30000
    :cond_12
    :goto_6
    iget-object v4, v10, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 16000
    invoke-interface {v4}, Lcom/google/android/gms/internal/ls;->b()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 31000
    iget-object v4, v3, Lcom/google/android/gms/internal/kt;->b:Lcom/google/android/gms/internal/ki;

    .line 32000
    iget-boolean v4, v4, Lcom/google/android/gms/internal/ki;->b:Z

    .line 16000
    if-eqz v4, :cond_d

    invoke-virtual {v3}, Lcom/google/android/gms/internal/kt;->b()Lcom/google/android/gms/internal/ls;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/jm;->a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/ls;->e()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, v2, Lcom/google/android/gms/internal/ku;->a:Lcom/google/android/gms/internal/ky;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ky;->b()Lcom/google/android/gms/internal/ll;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ll;)Lcom/google/android/gms/internal/lm;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/gms/internal/ku;->a:Lcom/google/android/gms/internal/ky;

    invoke-interface {v5, v10, v4, v8}, Lcom/google/android/gms/internal/ky;->a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/lm;

    move-result-object v10

    goto/16 :goto_4

    :cond_13
    if-nez v12, :cond_12

    .line 27000
    iget-object v5, v3, Lcom/google/android/gms/internal/kt;->a:Lcom/google/android/gms/internal/ki;

    .line 28000
    iget-object v5, v5, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 29000
    iget-object v5, v5, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 16000
    invoke-interface {v5, v11}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/lf;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v9, v2, Lcom/google/android/gms/internal/ku;->a:Lcom/google/android/gms/internal/ky;

    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v12

    invoke-virtual {v4}, Lcom/google/android/gms/internal/iu;->e()Lcom/google/android/gms/internal/iu;

    move-result-object v13

    move-object v15, v8

    invoke-interface/range {v9 .. v15}, Lcom/google/android/gms/internal/ky;->a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ky$a;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/lm;

    move-result-object v10

    goto :goto_6

    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 3000
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/js;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v11

    .line 36000
    iget-object v5, v3, Lcom/google/android/gms/internal/kt;->b:Lcom/google/android/gms/internal/ki;

    .line 37000
    iget-object v6, v5, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 38000
    iget-boolean v4, v5, Lcom/google/android/gms/internal/ki;->b:Z

    .line 35000
    if-nez v4, :cond_15

    invoke-virtual {v11}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_15
    const/4 v4, 0x1

    .line 39000
    :goto_7
    iget-boolean v5, v5, Lcom/google/android/gms/internal/ki;->c:Z

    .line 35000
    invoke-virtual {v3, v6, v4, v5}, Lcom/google/android/gms/internal/kt;->b(Lcom/google/android/gms/internal/lm;ZZ)Lcom/google/android/gms/internal/kt;

    move-result-object v10

    sget-object v13, Lcom/google/android/gms/internal/ku;->b:Lcom/google/android/gms/internal/ky$a;

    move-object v9, v2

    move-object/from16 v12, p3

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/gms/internal/ku;->a(Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ky$a;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/kt;

    move-result-object v2

    goto/16 :goto_0

    :cond_16
    const/4 v4, 0x0

    goto :goto_7

    .line 1000
    :cond_17
    iget-object v2, v5, Lcom/google/android/gms/internal/ku$a;->a:Lcom/google/android/gms/internal/kt;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/google/android/gms/internal/ks;->c:Lcom/google/android/gms/internal/kt;

    iget-object v2, v5, Lcom/google/android/gms/internal/ku$a;->b:Ljava/util/List;

    iget-object v3, v5, Lcom/google/android/gms/internal/ku$a;->a:Lcom/google/android/gms/internal/kt;

    .line 45000
    iget-object v3, v3, Lcom/google/android/gms/internal/kt;->a:Lcom/google/android/gms/internal/ki;

    .line 46000
    iget-object v3, v3, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 1000
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ks;->a(Ljava/util/List;Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/ip;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ks$a;

    iget-object v4, v5, Lcom/google/android/gms/internal/ku$a;->b:Ljava/util/List;

    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/ks$a;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 47000
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ks;->a:Lcom/google/android/gms/internal/kr;

    .line 48000
    iget-object v2, v2, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/kq;->f()Z

    move-result v2

    .line 0
    if-nez v2, :cond_1c

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iget-object v2, v3, Lcom/google/android/gms/internal/ks$a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_18
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/kk;

    .line 49000
    iget-object v7, v2, Lcom/google/android/gms/internal/kk;->a:Lcom/google/android/gms/internal/km$a;

    .line 0
    sget-object v8, Lcom/google/android/gms/internal/km$a;->b:Lcom/google/android/gms/internal/km$a;

    if-ne v7, v8, :cond_19

    .line 50000
    iget-object v2, v2, Lcom/google/android/gms/internal/kk;->d:Lcom/google/android/gms/internal/lf;

    .line 0
    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_19
    sget-object v8, Lcom/google/android/gms/internal/km$a;->a:Lcom/google/android/gms/internal/km$a;

    if-ne v7, v8, :cond_18

    .line 51000
    iget-object v2, v2, Lcom/google/android/gms/internal/kk;->d:Lcom/google/android/gms/internal/lf;

    .line 0
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1a
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/jd;->c:Lcom/google/android/gms/internal/jz;

    .line 51001
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/ks;->a:Lcom/google/android/gms/internal/kr;

    .line 0
    invoke-interface {v2, v6, v5, v4}, Lcom/google/android/gms/internal/jz;->a(Lcom/google/android/gms/internal/kr;Ljava/util/Set;Ljava/util/Set;)V

    :cond_1c
    iget-object v2, v3, Lcom/google/android/gms/internal/ks$a;->a:Ljava/util/List;

    return-object v2

    .line 3000
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/ks;
    .locals 2

    .prologue
    .line 0
    .line 51030
    iget-object v0, p1, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kq;->f()Z

    move-result v0

    .line 0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jd;->c()Lcom/google/android/gms/internal/ks;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->a:Ljava/util/Map;

    .line 51031
    iget-object v1, p1, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    .line 0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ks;

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ks;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ks;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ks;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/kr;Lcom/google/android/gms/internal/ip;Lcom/google/firebase/database/b;)Lcom/google/android/gms/internal/ms;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/kr;",
            "Lcom/google/android/gms/internal/ip;",
            "Lcom/google/firebase/database/b;",
            ")",
            "Lcom/google/android/gms/internal/ms",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/kr;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/km;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jd;->b()Z

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kr;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ks;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ks;->a(Lcom/google/android/gms/internal/ip;Lcom/google/firebase/database/b;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ks;->b()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 51019
    iget-object v5, v0, Lcom/google/android/gms/internal/ks;->a:Lcom/google/android/gms/internal/kr;

    .line 51020
    iget-object v5, v5, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/kq;->f()Z

    move-result v5

    .line 0
    if-nez v5, :cond_0

    .line 51021
    iget-object v0, v0, Lcom/google/android/gms/internal/ks;->a:Lcom/google/android/gms/internal/kr;

    .line 0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->a:Ljava/util/Map;

    .line 51022
    iget-object v4, p1, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    .line 0
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ks;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ks;->a(Lcom/google/android/gms/internal/ip;Lcom/google/firebase/database/b;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ks;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/jd;->a:Ljava/util/Map;

    .line 51023
    iget-object v5, p1, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    .line 0
    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51024
    iget-object v4, v0, Lcom/google/android/gms/internal/ks;->a:Lcom/google/android/gms/internal/kr;

    .line 51025
    iget-object v4, v4, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/kq;->f()Z

    move-result v4

    .line 0
    if-nez v4, :cond_2

    .line 51026
    iget-object v0, v0, Lcom/google/android/gms/internal/ks;->a:Lcom/google/android/gms/internal/kr;

    .line 0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jd;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 51027
    iget-object v0, p1, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 0
    invoke-static {v0}, Lcom/google/android/gms/internal/kr;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/kr;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ms;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ms;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ks;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ks;

    .line 51028
    iget-object v3, v0, Lcom/google/android/gms/internal/ks;->a:Lcom/google/android/gms/internal/kr;

    .line 51029
    iget-object v3, v3, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/kq;->f()Z

    move-result v3

    .line 0
    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final a(Lcom/google/android/gms/internal/ip;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ki;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ip;",
            "Lcom/google/android/gms/internal/jm;",
            "Lcom/google/android/gms/internal/ki;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/kl;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ip;->a()Lcom/google/android/gms/internal/kr;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->a:Ljava/util/Map;

    .line 51003
    iget-object v1, v3, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    .line 0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ks;

    if-nez v0, :cond_4

    .line 51004
    iget-boolean v0, p3, Lcom/google/android/gms/internal/ki;->b:Z

    .line 0
    if-eqz v0, :cond_0

    .line 51005
    iget-object v0, p3, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 51006
    iget-object v0, v0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    :goto_0
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/jm;->a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 51009
    :goto_1
    iget-object v4, v3, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    .line 51010
    iget-object v4, v4, Lcom/google/android/gms/internal/kq;->g:Lcom/google/android/gms/internal/ll;

    .line 0
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ll;)Lcom/google/android/gms/internal/lm;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/internal/kt;

    new-instance v5, Lcom/google/android/gms/internal/ki;

    invoke-direct {v5, v0, v1, v2}, Lcom/google/android/gms/internal/ki;-><init>(Lcom/google/android/gms/internal/lm;ZZ)V

    invoke-direct {v4, v5, p3}, Lcom/google/android/gms/internal/kt;-><init>(Lcom/google/android/gms/internal/ki;Lcom/google/android/gms/internal/ki;)V

    new-instance v1, Lcom/google/android/gms/internal/ks;

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ks;-><init>(Lcom/google/android/gms/internal/kr;Lcom/google/android/gms/internal/kt;)V

    .line 51011
    iget-object v0, v3, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kq;->f()Z

    move-result v0

    .line 0
    if-nez v0, :cond_3

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 51012
    iget-object v0, v1, Lcom/google/android/gms/internal/ks;->c:Lcom/google/android/gms/internal/kt;

    .line 51013
    iget-object v0, v0, Lcom/google/android/gms/internal/kt;->a:Lcom/google/android/gms/internal/ki;

    .line 51014
    iget-object v0, v0, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 51015
    iget-object v0, v0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lr;

    .line 51016
    iget-object v0, v0, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 0
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 51007
    :cond_1
    iget-object v0, p3, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 51008
    iget-object v0, v0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/jm;->b(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->c:Lcom/google/android/gms/internal/jz;

    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/internal/jz;->a(Lcom/google/android/gms/internal/kr;Ljava/util/Set;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->a:Ljava/util/Map;

    .line 51017
    iget-object v2, v3, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    .line 0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 51018
    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/ks;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ks;->a(Lcom/google/android/gms/internal/ip;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/js;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ls;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/js;",
            "Lcom/google/android/gms/internal/jm;",
            "Lcom/google/android/gms/internal/ls;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/kl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/js;->b()Lcom/google/android/gms/internal/jt;

    move-result-object v0

    .line 51002
    iget-object v0, v0, Lcom/google/android/gms/internal/jt;->c:Lcom/google/android/gms/internal/kq;

    .line 0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/jd;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ks;

    sget-boolean v1, Lcom/google/android/gms/internal/jd;->b:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/jd;->a(Lcom/google/android/gms/internal/ks;Lcom/google/android/gms/internal/js;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ls;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ks;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/jd;->a(Lcom/google/android/gms/internal/ks;Lcom/google/android/gms/internal/js;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ls;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jd;->c()Lcom/google/android/gms/internal/ks;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/internal/kr;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jd;->a(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/ks;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/google/android/gms/internal/ks;
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ks;

    .line 51032
    iget-object v2, v0, Lcom/google/android/gms/internal/ks;->a:Lcom/google/android/gms/internal/kr;

    .line 51033
    iget-object v2, v2, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/kq;->f()Z

    move-result v2

    .line 0
    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
