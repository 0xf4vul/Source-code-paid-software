.class final Lcom/google/android/gms/internal/je$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/ip;)Ljava/util/List;
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


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/ip;

.field final synthetic c:Lcom/google/android/gms/internal/je;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/je;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/je$8;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/ip;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/je$8;->c:Lcom/google/android/gms/internal/je;

    iput-object p2, p0, Lcom/google/android/gms/internal/je$8;->b:Lcom/google/android/gms/internal/ip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/je$8;->b:Lcom/google/android/gms/internal/ip;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ip;->a()Lcom/google/android/gms/internal/kr;

    move-result-object v8

    .line 2000
    iget-object v6, v8, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 1000
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/je$8;->c:Lcom/google/android/gms/internal/je;

    invoke-static {v0}, Lcom/google/android/gms/internal/je;->d(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/ke;

    move-result-object v0

    move-object v5, v6

    move-object v7, v0

    move v3, v2

    :goto_0
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ke;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3000
    iget-object v0, v7, Lcom/google/android/gms/internal/ke;->a:Ljava/lang/Object;

    .line 1000
    check-cast v0, Lcom/google/android/gms/internal/jd;

    if-eqz v0, :cond_12

    if-eqz v4, :cond_1

    :goto_1
    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jd;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    :goto_2
    move-object v3, v4

    :goto_3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, ""

    invoke-static {v4}, Lcom/google/android/gms/internal/lf;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/lf;

    move-result-object v4

    :goto_4
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ke;->a(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/ke;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/android/gms/internal/iu;->e()Lcom/google/android/gms/internal/iu;

    move-result-object v4

    move-object v5, v4

    move-object v4, v3

    move v3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/jd;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v4

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/iu;->d()Lcom/google/android/gms/internal/lf;

    move-result-object v4

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/je$8;->c:Lcom/google/android/gms/internal/je;

    invoke-static {v0}, Lcom/google/android/gms/internal/je;->d(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/ke;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ke;->e(Lcom/google/android/gms/internal/iu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jd;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/jd;

    iget-object v5, p0, Lcom/google/android/gms/internal/je$8;->c:Lcom/google/android/gms/internal/je;

    invoke-static {v5}, Lcom/google/android/gms/internal/je;->b(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/jz;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/jd;-><init>(Lcom/google/android/gms/internal/jz;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/je$8;->c:Lcom/google/android/gms/internal/je;

    iget-object v7, p0, Lcom/google/android/gms/internal/je$8;->c:Lcom/google/android/gms/internal/je;

    invoke-static {v7}, Lcom/google/android/gms/internal/je;->d(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/ke;

    move-result-object v7

    invoke-virtual {v7, v6, v0}, Lcom/google/android/gms/internal/ke;->a(Lcom/google/android/gms/internal/iu;Ljava/lang/Object;)Lcom/google/android/gms/internal/ke;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/ke;)Lcom/google/android/gms/internal/ke;

    move-object v11, v0

    move-object v0, v4

    move v4, v3

    move-object v3, v11

    :goto_5
    iget-object v5, p0, Lcom/google/android/gms/internal/je$8;->c:Lcom/google/android/gms/internal/je;

    invoke-static {v5}, Lcom/google/android/gms/internal/je;->b(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/jz;

    move-result-object v5

    invoke-interface {v5, v8}, Lcom/google/android/gms/internal/jz;->b(Lcom/google/android/gms/internal/kr;)V

    if-eqz v0, :cond_9

    new-instance v5, Lcom/google/android/gms/internal/ki;

    .line 4000
    iget-object v7, v8, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    .line 5000
    iget-object v7, v7, Lcom/google/android/gms/internal/kq;->g:Lcom/google/android/gms/internal/ll;

    .line 1000
    invoke-static {v0, v7}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ll;)Lcom/google/android/gms/internal/lm;

    move-result-object v0

    invoke-direct {v5, v0, v1, v2}, Lcom/google/android/gms/internal/ki;-><init>(Lcom/google/android/gms/internal/lm;ZZ)V

    move-object v0, v5

    :goto_6
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/jd;->b(Lcom/google/android/gms/internal/kr;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 16000
    iget-object v2, v8, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/kq;->f()Z

    move-result v2

    .line 1000
    if-nez v2, :cond_f

    sget-boolean v2, Lcom/google/android/gms/internal/je$8;->a:Z

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/google/android/gms/internal/je$8;->c:Lcom/google/android/gms/internal/je;

    invoke-static {v2}, Lcom/google/android/gms/internal/je;->e(Lcom/google/android/gms/internal/je;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "View does not exist but we have a tag"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_5
    if-nez v3, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jd;->b()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    move v3, v1

    :goto_7
    if-eqz v4, :cond_8

    :goto_8
    move-object v11, v0

    move-object v0, v4

    move v4, v3

    move-object v3, v11

    goto :goto_5

    :cond_7
    move v3, v2

    goto :goto_7

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/iu;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/jd;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v4

    goto :goto_8

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/je$8;->c:Lcom/google/android/gms/internal/je;

    invoke-static {v0}, Lcom/google/android/gms/internal/je;->b(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/jz;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/jz;->a(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/ki;

    move-result-object v7

    .line 6000
    iget-boolean v0, v7, Lcom/google/android/gms/internal/ki;->b:Z

    .line 1000
    if-eqz v0, :cond_a

    move-object v0, v7

    goto :goto_6

    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/je$8;->c:Lcom/google/android/gms/internal/je;

    invoke-static {v0}, Lcom/google/android/gms/internal/je;->d(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/ke;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ke;->c(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ke;

    move-result-object v0

    .line 7000
    iget-object v0, v0, Lcom/google/android/gms/internal/ke;->b:Lcom/google/android/gms/internal/hk;

    .line 1000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ke;

    .line 8000
    iget-object v1, v1, Lcom/google/android/gms/internal/ke;->a:Ljava/lang/Object;

    .line 1000
    check-cast v1, Lcom/google/android/gms/internal/jd;

    if-eqz v1, :cond_11

    invoke-static {}, Lcom/google/android/gms/internal/iu;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/jd;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lf;

    invoke-interface {v5, v0, v1}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    :goto_a
    move-object v5, v0

    goto :goto_9

    .line 9000
    :cond_b
    iget-object v0, v7, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 10000
    iget-object v0, v0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 1000
    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lr;

    .line 11000
    iget-object v7, v0, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 1000
    invoke-interface {v5, v7}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/lf;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 12000
    iget-object v7, v0, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 13000
    iget-object v0, v0, Lcom/google/android/gms/internal/lr;->b:Lcom/google/android/gms/internal/ls;

    .line 1000
    invoke-interface {v5, v7, v0}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v5

    goto :goto_b

    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/ki;

    .line 14000
    iget-object v1, v8, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    .line 15000
    iget-object v1, v1, Lcom/google/android/gms/internal/kq;->g:Lcom/google/android/gms/internal/ll;

    .line 1000
    invoke-static {v5, v1}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ll;)Lcom/google/android/gms/internal/lm;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ki;-><init>(Lcom/google/android/gms/internal/lm;ZZ)V

    goto/16 :goto_6

    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/internal/je$8;->c:Lcom/google/android/gms/internal/je;

    invoke-static {v2}, Lcom/google/android/gms/internal/je;->f(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/jf;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/internal/je$8;->c:Lcom/google/android/gms/internal/je;

    invoke-static {v5}, Lcom/google/android/gms/internal/je;->e(Lcom/google/android/gms/internal/je;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/je$8;->c:Lcom/google/android/gms/internal/je;

    invoke-static {v5}, Lcom/google/android/gms/internal/je;->g(Lcom/google/android/gms/internal/je;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/internal/je$8;->c:Lcom/google/android/gms/internal/je;

    invoke-static {v2}, Lcom/google/android/gms/internal/je;->c(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/jl;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/jl;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/jm;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/internal/je$8;->b:Lcom/google/android/gms/internal/ip;

    invoke-virtual {v3, v5, v2, v0}, Lcom/google/android/gms/internal/jd;->a(Lcom/google/android/gms/internal/ip;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ki;)Ljava/util/List;

    move-result-object v0

    if-nez v1, :cond_10

    if-nez v4, :cond_10

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/jd;->a(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/ks;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/je$8;->c:Lcom/google/android/gms/internal/je;

    invoke-static {v2, v8, v1}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/kr;Lcom/google/android/gms/internal/ks;)V

    .line 0
    :cond_10
    return-object v0

    :cond_11
    move-object v0, v5

    goto :goto_a

    :cond_12
    move v0, v3

    move-object v3, v4

    goto/16 :goto_3
.end method
