.class public final Lcom/google/android/gms/internal/ja;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/android/gms/internal/ik;Ljava/util/Map;)Lcom/google/android/gms/internal/ik;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ik;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/internal/ik;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ik;->a()Lcom/google/android/gms/internal/ik;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ik;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/iu;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ls;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ja;->a(Lcom/google/android/gms/internal/ls;Ljava/util/Map;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/ik;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ik;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static a(Lcom/google/android/gms/internal/ls;Ljava/util/Map;)Lcom/google/android/gms/internal/ls;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ls;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/internal/ls;"
        }
    .end annotation

    .prologue
    .line 0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ls;->f()Lcom/google/android/gms/internal/ls;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->a()Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v2, ".sv"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, ".sv"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/internal/lw;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ls;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/internal/ls;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Lcom/google/android/gms/internal/ls;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1000
    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v3, ".sv"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, ".sv"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 0
    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ls;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/google/android/gms/internal/ls;->f()Lcom/google/android/gms/internal/ls;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lt;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object p0

    :cond_3
    :goto_0
    return-object p0

    :cond_4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ls;->b()Z

    move-result v0

    if-nez v0, :cond_3

    check-cast p0, Lcom/google/android/gms/internal/lg;

    new-instance v0, Lcom/google/android/gms/internal/jb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/jb;-><init>(Lcom/google/android/gms/internal/ls;)V

    new-instance v1, Lcom/google/android/gms/internal/ja$2;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ja$2;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/jb;)V

    .line 2000
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/internal/lg;->a(Lcom/google/android/gms/internal/lg$a;Z)V

    .line 3000
    iget-object v1, v0, Lcom/google/android/gms/internal/jb;->a:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-interface {v1}, Lcom/google/android/gms/internal/ls;->f()Lcom/google/android/gms/internal/ls;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/internal/jb;->a:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object p0

    goto :goto_0

    .line 5000
    :cond_5
    iget-object p0, v0, Lcom/google/android/gms/internal/jb;->a:Lcom/google/android/gms/internal/ls;

    goto :goto_0
.end method

.method public static a(Lcom/google/android/gms/internal/mm;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/mm;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "timestamp"

    invoke-interface {p0}, Lcom/google/android/gms/internal/mm;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
