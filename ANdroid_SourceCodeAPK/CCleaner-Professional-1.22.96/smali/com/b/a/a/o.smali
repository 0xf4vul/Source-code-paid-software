.class final Lcom/b/a/a/o;
.super Lc/a/a/a/a/d/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/a/a/d/b",
        "<",
        "Lcom/b/a/a/s;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lc/a/a/a/a/g/b;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/b/a/a/u;Lc/a/a/a/a/b/k;Lc/a/a/a/a/d/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lc/a/a/a/a/d/b;-><init>(Landroid/content/Context;Lc/a/a/a/a/d/a;Lc/a/a/a/a/b/k;Lc/a/a/a/a/d/c;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 35
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sa_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/o;->d:Lc/a/a/a/a/b/k;

    invoke-interface {v1}, Lc/a/a/a/a/b/k;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".tap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/b/a/a/o;->a:Lc/a/a/a/a/g/b;

    if-nez v0, :cond_0

    invoke-super {p0}, Lc/a/a/a/a/d/b;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/o;->a:Lc/a/a/a/a/g/b;

    iget v0, v0, Lc/a/a/a/a/g/b;->e:I

    goto :goto_0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/b/a/a/o;->a:Lc/a/a/a/a/g/b;

    if-nez v0, :cond_0

    invoke-super {p0}, Lc/a/a/a/a/d/b;->c()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/o;->a:Lc/a/a/a/a/g/b;

    iget v0, v0, Lc/a/a/a/a/g/b;->c:I

    goto :goto_0
.end method
