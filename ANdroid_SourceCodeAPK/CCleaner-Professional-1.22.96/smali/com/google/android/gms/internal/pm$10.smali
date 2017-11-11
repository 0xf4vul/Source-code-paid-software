.class final Lcom/google/android/gms/internal/pm$10;
.super Lcom/google/android/gms/internal/oi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/pm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/oi",
        "<",
        "Lcom/google/android/gms/internal/nv;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/oi;-><init>()V

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/pq;Lcom/google/android/gms/internal/nv;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    if-eqz p2, :cond_0

    .line 1000
    instance-of v0, p2, Lcom/google/android/gms/internal/nx;

    .line 0
    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pq;->e()Lcom/google/android/gms/internal/pq;

    :goto_0
    return-void

    .line 2000
    :cond_1
    instance-of v0, p2, Lcom/google/android/gms/internal/ob;

    .line 0
    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/nv;->h()Lcom/google/android/gms/internal/ob;

    move-result-object v0

    .line 3000
    iget-object v1, v0, Lcom/google/android/gms/internal/ob;->a:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Number;

    .line 0
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ob;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pq;->a(Ljava/lang/Number;)Lcom/google/android/gms/internal/pq;

    goto :goto_0

    .line 4000
    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ob;->a:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    .line 0
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ob;->f()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pq;->a(Z)Lcom/google/android/gms/internal/pq;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ob;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pq;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/pq;

    goto :goto_0

    .line 5000
    :cond_4
    instance-of v0, p2, Lcom/google/android/gms/internal/ns;

    .line 0
    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pq;->a()Lcom/google/android/gms/internal/pq;

    .line 7000
    instance-of v0, p2, Lcom/google/android/gms/internal/ns;

    .line 6000
    if-eqz v0, :cond_5

    check-cast p2, Lcom/google/android/gms/internal/ns;

    .line 0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ns;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nv;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/pm$10;->a(Lcom/google/android/gms/internal/pq;Lcom/google/android/gms/internal/nv;)V

    goto :goto_1

    .line 6000
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This is not a JSON Array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 0
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pq;->b()Lcom/google/android/gms/internal/pq;

    goto :goto_0

    .line 8000
    :cond_7
    instance-of v0, p2, Lcom/google/android/gms/internal/ny;

    .line 0
    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pq;->c()Lcom/google/android/gms/internal/pq;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/nv;->g()Lcom/google/android/gms/internal/ny;

    move-result-object v0

    .line 9000
    iget-object v0, v0, Lcom/google/android/gms/internal/ny;->a:Lcom/google/android/gms/internal/ou;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ou;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/pq;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/pq;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nv;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/pm$10;->a(Lcom/google/android/gms/internal/pq;Lcom/google/android/gms/internal/nv;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pq;->d()Lcom/google/android/gms/internal/pq;

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Couldn\'t write "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/po;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    .line 10000
    sget-object v0, Lcom/google/android/gms/internal/pm$19;->a:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/po;->f()Lcom/google/android/gms/internal/pp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/pp;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ob;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/po;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ob;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/po;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/ob;

    new-instance v2, Lcom/google/android/gms/internal/ot;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ot;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ob;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/google/android/gms/internal/ob;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/po;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ob;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/po;->k()V

    sget-object v0, Lcom/google/android/gms/internal/nx;->a:Lcom/google/android/gms/internal/nx;

    goto :goto_0

    :pswitch_4
    new-instance v1, Lcom/google/android/gms/internal/ns;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ns;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/po;->a()V

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/po;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/pm$10;->a(Lcom/google/android/gms/internal/po;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nv;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ns;->a(Lcom/google/android/gms/internal/nv;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/po;->b()V

    move-object v0, v1

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/google/android/gms/internal/ny;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ny;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/po;->c()V

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/po;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/po;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/pm$10;->a(Lcom/google/android/gms/internal/po;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nv;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ny;->a(Ljava/lang/String;Lcom/google/android/gms/internal/nv;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/po;->d()V

    move-object v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final bridge synthetic a(Lcom/google/android/gms/internal/pq;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/android/gms/internal/nv;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/pm$10;->a(Lcom/google/android/gms/internal/pq;Lcom/google/android/gms/internal/nv;)V

    return-void
.end method
