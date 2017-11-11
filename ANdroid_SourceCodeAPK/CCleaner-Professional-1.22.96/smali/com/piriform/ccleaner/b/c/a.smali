.class public final Lcom/piriform/ccleaner/b/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/b/c/a$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/piriform/ccleaner/b/a;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/b/a;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/piriform/ccleaner/b/c/a;->a:Lcom/piriform/ccleaner/b/a;

    .line 56
    return-void
.end method


# virtual methods
.method public final a(JLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/a/a/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 60
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/a/d;

    .line 61
    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->l()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->p()Lcom/piriform/ccleaner/core/i;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/i;->d()J

    move-result-wide v4

    .line 65
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/piriform/ccleaner/b/c/a;->a:Lcom/piriform/ccleaner/b/a;

    sget-object v2, Lcom/piriform/ccleaner/b/b;->p:Lcom/piriform/ccleaner/b/b;

    const-string/jumbo v3, "Total"

    sget-object v0, Lcom/piriform/ccleaner/core/h;->c:Lcom/piriform/ccleaner/core/h;

    sget-object v4, Lcom/piriform/ccleaner/core/h;->a:Lcom/piriform/ccleaner/core/h;

    invoke-virtual {v0, p1, p2, v4}, Lcom/piriform/ccleaner/core/h;->b(JLcom/piriform/ccleaner/core/h;)J

    move-result-wide v4

    invoke-interface/range {v1 .. v6}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;Ljava/lang/String;JLjava/util/Map;)V

    .line 69
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/b/c/a$a;)V
    .locals 6

    .prologue
    .line 98
    iget-object v0, p0, Lcom/piriform/ccleaner/b/c/a;->a:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->l:Lcom/piriform/ccleaner/b/b;

    .line 1049
    iget-object v2, p1, Lcom/piriform/ccleaner/b/c/a$a;->c:Ljava/lang/String;

    .line 98
    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;Ljava/lang/String;J)V

    .line 99
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/a/a/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/a/d;

    .line 79
    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->p()Lcom/piriform/ccleaner/core/i;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Lcom/piriform/ccleaner/core/i;->d()J

    move-result-wide v2

    .line 81
    iget-object v4, p0, Lcom/piriform/ccleaner/b/c/a;->a:Lcom/piriform/ccleaner/b/a;

    sget-object v5, Lcom/piriform/ccleaner/b/b;->q:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->l()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0, v2, v3}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;Ljava/lang/String;J)V

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method
