.class final Lcom/google/android/gms/internal/iw$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/je$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/iw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/iw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/iw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/iw$10;->a:Lcom/google/android/gms/internal/iw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/kr;)V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/iw$10;->a:Lcom/google/android/gms/internal/iw;

    invoke-static {v0}, Lcom/google/android/gms/internal/iw;->c(Lcom/google/android/gms/internal/iw;)Lcom/google/android/gms/internal/ic;

    move-result-object v0

    .line 4000
    iget-object v1, p1, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/iu;->c()Ljava/util/List;

    move-result-object v1

    .line 5000
    iget-object v2, p1, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    .line 0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/kq;->e()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ic;->a(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/kr;Lcom/google/android/gms/internal/jf;Lcom/google/android/gms/internal/ib;Lcom/google/android/gms/internal/je$a;)V
    .locals 6

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/iw$10;->a:Lcom/google/android/gms/internal/iw;

    invoke-static {v0}, Lcom/google/android/gms/internal/iw;->c(Lcom/google/android/gms/internal/iw;)Lcom/google/android/gms/internal/ic;

    move-result-object v0

    .line 1000
    iget-object v1, p1, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/iu;->c()Ljava/util/List;

    move-result-object v1

    .line 2000
    iget-object v2, p1, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    .line 0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/kq;->e()Ljava/util/Map;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 3000
    iget-wide v4, p2, Lcom/google/android/gms/internal/jf;->a:J

    .line 0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_0
    new-instance v5, Lcom/google/android/gms/internal/iw$10$1;

    invoke-direct {v5, p0, p4}, Lcom/google/android/gms/internal/iw$10$1;-><init>(Lcom/google/android/gms/internal/iw$10;Lcom/google/android/gms/internal/je$a;)V

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ic;->a(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/ib;Ljava/lang/Long;Lcom/google/android/gms/internal/if;)V

    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
