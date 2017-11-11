.class public abstract Lcom/google/android/gms/internal/qc;
.super Ljava/lang/Object;


# instance fields
.field protected volatile ah:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/qc;->ah:I

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/qc;[BI)Lcom/google/android/gms/internal/qc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/qc;",
            ">(TT;[BI)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/qb;
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/pu;->a([BI)Lcom/google/android/gms/internal/pu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/qc;->a(Lcom/google/android/gms/internal/pu;)Lcom/google/android/gms/internal/qc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pu;->a(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/qb; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final a(Lcom/google/android/gms/internal/qc;)[B
    .locals 3

    .prologue
    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/qc;->f()I

    move-result v0

    new-array v0, v0, [B

    array-length v1, v0

    .line 1000
    :try_start_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/pv;->a([BI)Lcom/google/android/gms/internal/pv;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/qc;->a(Lcom/google/android/gms/internal/pv;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/pv;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    return-object v0

    .line 1000
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(Lcom/google/android/gms/internal/pu;)Lcom/google/android/gms/internal/qc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public a(Lcom/google/android/gms/internal/pv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/qc;->d()Lcom/google/android/gms/internal/qc;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/android/gms/internal/qc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/qc;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/qc;->ah:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/qc;->f()I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/qc;->ah:I

    return v0
.end method

.method public final f()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/qc;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/qc;->ah:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/qd;->a(Lcom/google/android/gms/internal/qc;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
