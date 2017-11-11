.class public final Lcom/google/android/gms/internal/ox;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/android/gms/internal/po;)Lcom/google/android/gms/internal/nv;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/nz;
        }
    .end annotation

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/po;->f()Lcom/google/android/gms/internal/pp;

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/pm;->P:Lcom/google/android/gms/internal/oi;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/oi;->a(Lcom/google/android/gms/internal/po;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nv;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/internal/pr; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/nx;->a:Lcom/google/android/gms/internal/nx;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/oe;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/oe;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/oe;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/oe;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/nw;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/nw;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/oe;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/oe;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Lcom/google/android/gms/internal/nv;Lcom/google/android/gms/internal/pq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/pm;->P:Lcom/google/android/gms/internal/oi;

    invoke-virtual {v0, p1, p0}, Lcom/google/android/gms/internal/oi;->a(Lcom/google/android/gms/internal/pq;Ljava/lang/Object;)V

    return-void
.end method
