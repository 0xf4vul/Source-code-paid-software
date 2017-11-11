.class public final Lf/d/e/b/ad;
.super Lf/d/e/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lf/d/e/b/a",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lf/d/e/b/a;-><init>()V

    .line 42
    new-instance v0, Lf/d/e/a/c;

    invoke-direct {v0}, Lf/d/e/a/c;-><init>()V

    invoke-virtual {p0, v0}, Lf/d/e/b/ad;->b(Lf/d/e/a/c;)V

    .line 43
    iget-object v0, p0, Lf/d/e/b/ad;->producerNode:Lf/d/e/a/c;

    invoke-virtual {p0, v0}, Lf/d/e/b/ad;->a(Lf/d/e/a/c;)V

    .line 44
    iget-object v0, p0, Lf/d/e/b/ad;->consumerNode:Lf/d/e/a/c;

    .line 1053
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lf/d/e/a/c;->lazySet(Ljava/lang/Object;)V

    .line 45
    return-void
.end method


# virtual methods
.method public final offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null elements not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    new-instance v0, Lf/d/e/a/c;

    invoke-direct {v0, p1}, Lf/d/e/a/c;-><init>(Ljava/lang/Object;)V

    .line 68
    iget-object v1, p0, Lf/d/e/b/ad;->producerNode:Lf/d/e/a/c;

    .line 2053
    invoke-virtual {v1, v0}, Lf/d/e/a/c;->lazySet(Ljava/lang/Object;)V

    .line 69
    iput-object v0, p0, Lf/d/e/b/ad;->producerNode:Lf/d/e/a/c;

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lf/d/e/b/ad;->consumerNode:Lf/d/e/a/c;

    .line 3057
    invoke-virtual {v0}, Lf/d/e/a/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d/e/a/c;

    .line 102
    if-eqz v0, :cond_0

    .line 4045
    iget-object v0, v0, Lf/d/e/a/c;->a:Ljava/lang/Object;

    .line 105
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lf/d/e/b/ad;->consumerNode:Lf/d/e/a/c;

    .line 2057
    invoke-virtual {v0}, Lf/d/e/a/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d/e/a/c;

    .line 90
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lf/d/e/a/c;->a()Ljava/lang/Object;

    move-result-object v1

    .line 93
    iput-object v0, p0, Lf/d/e/b/ad;->consumerNode:Lf/d/e/a/c;

    move-object v0, v1

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
