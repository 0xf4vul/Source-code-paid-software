.class abstract Lf/d/a/l$f;
.super Lf/d/a/l$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lf/d/a/l$a",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lf/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lf/d/a/l$a;-><init>(Lf/i;)V

    .line 223
    return-void
.end method


# virtual methods
.method abstract e()V
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lf/d/a/l$f;->a:Lf/i;

    .line 1108
    iget-object v0, v0, Lf/i;->b:Lf/d/e/l;

    .line 2059
    iget-boolean v0, v0, Lf/d/e/l;->b:Z

    .line 227
    if-eqz v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-virtual {p0}, Lf/d/a/l$f;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lf/d/a/l$f;->a:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onNext(Ljava/lang/Object;)V

    .line 233
    const-wide/16 v0, 0x1

    invoke-static {p0, v0, v1}, Lf/d/a/a;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {p0}, Lf/d/a/l$f;->e()V

    goto :goto_0
.end method
