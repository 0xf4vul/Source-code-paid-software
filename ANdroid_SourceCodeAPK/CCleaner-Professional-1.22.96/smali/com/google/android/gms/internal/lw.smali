.class public final Lcom/google/android/gms/internal/lw;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ls;
    .locals 4

    .prologue
    .line 0
    .line 2000
    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v0

    .line 1000
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/lt;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    .line 0
    instance-of v1, v0, Lcom/google/android/gms/internal/lq;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/lj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 3000
    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v2

    .line 0
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/lj;-><init>(Ljava/lang/Double;Lcom/google/android/gms/internal/ls;)V

    move-object v0, v1

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/lw;->a(Lcom/google/android/gms/internal/ls;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/google/firebase/database/c;

    const-string/jumbo v1, "Invalid Firebase Database priority (must be a string, double, ServerValue, or null)"

    invoke-direct {v0, v1}, Lcom/google/firebase/database/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/ls;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/ls;->f()Lcom/google/android/gms/internal/ls;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/google/android/gms/internal/ls;->b()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/android/gms/internal/lj;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/android/gms/internal/ly;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/android/gms/internal/li;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
