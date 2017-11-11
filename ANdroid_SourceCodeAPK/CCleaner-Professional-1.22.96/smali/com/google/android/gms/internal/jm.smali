.class public final Lcom/google/android/gms/internal/jm;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/android/gms/internal/iu;

.field final b:Lcom/google/android/gms/internal/jl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/jl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/jm;->a:Lcom/google/android/gms/internal/iu;

    iput-object p2, p0, Lcom/google/android/gms/internal/jm;->b:Lcom/google/android/gms/internal/jl;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/jm;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/jm;

    iget-object v1, p0, Lcom/google/android/gms/internal/jm;->a:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/iu;->a(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/iu;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/jm;->b:Lcom/google/android/gms/internal/jl;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/jm;-><init>(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/jl;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/jm;->b:Lcom/google/android/gms/internal/jl;

    iget-object v1, p0, Lcom/google/android/gms/internal/jm;->a:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/iu;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    move-result-object v1

    .line 21000
    iget-object v0, v0, Lcom/google/android/gms/internal/jl;->a:Lcom/google/android/gms/internal/ik;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ik;->c(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/jm;->b:Lcom/google/android/gms/internal/jl;

    iget-object v1, p0, Lcom/google/android/gms/internal/jm;->a:Lcom/google/android/gms/internal/iu;

    .line 19000
    sget-boolean v2, Lcom/google/android/gms/internal/jl;->e:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Either existingEventSnap or existingServerSnap must exist"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/iu;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/jl;->a:Lcom/google/android/gms/internal/ik;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ik;->b(Lcom/google/android/gms/internal/iu;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/jl;->a:Lcom/google/android/gms/internal/ik;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ik;->d(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ik;

    move-result-object v0

    .line 20000
    iget-object v1, v0, Lcom/google/android/gms/internal/ik;->a:Lcom/google/android/gms/internal/ke;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ke;->b()Z

    move-result v1

    .line 19000
    if-eqz v1, :cond_2

    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ik;->a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ls;
    .locals 3

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/jm;->b:Lcom/google/android/gms/internal/jl;

    iget-object v0, p0, Lcom/google/android/gms/internal/jm;->a:Lcom/google/android/gms/internal/iu;

    .line 22000
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/iu;->a(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/iu;

    move-result-object v2

    iget-object v0, v1, Lcom/google/android/gms/internal/jl;->a:Lcom/google/android/gms/internal/ik;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ik;->c(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ki;->a(Lcom/google/android/gms/internal/lf;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/internal/jl;->a:Lcom/google/android/gms/internal/ik;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ik;->d(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ik;

    move-result-object v0

    .line 23000
    iget-object v1, p2, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 24000
    iget-object v1, v1, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 22000
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ls;->c(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/ls;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ik;->a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 0
    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;
    .locals 4

    .prologue
    .line 0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2000
    iget-object v1, p0, Lcom/google/android/gms/internal/jm;->b:Lcom/google/android/gms/internal/jl;

    iget-object v2, p0, Lcom/google/android/gms/internal/jm;->a:Lcom/google/android/gms/internal/iu;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/google/android/gms/internal/jl;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;Ljava/util/List;Z)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method public final b(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;
    .locals 8

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/jm;->b:Lcom/google/android/gms/internal/jl;

    iget-object v2, p0, Lcom/google/android/gms/internal/jm;->a:Lcom/google/android/gms/internal/iu;

    .line 3000
    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v0

    iget-object v3, v1, Lcom/google/android/gms/internal/jl;->a:Lcom/google/android/gms/internal/ik;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ik;->c(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/google/android/gms/internal/ls;->e()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v3}, Lcom/google/android/gms/internal/ls;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lr;

    .line 4000
    iget-object v3, v0, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 5000
    iget-object v0, v0, Lcom/google/android/gms/internal/lr;->b:Lcom/google/android/gms/internal/ls;

    .line 3000
    invoke-interface {v1, v3, v0}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/google/android/gms/internal/jl;->a:Lcom/google/android/gms/internal/ik;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ik;->d(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ik;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ls;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lr;

    new-instance v4, Lcom/google/android/gms/internal/iu;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/android/gms/internal/lf;

    const/4 v6, 0x0

    .line 6000
    iget-object v7, v0, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 3000
    aput-object v7, v5, v6

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/iu;-><init>([Lcom/google/android/gms/internal/lf;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ik;->d(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ik;

    move-result-object v4

    .line 7000
    iget-object v5, v0, Lcom/google/android/gms/internal/lr;->b:Lcom/google/android/gms/internal/ls;

    .line 3000
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ik;->a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v4

    .line 8000
    iget-object v0, v0, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 3000
    invoke-interface {v2, v0, v4}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 9000
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcom/google/android/gms/internal/ik;->a:Lcom/google/android/gms/internal/ke;

    .line 10000
    iget-object v0, v0, Lcom/google/android/gms/internal/ke;->a:Ljava/lang/Object;

    .line 9000
    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/google/android/gms/internal/ik;->a:Lcom/google/android/gms/internal/ke;

    .line 11000
    iget-object v0, v0, Lcom/google/android/gms/internal/ke;->a:Ljava/lang/Object;

    .line 9000
    check-cast v0, Lcom/google/android/gms/internal/ls;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lr;

    new-instance v4, Lcom/google/android/gms/internal/lr;

    .line 12000
    iget-object v5, v0, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 13000
    iget-object v0, v0, Lcom/google/android/gms/internal/lr;->b:Lcom/google/android/gms/internal/ls;

    .line 9000
    invoke-direct {v4, v5, v0}, Lcom/google/android/gms/internal/lr;-><init>(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ik;->a:Lcom/google/android/gms/internal/ke;

    .line 14000
    iget-object v0, v0, Lcom/google/android/gms/internal/ke;->b:Lcom/google/android/gms/internal/hk;

    .line 9000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ke;

    .line 15000
    iget-object v5, v1, Lcom/google/android/gms/internal/ke;->a:Ljava/lang/Object;

    .line 9000
    if-eqz v5, :cond_3

    new-instance v5, Lcom/google/android/gms/internal/lr;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lf;

    .line 16000
    iget-object v1, v1, Lcom/google/android/gms/internal/ke;->a:Ljava/lang/Object;

    .line 9000
    check-cast v1, Lcom/google/android/gms/internal/ls;

    invoke-direct {v5, v0, v1}, Lcom/google/android/gms/internal/lr;-><init>(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3000
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lr;

    .line 17000
    iget-object v3, v0, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 18000
    iget-object v0, v0, Lcom/google/android/gms/internal/lr;->b:Lcom/google/android/gms/internal/ls;

    .line 3000
    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v2

    goto :goto_4

    :cond_5
    move-object v1, v2

    :cond_6
    :goto_5
    return-object v1

    :cond_7
    move-object v1, v0

    goto :goto_5
.end method
