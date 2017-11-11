.class public Lcom/google/android/gms/internal/ku;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ku$b;,
        Lcom/google/android/gms/internal/ku$a;
    }
.end annotation


# static fields
.field static b:Lcom/google/android/gms/internal/ky$a;

.field static final synthetic c:Z


# instance fields
.field final a:Lcom/google/android/gms/internal/ky;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ku;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/ku;->c:Z

    new-instance v0, Lcom/google/android/gms/internal/ku$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ku$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ku;->b:Lcom/google/android/gms/internal/ky$a;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ky;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ku;->a:Lcom/google/android/gms/internal/ky;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/kt;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/kt;",
            "Lcom/google/android/gms/internal/kt;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/kk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    .line 1000
    iget-object v1, p1, Lcom/google/android/gms/internal/kt;->a:Lcom/google/android/gms/internal/ki;

    .line 2000
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ki;->b:Z

    .line 0
    if-eqz v0, :cond_3

    .line 3000
    iget-object v0, v1, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5000
    iget-object v0, v1, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 6000
    iget-object v0, v0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7000
    iget-object v2, p0, Lcom/google/android/gms/internal/kt;->a:Lcom/google/android/gms/internal/ki;

    .line 8000
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ki;->b:Z

    .line 0
    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    .line 9000
    iget-object v0, v1, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 10000
    iget-object v0, v0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/kt;->a()Lcom/google/android/gms/internal/ls;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11000
    :cond_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 12000
    iget-object v0, v0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->f()Lcom/google/android/gms/internal/ls;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kt;->a()Lcom/google/android/gms/internal/ls;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/ls;->f()Lcom/google/android/gms/internal/ls;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 13000
    :cond_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 0
    invoke-static {v0}, Lcom/google/android/gms/internal/kk;->a(Lcom/google/android/gms/internal/lm;)Lcom/google/android/gms/internal/kk;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/lf;)Z
    .locals 1

    .prologue
    .line 0
    .line 51013
    iget-object v0, p0, Lcom/google/android/gms/internal/kt;->a:Lcom/google/android/gms/internal/ki;

    .line 0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ki;->a(Lcom/google/android/gms/internal/lf;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ik;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/kt;
    .locals 8

    sget-boolean v0, Lcom/google/android/gms/internal/ku;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ik;->b()Lcom/google/android/gms/internal/ls;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Can\'t have a merge that is an overwrite"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ik;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v1, p1

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/iu;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/iu;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iu;->d()Lcom/google/android/gms/internal/lf;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ku;->a(Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/lf;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ls;

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ku;->a(Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/kt;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ik;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/iu;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/iu;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iu;->d()Lcom/google/android/gms/internal/lf;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ku;->a(Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/lf;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ls;

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ku;->a(Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/kt;

    move-result-object v1

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method final a(Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ik;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ls;ZLcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/kt;
    .locals 11

    .prologue
    .line 0
    .line 51014
    iget-object v0, p1, Lcom/google/android/gms/internal/kt;->b:Lcom/google/android/gms/internal/ki;

    .line 51015
    iget-object v0, v0, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 51016
    iget-object v0, v0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51017
    iget-object v0, p1, Lcom/google/android/gms/internal/kt;->b:Lcom/google/android/gms/internal/ki;

    .line 51018
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ki;->b:Z

    .line 0
    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    sget-boolean v0, Lcom/google/android/gms/internal/ku;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ik;->b()Lcom/google/android/gms/internal/ls;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Can\'t have a merge that is an overwrite"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51019
    :goto_1
    iget-object v0, p1, Lcom/google/android/gms/internal/kt;->b:Lcom/google/android/gms/internal/ki;

    .line 51020
    iget-object v0, v0, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 51021
    iget-object v8, v0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ik;->c()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v1, p1

    :cond_2
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/lf;

    invoke-interface {v8, v4}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/lf;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v8, v4}, Lcom/google/android/gms/internal/ls;->c(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/ls;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ik;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ik;->a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v3

    new-instance v2, Lcom/google/android/gms/internal/iu;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/lf;

    const/4 v5, 0x0

    aput-object v4, v0, v5

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/iu;-><init>([Lcom/google/android/gms/internal/lf;)V

    move-object v0, p0

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ku;->a(Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ls;ZLcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/kt;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ik;->a()Lcom/google/android/gms/internal/ik;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ik;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ik;)Lcom/google/android/gms/internal/ik;

    move-result-object p3

    goto :goto_1

    :cond_4
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/lf;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ik;

    .line 51022
    iget-object v3, p1, Lcom/google/android/gms/internal/kt;->b:Lcom/google/android/gms/internal/ki;

    .line 0
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ki;->a(Lcom/google/android/gms/internal/lf;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ik;->b()Lcom/google/android/gms/internal/ls;

    move-result-object v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    :goto_4
    invoke-interface {v8, v4}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/lf;)Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v2, :cond_5

    invoke-interface {v8, v4}, Lcom/google/android/gms/internal/ls;->c(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/ls;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ik;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ik;->a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v3

    new-instance v2, Lcom/google/android/gms/internal/iu;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/lf;

    const/4 v5, 0x0

    aput-object v4, v0, v5

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/iu;-><init>([Lcom/google/android/gms/internal/lf;)V

    move-object v0, p0

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ku;->a(Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ls;ZLcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/kt;

    move-result-object v1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    :cond_7
    move-object p1, v1

    goto/16 :goto_0
.end method

.method final a(Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ky$a;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/kt;
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 0
    .line 14000
    iget-object v8, p1, Lcom/google/android/gms/internal/kt;->a:Lcom/google/android/gms/internal/ki;

    .line 0
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/jm;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/google/android/gms/internal/ku;->c:Z

    if-nez v0, :cond_1

    .line 15000
    iget-object v0, p1, Lcom/google/android/gms/internal/kt;->b:Lcom/google/android/gms/internal/ki;

    .line 16000
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ki;->b:Z

    .line 0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "If change path is empty, we must have complete server data"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 17000
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/kt;->b:Lcom/google/android/gms/internal/ki;

    .line 18000
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ki;->c:Z

    .line 0
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kt;->b()Lcom/google/android/gms/internal/ls;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/lg;

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/jm;->b(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ku;->a:Lcom/google/android/gms/internal/ky;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ky;->b()Lcom/google/android/gms/internal/ll;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ll;)Lcom/google/android/gms/internal/lm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ku;->a:Lcom/google/android/gms/internal/ky;

    .line 19000
    iget-object v2, p1, Lcom/google/android/gms/internal/kt;->a:Lcom/google/android/gms/internal/ki;

    .line 20000
    iget-object v2, v2, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 0
    invoke-interface {v1, v2, v0, p5}, Lcom/google/android/gms/internal/ky;->a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/lm;

    move-result-object v0

    .line 40000
    :goto_3
    iget-boolean v1, v8, Lcom/google/android/gms/internal/ki;->b:Z

    .line 0
    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_2
    move v1, v7

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ku;->a:Lcom/google/android/gms/internal/ky;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ky;->c()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/kt;->a(Lcom/google/android/gms/internal/lm;ZZ)Lcom/google/android/gms/internal/kt;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kt;->b()Lcom/google/android/gms/internal/ls;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/jm;->a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/iu;->d()Lcom/google/android/gms/internal/lf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/lf;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/google/android/gms/internal/ku;->c:Z

    if-nez v0, :cond_6

    invoke-virtual {p2}, Lcom/google/android/gms/internal/iu;->i()I

    move-result v0

    if-eq v0, v7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Can\'t have a priority with additional path components"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 21000
    :cond_6
    iget-object v0, v8, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 22000
    iget-object v0, v0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 23000
    iget-object v1, p1, Lcom/google/android/gms/internal/kt;->b:Lcom/google/android/gms/internal/ki;

    .line 24000
    iget-object v1, v1, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 25000
    iget-object v1, v1, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-virtual {p3, p2, v0, v1}, Lcom/google/android/gms/internal/jm;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/ku;->a:Lcom/google/android/gms/internal/ky;

    .line 26000
    iget-object v2, v8, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 0
    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ky;->a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lm;

    move-result-object v0

    goto :goto_3

    .line 27000
    :cond_7
    iget-object v0, v8, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    goto :goto_3

    .line 0
    :cond_8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/iu;->e()Lcom/google/android/gms/internal/iu;

    move-result-object v4

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ki;->a(Lcom/google/android/gms/internal/lf;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 28000
    iget-object v0, p1, Lcom/google/android/gms/internal/kt;->b:Lcom/google/android/gms/internal/ki;

    .line 29000
    iget-object v0, v0, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 30000
    iget-object v0, v0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 31000
    iget-object v1, v8, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 32000
    iget-object v1, v1, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-virtual {p3, p2, v1, v0}, Lcom/google/android/gms/internal/jm;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 33000
    iget-object v1, v8, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 34000
    iget-object v1, v1, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ls;->c(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/ls;

    move-result-object v1

    invoke-interface {v1, v4, v0}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v3

    :goto_5
    if-eqz v3, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ku;->a:Lcom/google/android/gms/internal/ky;

    .line 38000
    iget-object v1, v8, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    move-object v5, p4

    move-object v6, p5

    .line 0
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ky;->a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ky$a;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/lm;

    move-result-object v0

    goto/16 :goto_3

    .line 35000
    :cond_9
    iget-object v0, v8, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 36000
    iget-object v0, v0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ls;->c(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/ls;

    move-result-object v3

    goto :goto_5

    .line 37000
    :cond_a
    iget-object v0, p1, Lcom/google/android/gms/internal/kt;->b:Lcom/google/android/gms/internal/ki;

    .line 0
    invoke-virtual {p3, v2, v0}, Lcom/google/android/gms/internal/jm;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ls;

    move-result-object v3

    goto :goto_5

    .line 39000
    :cond_b
    iget-object v0, v8, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    goto/16 :goto_3

    .line 0
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_4
.end method

.method final a(Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ke;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/kt;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/kt;",
            "Lcom/google/android/gms/internal/iu;",
            "Lcom/google/android/gms/internal/ke",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/gms/internal/jm;",
            "Lcom/google/android/gms/internal/ls;",
            "Lcom/google/android/gms/internal/kv;",
            ")",
            "Lcom/google/android/gms/internal/kt;"
        }
    .end annotation

    .prologue
    .line 0
    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/jm;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    .line 51023
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/kt;->b:Lcom/google/android/gms/internal/ki;

    .line 51024
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ki;->c:Z

    .line 51025
    iget-object v1, p1, Lcom/google/android/gms/internal/kt;->b:Lcom/google/android/gms/internal/ki;

    .line 51026
    iget-object v0, p3, Lcom/google/android/gms/internal/ke;->a:Ljava/lang/Object;

    .line 0
    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51027
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ki;->b:Z

    .line 0
    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ki;->a(Lcom/google/android/gms/internal/iu;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51028
    :cond_3
    iget-object v0, v1, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 51029
    iget-object v0, v0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ku;->a(Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ls;ZLcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/kt;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ik;->a()Lcom/google/android/gms/internal/ik;

    move-result-object v3

    .line 51030
    iget-object v0, v1, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 51031
    iget-object v0, v0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lr;

    .line 51032
    iget-object v2, v0, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 51033
    iget-object v0, v0, Lcom/google/android/gms/internal/lr;->b:Lcom/google/android/gms/internal/ls;

    .line 51034
    new-instance v4, Lcom/google/android/gms/internal/iu;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/android/gms/internal/lf;

    const/4 v7, 0x0

    aput-object v2, v5, v7

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/iu;-><init>([Lcom/google/android/gms/internal/lf;)V

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/ik;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ik;

    move-result-object v3

    goto :goto_1

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    .line 0
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ku;->a(Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ik;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ls;ZLcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/kt;

    move-result-object p1

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ik;->a()Lcom/google/android/gms/internal/ik;

    move-result-object v3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ke;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/iu;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/iu;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ki;->a(Lcom/google/android/gms/internal/iu;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 51035
    iget-object v5, v1, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 51036
    iget-object v5, v5, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/ik;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ik;

    move-result-object v3

    goto :goto_2

    :cond_8
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ku;->a(Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ik;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ls;ZLcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/kt;

    move-result-object p1

    goto/16 :goto_0
.end method

.method final a(Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/kt;
    .locals 8

    .prologue
    .line 0
    .line 51002
    iget-object v7, p1, Lcom/google/android/gms/internal/kt;->a:Lcom/google/android/gms/internal/ki;

    .line 0
    new-instance v5, Lcom/google/android/gms/internal/ku$b;

    invoke-direct {v5, p4, p1, p5}, Lcom/google/android/gms/internal/ku$b;-><init>(Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/ls;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ku;->a:Lcom/google/android/gms/internal/ky;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ky;->b()Lcom/google/android/gms/internal/ll;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ll;)Lcom/google/android/gms/internal/lm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ku;->a:Lcom/google/android/gms/internal/ky;

    .line 51003
    iget-object v2, p1, Lcom/google/android/gms/internal/kt;->a:Lcom/google/android/gms/internal/ki;

    .line 51004
    iget-object v2, v2, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 0
    invoke-interface {v1, v2, v0, p6}, Lcom/google/android/gms/internal/ky;->a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/lm;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ku;->a:Lcom/google/android/gms/internal/ky;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ky;->c()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/kt;->a(Lcom/google/android/gms/internal/lm;ZZ)Lcom/google/android/gms/internal/kt;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/iu;->d()Lcom/google/android/gms/internal/lf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/lf;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ku;->a:Lcom/google/android/gms/internal/ky;

    .line 51005
    iget-object v1, p1, Lcom/google/android/gms/internal/kt;->a:Lcom/google/android/gms/internal/ki;

    .line 51006
    iget-object v1, v1, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 0
    invoke-interface {v0, v1, p3}, Lcom/google/android/gms/internal/ky;->a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lm;

    move-result-object v0

    .line 51007
    iget-boolean v1, v7, Lcom/google/android/gms/internal/ki;->b:Z

    .line 51008
    iget-boolean v2, v7, Lcom/google/android/gms/internal/ki;->c:Z

    .line 0
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/kt;->a(Lcom/google/android/gms/internal/lm;ZZ)Lcom/google/android/gms/internal/kt;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/iu;->e()Lcom/google/android/gms/internal/iu;

    move-result-object v4

    .line 51009
    iget-object v0, v7, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 51010
    iget-object v0, v0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ls;->c(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v5, v2}, Lcom/google/android/gms/internal/ky$a;->a(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/ls;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/iu;->g()Lcom/google/android/gms/internal/lf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/lf;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/iu;->f()Lcom/google/android/gms/internal/iu;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ls;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ku;->a:Lcom/google/android/gms/internal/ky;

    .line 51011
    iget-object v1, v7, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    move-object v6, p6

    .line 0
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ky;->a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ky$a;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/lm;

    move-result-object v0

    .line 51012
    iget-boolean v1, v7, Lcom/google/android/gms/internal/ki;->b:Z

    .line 0
    iget-object v2, p0, Lcom/google/android/gms/internal/ku;->a:Lcom/google/android/gms/internal/ky;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ky;->c()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/kt;->a(Lcom/google/android/gms/internal/lm;ZZ)Lcom/google/android/gms/internal/kt;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-interface {v3, v4, p3}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v3

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v3

    goto :goto_1

    :cond_5
    move-object v3, p3

    goto :goto_1
.end method

.method final a(Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ls;ZLcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/kt;
    .locals 8

    .prologue
    .line 0
    .line 41000
    iget-object v7, p1, Lcom/google/android/gms/internal/kt;->b:Lcom/google/android/gms/internal/ki;

    .line 0
    if-eqz p6, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ku;->a:Lcom/google/android/gms/internal/ky;

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 42000
    iget-object v1, v7, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ky;->b()Lcom/google/android/gms/internal/ll;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ll;)Lcom/google/android/gms/internal/lm;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ky;->a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/lm;

    move-result-object v1

    .line 51001
    :goto_1
    iget-boolean v2, v7, Lcom/google/android/gms/internal/ki;->b:Z

    .line 0
    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_0
    const/4 v2, 0x1

    :goto_2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ky;->c()Z

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/internal/kt;->b(Lcom/google/android/gms/internal/lm;ZZ)Lcom/google/android/gms/internal/kt;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/internal/ku$b;

    invoke-direct {v4, p4, v1, p5}, Lcom/google/android/gms/internal/ku$b;-><init>(Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/ls;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p4

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ku;->a(Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ky$a;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/kt;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ku;->a:Lcom/google/android/gms/internal/ky;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ky;->a()Lcom/google/android/gms/internal/ky;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ky;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 43000
    iget-boolean v1, v7, Lcom/google/android/gms/internal/ki;->c:Z

    .line 0
    if-nez v1, :cond_5

    sget-boolean v1, Lcom/google/android/gms/internal/ku;->c:Z

    if-nez v1, :cond_4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "An empty path should have been caught in the other branch"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/iu;->d()Lcom/google/android/gms/internal/lf;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/iu;->e()Lcom/google/android/gms/internal/iu;

    move-result-object v2

    .line 44000
    iget-object v3, v7, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 45000
    iget-object v3, v3, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ls;->c(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/ls;

    move-result-object v3

    invoke-interface {v3, v2, p3}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v2

    .line 46000
    iget-object v3, v7, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 0
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lm;

    move-result-object v1

    .line 47000
    iget-object v2, v7, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 0
    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/google/android/gms/internal/ky;->a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/lm;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/iu;->d()Lcom/google/android/gms/internal/lf;

    move-result-object v2

    invoke-virtual {v7, p2}, Lcom/google/android/gms/internal/ki;->a(Lcom/google/android/gms/internal/iu;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p2}, Lcom/google/android/gms/internal/iu;->i()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_1

    :cond_6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/iu;->e()Lcom/google/android/gms/internal/iu;

    move-result-object v4

    .line 48000
    iget-object v1, v7, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 49000
    iget-object v1, v1, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ls;->c(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/ls;

    move-result-object v1

    invoke-interface {v1, v4, p3}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/lf;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 50000
    iget-object v1, v7, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 0
    invoke-interface {v0, v1, v3}, Lcom/google/android/gms/internal/ky;->a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lm;

    move-result-object v1

    goto/16 :goto_1

    .line 51000
    :cond_7
    iget-object v1, v7, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 0
    sget-object v5, Lcom/google/android/gms/internal/ku;->b:Lcom/google/android/gms/internal/ky$a;

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ky;->a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ky$a;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/lm;

    move-result-object v1

    goto/16 :goto_1

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_2
.end method
