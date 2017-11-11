.class public final Lf/d/e/a/g;
.super Lf/d/e/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lf/d/e/a/b",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Lf/d/e/a/b;-><init>()V

    .line 38
    new-instance v0, Lf/d/e/a/c;

    invoke-direct {v0}, Lf/d/e/a/c;-><init>()V

    .line 39
    invoke-virtual {p0, v0}, Lf/d/e/a/g;->a(Lf/d/e/a/c;)V

    .line 40
    invoke-virtual {p0, v0}, Lf/d/e/a/g;->b(Lf/d/e/a/c;)V

    .line 1053
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lf/d/e/a/c;->lazySet(Ljava/lang/Object;)V

    .line 42
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
    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null elements not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    new-instance v1, Lf/d/e/a/c;

    invoke-direct {v1, p1}, Lf/d/e/a/c;-><init>(Ljava/lang/Object;)V

    .line 2034
    iget-object v0, p0, Lf/d/e/a/b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d/e/a/c;

    .line 2053
    invoke-virtual {v0, v1}, Lf/d/e/a/c;->lazySet(Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p0, v1}, Lf/d/e/a/g;->a(Lf/d/e/a/c;)V

    .line 66
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
    .line 97
    invoke-virtual {p0}, Lf/d/e/a/g;->a()Lf/d/e/a/c;

    move-result-object v0

    .line 3057
    invoke-virtual {v0}, Lf/d/e/a/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d/e/a/c;

    .line 98
    if-eqz v0, :cond_0

    .line 4045
    iget-object v0, v0, Lf/d/e/a/c;->a:Ljava/lang/Object;

    .line 101
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
    .line 85
    invoke-virtual {p0}, Lf/d/e/a/g;->a()Lf/d/e/a/c;

    move-result-object v0

    .line 2057
    invoke-virtual {v0}, Lf/d/e/a/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d/e/a/c;

    .line 86
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lf/d/e/a/c;->a()Ljava/lang/Object;

    move-result-object v1

    .line 89
    invoke-virtual {p0, v0}, Lf/d/e/a/g;->b(Lf/d/e/a/c;)V

    move-object v0, v1

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
