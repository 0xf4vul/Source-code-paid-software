.class final Lcom/google/gson/c/a$1;
.super Lcom/google/gson/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1600
    invoke-direct {p0}, Lcom/google/gson/internal/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/c/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1602
    instance-of v0, p1, Lcom/google/gson/internal/bind/c;

    if-eqz v0, :cond_0

    .line 1603
    check-cast p1, Lcom/google/gson/internal/bind/c;

    .line 2220
    sget-object v0, Lcom/google/gson/c/b;->e:Lcom/google/gson/c/b;

    invoke-virtual {p1, v0}, Lcom/google/gson/internal/bind/c;->a(Lcom/google/gson/c/b;)V

    .line 2221
    invoke-virtual {p1}, Lcom/google/gson/internal/bind/c;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 2222
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2223
    iget-object v1, p1, Lcom/google/gson/internal/bind/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2224
    iget-object v1, p1, Lcom/google/gson/internal/bind/c;->a:Ljava/util/List;

    new-instance v2, Lcom/google/gson/q;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/google/gson/q;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1615
    :goto_0
    return-void

    .line 1606
    :cond_0
    invoke-static {p1}, Lcom/google/gson/c/a;->a(Lcom/google/gson/c/a;)I

    move-result v0

    .line 1607
    if-nez v0, :cond_1

    .line 1608
    invoke-static {p1}, Lcom/google/gson/c/a;->b(Lcom/google/gson/c/a;)I

    move-result v0

    .line 1610
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 1611
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/google/gson/c/a;->a(Lcom/google/gson/c/a;I)I

    goto :goto_0

    .line 1612
    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 1613
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/gson/c/a;->a(Lcom/google/gson/c/a;I)I

    goto :goto_0

    .line 1614
    :cond_3
    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    .line 1615
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/gson/c/a;->a(Lcom/google/gson/c/a;I)I

    goto :goto_0

    .line 1617
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/gson/c/a;->f()Lcom/google/gson/c/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/gson/c/a;->c(Lcom/google/gson/c/a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/gson/c/a;->d(Lcom/google/gson/c/a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gson/c/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
