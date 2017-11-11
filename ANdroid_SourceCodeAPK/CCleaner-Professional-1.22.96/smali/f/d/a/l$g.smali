.class final Lf/d/a/l$g;
.super Lf/d/a/l$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
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
    .line 195
    invoke-direct {p0, p1}, Lf/d/a/l$a;-><init>(Lf/i;)V

    .line 196
    return-void
.end method


# virtual methods
.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lf/d/a/l$g;->a:Lf/i;

    .line 1108
    iget-object v0, v0, Lf/i;->b:Lf/d/e/l;

    .line 2059
    iget-boolean v0, v0, Lf/d/e/l;->b:Z

    .line 200
    if-eqz v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lf/d/a/l$g;->a:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onNext(Ljava/lang/Object;)V

    .line 207
    :cond_2
    invoke-virtual {p0}, Lf/d/a/l$g;->get()J

    move-result-wide v0

    .line 208
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lf/d/a/l$g;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method
