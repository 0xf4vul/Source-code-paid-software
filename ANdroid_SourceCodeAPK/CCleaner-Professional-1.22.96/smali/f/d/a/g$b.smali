.class final Lf/d/a/g$b;
.super Lf/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lf/i",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final a:Lf/d/a/g$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/g$c",
            "<TT;TR;>;"
        }
    .end annotation
.end field

.field c:J


# direct methods
.method public constructor <init>(Lf/d/a/g$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/g$c",
            "<TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 323
    invoke-direct {p0}, Lf/i;-><init>()V

    .line 324
    iput-object p1, p0, Lf/d/a/g$b;->a:Lf/d/a/g$c;

    .line 325
    return-void
.end method


# virtual methods
.method public final a(Lf/f;)V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lf/d/a/g$b;->a:Lf/d/a/g$c;

    iget-object v0, v0, Lf/d/a/g$c;->e:Lf/d/b/a;

    invoke-virtual {v0, p1}, Lf/d/b/a;->a(Lf/f;)V

    .line 330
    return-void
.end method

.method public final onCompleted()V
    .locals 4

    .prologue
    .line 345
    iget-object v0, p0, Lf/d/a/g$b;->a:Lf/d/a/g$c;

    iget-wide v2, p0, Lf/d/a/g$b;->c:J

    invoke-virtual {v0, v2, v3}, Lf/d/a/g$c;->b(J)V

    .line 346
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 340
    iget-object v0, p0, Lf/d/a/g$b;->a:Lf/d/a/g$c;

    iget-wide v2, p0, Lf/d/a/g$b;->c:J

    .line 1186
    iget-object v1, v0, Lf/d/a/g$c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, p1}, Lf/d/e/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1213
    invoke-static {p1}, Lf/g/c;->a(Ljava/lang/Throwable;)V

    .line 1195
    :goto_0
    return-void

    .line 1189
    :cond_0
    iget v1, v0, Lf/d/a/g$c;->d:I

    if-nez v1, :cond_2

    .line 1190
    iget-object v1, v0, Lf/d/a/g$c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Lf/d/e/c;->a(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    .line 1191
    invoke-static {v1}, Lf/d/e/c;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1192
    iget-object v2, v0, Lf/d/a/g$c;->a:Lf/i;

    invoke-virtual {v2, v1}, Lf/i;->onError(Ljava/lang/Throwable;)V

    .line 1194
    :cond_1
    invoke-virtual {v0}, Lf/d/a/g$c;->b()V

    goto :goto_0

    .line 1196
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 1197
    iget-object v1, v0, Lf/d/a/g$c;->e:Lf/d/b/a;

    invoke-virtual {v1, v2, v3}, Lf/d/b/a;->b(J)V

    .line 1199
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, v0, Lf/d/a/g$c;->k:Z

    .line 1200
    invoke-virtual {v0}, Lf/d/a/g$c;->a()V

    goto :goto_0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 334
    iget-wide v0, p0, Lf/d/a/g$b;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lf/d/a/g$b;->c:J

    .line 335
    iget-object v0, p0, Lf/d/a/g$b;->a:Lf/d/a/g$c;

    invoke-virtual {v0, p1}, Lf/d/a/g$c;->a(Ljava/lang/Object;)V

    .line 336
    return-void
.end method
