.class final Lcom/google/android/gms/internal/pf$a;
.super Lcom/google/android/gms/internal/oi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/pf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/oi",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/pf;

.field private final b:Lcom/google/android/gms/internal/oi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/oi",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/oi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/oi",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ov;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ov",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/pf;Lcom/google/android/gms/internal/np;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/oi;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/oi;Lcom/google/android/gms/internal/ov;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/np;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/oi",
            "<TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/oi",
            "<TV;>;",
            "Lcom/google/android/gms/internal/ov",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/pf$a;->a:Lcom/google/android/gms/internal/pf;

    invoke-direct {p0}, Lcom/google/android/gms/internal/oi;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/pl;

    invoke-direct {v0, p2, p4, p3}, Lcom/google/android/gms/internal/pl;-><init>(Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/oi;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/pf$a;->b:Lcom/google/android/gms/internal/oi;

    new-instance v0, Lcom/google/android/gms/internal/pl;

    invoke-direct {v0, p2, p6, p5}, Lcom/google/android/gms/internal/pl;-><init>(Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/oi;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/pf$a;->c:Lcom/google/android/gms/internal/oi;

    iput-object p7, p0, Lcom/google/android/gms/internal/pf$a;->d:Lcom/google/android/gms/internal/ov;

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

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/internal/pp;->i:Lcom/google/android/gms/internal/pp;

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/po;->k()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pf$a;->d:Lcom/google/android/gms/internal/ov;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ov;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v2, Lcom/google/android/gms/internal/pp;->a:Lcom/google/android/gms/internal/pp;

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/po;->a()V

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/po;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/po;->a()V

    iget-object v1, p0, Lcom/google/android/gms/internal/pf$a;->b:Lcom/google/android/gms/internal/oi;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/oi;->a(Lcom/google/android/gms/internal/po;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/pf$a;->c:Lcom/google/android/gms/internal/oi;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/oi;->a(Lcom/google/android/gms/internal/po;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/oe;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "duplicate key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/oe;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/po;->b()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/po;->b()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/po;->c()V

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/po;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/google/android/gms/internal/os;->a:Lcom/google/android/gms/internal/os;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/os;->a(Lcom/google/android/gms/internal/po;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/pf$a;->b:Lcom/google/android/gms/internal/oi;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/oi;->a(Lcom/google/android/gms/internal/po;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/pf$a;->c:Lcom/google/android/gms/internal/oi;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/oi;->a(Lcom/google/android/gms/internal/po;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/oe;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "duplicate key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/oe;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/po;->d()V

    goto/16 :goto_0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/pq;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 0
    check-cast p2, Ljava/util/Map;

    .line 2000
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pq;->e()Lcom/google/android/gms/internal/pq;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pf$a;->a:Lcom/google/android/gms/internal/pf;

    invoke-static {v0}, Lcom/google/android/gms/internal/pf;->a(Lcom/google/android/gms/internal/pf;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pq;->c()Lcom/google/android/gms/internal/pq;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/pq;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/pq;

    iget-object v2, p0, Lcom/google/android/gms/internal/pf$a;->c:Lcom/google/android/gms/internal/oi;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/oi;->a(Lcom/google/android/gms/internal/pq;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pq;->d()Lcom/google/android/gms/internal/pq;

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v6, p0, Lcom/google/android/gms/internal/pf$a;->b:Lcom/google/android/gms/internal/oi;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/oi;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/nv;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3000
    instance-of v0, v6, Lcom/google/android/gms/internal/ns;

    .line 2000
    if-nez v0, :cond_3

    .line 4000
    instance-of v0, v6, Lcom/google/android/gms/internal/ny;

    .line 2000
    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_3
    or-int/2addr v0, v1

    move v1, v0

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pq;->a()Lcom/google/android/gms/internal/pq;

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pq;->a()Lcom/google/android/gms/internal/pq;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nv;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ox;->a(Lcom/google/android/gms/internal/nv;Lcom/google/android/gms/internal/pq;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/pf$a;->c:Lcom/google/android/gms/internal/oi;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/oi;->a(Lcom/google/android/gms/internal/pq;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pq;->b()Lcom/google/android/gms/internal/pq;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pq;->b()Lcom/google/android/gms/internal/pq;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pq;->c()Lcom/google/android/gms/internal/pq;

    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_d

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nv;

    .line 6000
    instance-of v1, v0, Lcom/google/android/gms/internal/ob;

    .line 5000
    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nv;->h()Lcom/google/android/gms/internal/ob;

    move-result-object v0

    .line 7000
    iget-object v1, v0, Lcom/google/android/gms/internal/ob;->a:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Number;

    .line 5000
    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ob;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2000
    :goto_6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pq;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/pq;

    iget-object v0, p0, Lcom/google/android/gms/internal/pf$a;->c:Lcom/google/android/gms/internal/oi;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/oi;->a(Lcom/google/android/gms/internal/pq;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 8000
    :cond_8
    iget-object v1, v0, Lcom/google/android/gms/internal/ob;->a:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    .line 5000
    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ob;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 9000
    :cond_9
    iget-object v1, v0, Lcom/google/android/gms/internal/ob;->a:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    .line 5000
    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ob;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 10000
    :cond_b
    instance-of v0, v0, Lcom/google/android/gms/internal/nx;

    .line 5000
    if-eqz v0, :cond_c

    const-string/jumbo v0, "null"

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2000
    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pq;->d()Lcom/google/android/gms/internal/pq;

    goto/16 :goto_0
.end method
