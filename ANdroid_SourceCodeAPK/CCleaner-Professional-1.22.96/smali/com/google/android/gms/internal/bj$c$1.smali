.class final Lcom/google/android/gms/internal/bj$c$1;
.super Lcom/google/android/gms/internal/bj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bj$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/bj$c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bj$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bj$c$1;->a:Lcom/google/android/gms/internal/bj$c;

    invoke-direct {p0}, Lcom/google/android/gms/internal/bj$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/zzadw;)V
    .locals 7

    .prologue
    .line 0
    .line 1000
    iget v0, p2, Lcom/google/android/gms/internal/zzadw;->a:I

    .line 0
    const/16 v1, 0x1966

    if-eq v0, v1, :cond_0

    .line 2000
    iget v0, p2, Lcom/google/android/gms/internal/zzadw;->a:I

    .line 0
    const/16 v1, 0x196b

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bj$c$1;->a:Lcom/google/android/gms/internal/bj$c;

    new-instance v1, Lcom/google/android/gms/internal/bj$d;

    .line 3000
    iget v2, p2, Lcom/google/android/gms/internal/zzadw;->a:I

    .line 0
    invoke-static {v2}, Lcom/google/android/gms/internal/bj;->a(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/gms/internal/bj;->b(Lcom/google/android/gms/internal/zzadw;)Ljava/util/HashMap;

    move-result-object v3

    .line 4000
    iget-wide v4, p2, Lcom/google/android/gms/internal/zzadw;->c:J

    .line 0
    invoke-static {p2}, Lcom/google/android/gms/internal/bj;->a(Lcom/google/android/gms/internal/zzadw;)Ljava/util/List;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/bj$d;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/Map;JLjava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bj$c;->a(Lcom/google/android/gms/common/api/g;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bj$c$1;->a:Lcom/google/android/gms/internal/bj$c;

    new-instance v1, Lcom/google/android/gms/internal/bj$d;

    .line 5000
    iget v2, p2, Lcom/google/android/gms/internal/zzadw;->a:I

    .line 0
    invoke-static {v2}, Lcom/google/android/gms/internal/bj;->a(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/gms/internal/bj;->b(Lcom/google/android/gms/internal/zzadw;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p2}, Lcom/google/android/gms/internal/bj;->a(Lcom/google/android/gms/internal/zzadw;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/bj$d;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bj$c;->a(Lcom/google/android/gms/common/api/g;)V

    goto :goto_0
.end method
