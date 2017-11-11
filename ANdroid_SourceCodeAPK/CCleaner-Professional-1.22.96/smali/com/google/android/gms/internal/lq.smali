.class public final Lcom/google/android/gms/internal/lq;
.super Lcom/google/android/gms/internal/lo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/lo",
        "<",
        "Lcom/google/android/gms/internal/lq;",
        ">;"
    }
.end annotation


# instance fields
.field final a:J


# direct methods
.method public constructor <init>(Ljava/lang/Long;Lcom/google/android/gms/internal/ls;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/lo;-><init>(Lcom/google/android/gms/internal/ls;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/lq;->a:J

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/google/android/gms/internal/lo;)I
    .locals 4

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/lq;

    .line 1000
    iget-wide v0, p0, Lcom/google/android/gms/internal/lq;->a:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/lq;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mv;->a(JJ)I

    move-result v0

    .line 0
    return v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;
    .locals 4

    .prologue
    .line 0
    .line 2000
    new-instance v0, Lcom/google/android/gms/internal/lq;

    iget-wide v2, p0, Lcom/google/android/gms/internal/lq;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/lq;-><init>(Ljava/lang/Long;Lcom/google/android/gms/internal/ls;)V

    .line 0
    return-object v0
.end method

.method public final a()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/lq;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ls$a;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lq;->b(Lcom/google/android/gms/internal/ls$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "number:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/lq;->a:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mv;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/lq;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/lq;

    iget-wide v2, p0, Lcom/google/android/gms/internal/lq;->a:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/lq;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/lq;->c:Lcom/google/android/gms/internal/ls;

    iget-object v2, p1, Lcom/google/android/gms/internal/lq;->c:Lcom/google/android/gms/internal/ls;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/lq;->a:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/lq;->a:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/lq;->c:Lcom/google/android/gms/internal/ls;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected final k_()Lcom/google/android/gms/internal/lo$a;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/lo$a;->c:Lcom/google/android/gms/internal/lo$a;

    return-object v0
.end method
