.class final Lcom/google/android/gms/internal/je$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/je;->a(JZZLcom/google/android/gms/internal/mm;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<+",
        "Lcom/google/android/gms/internal/km;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:J

.field final synthetic c:Z

.field final synthetic d:Lcom/google/android/gms/internal/mm;

.field final synthetic e:Lcom/google/android/gms/internal/je;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/je;ZJZLcom/google/android/gms/internal/mm;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/je$13;->e:Lcom/google/android/gms/internal/je;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/je$13;->a:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/je$13;->b:J

    iput-boolean p5, p0, Lcom/google/android/gms/internal/je$13;->c:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/je$13;->d:Lcom/google/android/gms/internal/mm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 0
    .line 1000
    iget-boolean v0, p0, Lcom/google/android/gms/internal/je$13;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/je$13;->e:Lcom/google/android/gms/internal/je;

    invoke-static {v0}, Lcom/google/android/gms/internal/je;->b(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/jz;

    move-result-object v0

    iget-wide v8, p0, Lcom/google/android/gms/internal/je$13;->b:J

    invoke-interface {v0, v8, v9}, Lcom/google/android/gms/internal/jz;->a(J)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/je$13;->e:Lcom/google/android/gms/internal/je;

    invoke-static {v0}, Lcom/google/android/gms/internal/je;->c(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/jl;

    move-result-object v0

    iget-wide v8, p0, Lcom/google/android/gms/internal/je$13;->b:J

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/jl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ji;

    .line 3000
    iget-wide v10, v0, Lcom/google/android/gms/internal/ji;->a:J

    .line 2000
    cmp-long v3, v10, v8

    if-nez v3, :cond_1

    move-object v1, v0

    .line 1000
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/je$13;->e:Lcom/google/android/gms/internal/je;

    invoke-static {v0}, Lcom/google/android/gms/internal/je;->c(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/jl;

    move-result-object v9

    iget-wide v10, p0, Lcom/google/android/gms/internal/je$13;->b:J

    .line 4000
    iget-object v0, v9, Lcom/google/android/gms/internal/jl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v4

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ji;

    .line 5000
    iget-wide v12, v0, Lcom/google/android/gms/internal/ji;->a:J

    .line 4000
    cmp-long v7, v12, v10

    if-nez v7, :cond_4

    move-object v2, v0

    :cond_2
    sget-boolean v0, Lcom/google/android/gms/internal/jl;->e:Z

    if-nez v0, :cond_5

    if-nez v2, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "removeWrite called with nonexistent writeId"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    move-object v1, v2

    .line 2000
    goto :goto_0

    .line 4000
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_5
    iget-object v0, v9, Lcom/google/android/gms/internal/jl;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6000
    iget-boolean v7, v2, Lcom/google/android/gms/internal/ji;->c:Z

    .line 4000
    iget-object v0, v9, Lcom/google/android/gms/internal/jl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v8, v0

    move v5, v4

    :goto_2
    if-eqz v7, :cond_7

    if-ltz v8, :cond_7

    iget-object v0, v9, Lcom/google/android/gms/internal/jl;->b:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ji;

    .line 7000
    iget-boolean v10, v0, Lcom/google/android/gms/internal/ji;->c:Z

    .line 4000
    if-eqz v10, :cond_12

    if-lt v8, v3, :cond_6

    .line 8000
    iget-object v10, v2, Lcom/google/android/gms/internal/ji;->b:Lcom/google/android/gms/internal/iu;

    .line 4000
    invoke-static {v0, v10}, Lcom/google/android/gms/internal/jl;->a(Lcom/google/android/gms/internal/ji;Lcom/google/android/gms/internal/iu;)Z

    move-result v10

    if-eqz v10, :cond_6

    move v0, v5

    move v5, v4

    :goto_3
    add-int/lit8 v7, v8, -0x1

    move v8, v7

    move v7, v5

    move v5, v0

    goto :goto_2

    .line 9000
    :cond_6
    iget-object v10, v2, Lcom/google/android/gms/internal/ji;->b:Lcom/google/android/gms/internal/iu;

    .line 10000
    iget-object v0, v0, Lcom/google/android/gms/internal/ji;->b:Lcom/google/android/gms/internal/iu;

    .line 4000
    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/iu;->b(Lcom/google/android/gms/internal/iu;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v6

    move v5, v7

    goto :goto_3

    :cond_7
    if-nez v7, :cond_9

    .line 15000
    :goto_4
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ji;->c:Z

    .line 1000
    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/gms/internal/je$13;->c:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/je$13;->d:Lcom/google/android/gms/internal/mm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ja;->a(Lcom/google/android/gms/internal/mm;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ji;->c()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ji;->a()Lcom/google/android/gms/internal/ls;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ja;->a(Lcom/google/android/gms/internal/ls;Ljava/util/Map;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/je$13;->e:Lcom/google/android/gms/internal/je;

    invoke-static {v2}, Lcom/google/android/gms/internal/je;->b(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/jz;

    move-result-object v2

    .line 16000
    iget-object v3, v1, Lcom/google/android/gms/internal/ji;->b:Lcom/google/android/gms/internal/iu;

    .line 1000
    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/jz;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)V

    :cond_8
    :goto_5
    if-nez v4, :cond_f

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_6
    return-object v0

    .line 4000
    :cond_9
    if-eqz v5, :cond_b

    .line 11000
    iget-object v0, v9, Lcom/google/android/gms/internal/jl;->b:Ljava/util/List;

    sget-object v2, Lcom/google/android/gms/internal/jl;->d:Lcom/google/android/gms/internal/kf;

    invoke-static {}, Lcom/google/android/gms/internal/iu;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/jl;->a(Ljava/util/List;Lcom/google/android/gms/internal/kf;Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ik;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/internal/jl;->a:Lcom/google/android/gms/internal/ik;

    iget-object v0, v9, Lcom/google/android/gms/internal/jl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, v9, Lcom/google/android/gms/internal/jl;->b:Ljava/util/List;

    iget-object v2, v9, Lcom/google/android/gms/internal/jl;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ji;

    .line 12000
    iget-wide v2, v0, Lcom/google/android/gms/internal/ji;->a:J

    .line 11000
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/internal/jl;->c:Ljava/lang/Long;

    :goto_7
    move v4, v6

    .line 4000
    goto :goto_4

    .line 11000
    :cond_a
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/internal/jl;->c:Ljava/lang/Long;

    goto :goto_7

    .line 4000
    :cond_b
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ji;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v9, Lcom/google/android/gms/internal/jl;->a:Lcom/google/android/gms/internal/ik;

    .line 13000
    iget-object v2, v2, Lcom/google/android/gms/internal/ji;->b:Lcom/google/android/gms/internal/iu;

    .line 4000
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ik;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ik;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/internal/jl;->a:Lcom/google/android/gms/internal/ik;

    :cond_c
    move v4, v6

    goto :goto_4

    :cond_d
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ji;->b()Lcom/google/android/gms/internal/ik;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ik;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/iu;

    iget-object v4, v9, Lcom/google/android/gms/internal/jl;->a:Lcom/google/android/gms/internal/ik;

    .line 14000
    iget-object v5, v2, Lcom/google/android/gms/internal/ji;->b:Lcom/google/android/gms/internal/iu;

    .line 4000
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/iu;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ik;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ik;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/internal/jl;->a:Lcom/google/android/gms/internal/ik;

    goto :goto_8

    .line 1000
    :cond_e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ji;->b()Lcom/google/android/gms/internal/ik;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ja;->a(Lcom/google/android/gms/internal/ik;Ljava/util/Map;)Lcom/google/android/gms/internal/ik;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/je$13;->e:Lcom/google/android/gms/internal/je;

    invoke-static {v2}, Lcom/google/android/gms/internal/je;->b(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/jz;

    move-result-object v2

    .line 17000
    iget-object v3, v1, Lcom/google/android/gms/internal/ji;->b:Lcom/google/android/gms/internal/iu;

    .line 1000
    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/jz;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ik;)V

    goto/16 :goto_5

    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/ke;->a()Lcom/google/android/gms/internal/ke;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ji;->c()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {}, Lcom/google/android/gms/internal/iu;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ke;->a(Lcom/google/android/gms/internal/iu;Ljava/lang/Object;)Lcom/google/android/gms/internal/ke;

    move-result-object v2

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/je$13;->e:Lcom/google/android/gms/internal/je;

    new-instance v3, Lcom/google/android/gms/internal/jp;

    .line 18000
    iget-object v1, v1, Lcom/google/android/gms/internal/ji;->b:Lcom/google/android/gms/internal/iu;

    .line 1000
    iget-boolean v4, p0, Lcom/google/android/gms/internal/je$13;->c:Z

    invoke-direct {v3, v1, v2, v4}, Lcom/google/android/gms/internal/jp;-><init>(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ke;Z)V

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/js;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_6

    :cond_11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ji;->b()Lcom/google/android/gms/internal/ik;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ik;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/iu;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/google/android/gms/internal/ke;->a(Lcom/google/android/gms/internal/iu;Ljava/lang/Object;)Lcom/google/android/gms/internal/ke;

    move-result-object v0

    move-object v2, v0

    goto :goto_9

    :cond_12
    move v0, v5

    move v5, v7

    goto/16 :goto_3
.end method
