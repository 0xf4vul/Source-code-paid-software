.class public final Lcom/piriform/ccleaner/t/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/t/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/t/q$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/piriform/ccleaner/t/z;

.field private final b:Lcom/piriform/ccleaner/t/q$a;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/t/z;Lcom/piriform/ccleaner/t/q$a;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/piriform/ccleaner/t/q;->a:Lcom/piriform/ccleaner/t/z;

    .line 39
    iput-object p2, p0, Lcom/piriform/ccleaner/t/q;->b:Lcom/piriform/ccleaner/t/q$a;

    .line 40
    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/t/s;Lcom/piriform/ccleaner/t/u;)V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/t/s;Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/t/s;Ljava/util/UUID;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/t/s;",
            "Ljava/util/UUID;",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/t/x$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 54
    .line 1064
    iget-object v0, p1, Lcom/piriform/ccleaner/t/s;->c:Lcom/piriform/ccleaner/t/y;

    .line 1093
    iget-object v0, v0, Lcom/piriform/ccleaner/t/y;->e:Ljava/util/List;

    .line 57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v4, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/t/u;

    .line 58
    iget-object v1, p0, Lcom/piriform/ccleaner/t/q;->b:Lcom/piriform/ccleaner/t/q$a;

    .line 2029
    iget-object v1, v1, Lcom/piriform/ccleaner/t/q$a;->c:Ljava/util/Collection;

    .line 2140
    iget-object v7, v0, Lcom/piriform/ccleaner/t/u;->d:Lcom/piriform/ccleaner/t/u$b;

    .line 2029
    invoke-interface {v1, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    long-to-float v1, v4

    iget-object v4, p0, Lcom/piriform/ccleaner/t/q;->b:Lcom/piriform/ccleaner/t/q$a;

    invoke-static {v4}, Lcom/piriform/ccleaner/t/q$a;->a(Lcom/piriform/ccleaner/t/q$a;)Lcom/piriform/ccleaner/t/x$b;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/piriform/ccleaner/t/u;->a(Lcom/piriform/ccleaner/t/x$b;)Lcom/piriform/ccleaner/t/x;

    move-result-object v4

    .line 2150
    iget v4, v4, Lcom/piriform/ccleaner/t/x;->a:F

    .line 59
    add-float/2addr v1, v4

    float-to-long v4, v1

    .line 60
    long-to-float v1, v2

    .line 3132
    iget-object v0, v0, Lcom/piriform/ccleaner/t/u;->c:Lcom/piriform/ccleaner/t/x;

    .line 3150
    iget v0, v0, Lcom/piriform/ccleaner/t/x;->a:F

    .line 60
    add-float/2addr v0, v1

    float-to-long v0, v0

    move-wide v2, v4

    :goto_1
    move-wide v4, v2

    move-wide v2, v0

    .line 62
    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/t/q;->a:Lcom/piriform/ccleaner/t/z;

    invoke-interface {v0, v4, v5, v2, v3}, Lcom/piriform/ccleaner/t/z;->a(JJ)V

    .line 65
    return-void

    :cond_1
    move-wide v0, v2

    move-wide v2, v4

    goto :goto_1
.end method
