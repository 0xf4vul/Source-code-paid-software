.class public final Lcom/google/android/gms/internal/pe;
.super Lcom/google/android/gms/internal/pq;


# static fields
.field private static final h:Ljava/io/Writer;

.field private static final i:Lcom/google/android/gms/internal/ob;


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/nv;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/google/android/gms/internal/nv;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/pe$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/pe$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/pe;->h:Ljava/io/Writer;

    new-instance v0, Lcom/google/android/gms/internal/ob;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ob;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/pe;->i:Lcom/google/android/gms/internal/ob;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/pe;->h:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/pq;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/pe;->a:Ljava/util/List;

    sget-object v0, Lcom/google/android/gms/internal/nx;->a:Lcom/google/android/gms/internal/nx;

    iput-object v0, p0, Lcom/google/android/gms/internal/pe;->b:Lcom/google/android/gms/internal/nv;

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/nv;)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/pe;->j:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1000
    instance-of v0, p1, Lcom/google/android/gms/internal/nx;

    .line 0
    if-eqz v0, :cond_0

    .line 2000
    iget-boolean v0, p0, Lcom/google/android/gms/internal/pq;->g:Z

    .line 0
    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/pe;->f()Lcom/google/android/gms/internal/nv;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ny;

    iget-object v1, p0, Lcom/google/android/gms/internal/pe;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ny;->a(Ljava/lang/String;Lcom/google/android/gms/internal/nv;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/pe;->j:Ljava/lang/String;

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/pe;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/google/android/gms/internal/pe;->b:Lcom/google/android/gms/internal/nv;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/pe;->f()Lcom/google/android/gms/internal/nv;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ns;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/google/android/gms/internal/ns;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ns;->a(Lcom/google/android/gms/internal/nv;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private f()Lcom/google/android/gms/internal/nv;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/pe;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/pe;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nv;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/pq;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ns;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ns;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/pe;->a(Lcom/google/android/gms/internal/nv;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/pe;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(J)Lcom/google/android/gms/internal/pq;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ob;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ob;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/pe;->a(Lcom/google/android/gms/internal/nv;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Number;)Lcom/google/android/gms/internal/pq;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/pe;->e()Lcom/google/android/gms/internal/pq;

    move-result-object p0

    :goto_0
    return-object p0

    .line 3000
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/pq;->e:Z

    .line 0
    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "JSON forbids NaN and infinities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ob;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ob;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/pe;->a(Lcom/google/android/gms/internal/nv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/pq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/pe;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pe;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/pe;->f()Lcom/google/android/gms/internal/nv;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/ny;

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/google/android/gms/internal/pe;->j:Ljava/lang/String;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final a(Z)Lcom/google/android/gms/internal/pq;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ob;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ob;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/pe;->a(Lcom/google/android/gms/internal/nv;)V

    return-object p0
.end method

.method public final b()Lcom/google/android/gms/internal/pq;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/pe;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pe;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/pe;->f()Lcom/google/android/gms/internal/nv;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/ns;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/pe;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/pe;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/pq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/pe;->e()Lcom/google/android/gms/internal/pq;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ob;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ob;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/pe;->a(Lcom/google/android/gms/internal/nv;)V

    goto :goto_0
.end method

.method public final c()Lcom/google/android/gms/internal/pq;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ny;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ny;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/pe;->a(Lcom/google/android/gms/internal/nv;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/pe;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/pe;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pe;->a:Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/pe;->i:Lcom/google/android/gms/internal/ob;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()Lcom/google/android/gms/internal/pq;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/pe;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pe;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/pe;->f()Lcom/google/android/gms/internal/nv;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/ny;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/pe;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/pe;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final e()Lcom/google/android/gms/internal/pq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/nx;->a:Lcom/google/android/gms/internal/nx;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/pe;->a(Lcom/google/android/gms/internal/nv;)V

    return-object p0
.end method

.method public final flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
