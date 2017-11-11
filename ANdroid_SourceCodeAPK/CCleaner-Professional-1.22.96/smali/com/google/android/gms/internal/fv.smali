.class public final Lcom/google/android/gms/internal/fv;
.super Lcom/google/android/gms/internal/oi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/oi",
        "<",
        "Lcom/google/android/gms/internal/zzbml;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/google/android/gms/internal/np;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/oi;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/po;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    .line 1000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/po;->f()Lcom/google/android/gms/internal/pp;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/pp;->i:Lcom/google/android/gms/internal/pp;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/po;->k()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzbml;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzbml;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->a:Lcom/google/android/gms/internal/np;

    const-class v2, Lcom/google/android/gms/internal/zzbmj;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/np;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/oi;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/po;->a()V

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/po;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/oi;->a(Lcom/google/android/gms/internal/po;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbmj;

    .line 2000
    iget-object v3, v1, Lcom/google/android/gms/internal/zzbml;->b:Ljava/util/List;

    .line 1000
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/po;->b()V

    move-object v0, v1

    .line 0
    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/pq;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 0
    check-cast p2, Lcom/google/android/gms/internal/zzbml;

    .line 3000
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pq;->e()Lcom/google/android/gms/internal/pq;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->a:Lcom/google/android/gms/internal/np;

    const-class v1, Lcom/google/android/gms/internal/zzbmj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/np;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/oi;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pq;->a()Lcom/google/android/gms/internal/pq;

    .line 4000
    iget-object v4, p2, Lcom/google/android/gms/internal/zzbml;->b:Ljava/util/List;

    .line 3000
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbmj;

    invoke-virtual {v3, p1, v0}, Lcom/google/android/gms/internal/oi;->a(Lcom/google/android/gms/internal/pq;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pq;->b()Lcom/google/android/gms/internal/pq;

    goto :goto_0
.end method
