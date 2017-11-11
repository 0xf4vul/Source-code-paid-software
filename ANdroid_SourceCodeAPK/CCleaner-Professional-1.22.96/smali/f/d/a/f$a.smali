.class final Lf/d/a/f$a;
.super Lf/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lf/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lf/d/a/f$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/f$b",
            "<TT;TR;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:Lf/d/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/d",
            "<TT;>;"
        }
    .end annotation
.end field

.field e:Z


# direct methods
.method public constructor <init>(Lf/d/a/f$b;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/f$b",
            "<TT;TR;>;I)V"
        }
    .end annotation

    .prologue
    .line 367
    invoke-direct {p0}, Lf/i;-><init>()V

    .line 368
    iput-object p1, p0, Lf/d/a/f$a;->a:Lf/d/a/f$b;

    .line 369
    iput p2, p0, Lf/d/a/f$a;->c:I

    .line 370
    invoke-static {}, Lf/d/a/d;->a()Lf/d/a/d;

    move-result-object v0

    iput-object v0, p0, Lf/d/a/f$a;->d:Lf/d/a/d;

    .line 371
    iget v0, p1, Lf/d/a/f$b;->e:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lf/d/a/f$a;->a(J)V

    .line 372
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 403
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lf/d/a/f$a;->a(J)V

    .line 404
    return-void
.end method

.method public final onCompleted()V
    .locals 3

    .prologue
    .line 395
    iget-boolean v0, p0, Lf/d/a/f$a;->e:Z

    if-eqz v0, :cond_0

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/f$a;->e:Z

    .line 399
    iget-object v0, p0, Lf/d/a/f$a;->a:Lf/d/a/f$b;

    const/4 v1, 0x0

    iget v2, p0, Lf/d/a/f$a;->c:I

    invoke-virtual {v0, v1, v2}, Lf/d/a/f$b;->a(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 384
    iget-boolean v0, p0, Lf/d/a/f$a;->e:Z

    if-eqz v0, :cond_0

    .line 385
    invoke-static {p1}, Lf/g/c;->a(Ljava/lang/Throwable;)V

    .line 391
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lf/d/a/f$a;->a:Lf/d/a/f$b;

    .line 1337
    iget-object v2, v0, Lf/d/a/f$b;->l:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1339
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 1341
    if-eqz v0, :cond_3

    .line 1342
    instance-of v1, v0, Lf/b/a;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 1343
    check-cast v1, Lf/b/a;

    .line 1344
    new-instance v3, Ljava/util/ArrayList;

    .line 2113
    iget-object v1, v1, Lf/b/a;->a:Ljava/util/List;

    .line 1344
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1345
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1346
    new-instance v1, Lf/b/a;

    invoke-direct {v1, v3, v4}, Lf/b/a;-><init>(Ljava/util/Collection;B)V

    .line 1353
    :goto_1
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    iput-boolean v5, p0, Lf/d/a/f$a;->e:Z

    .line 390
    iget-object v0, p0, Lf/d/a/f$a;->a:Lf/d/a/f$b;

    const/4 v1, 0x0

    iget v2, p0, Lf/d/a/f$a;->c:I

    invoke-virtual {v0, v1, v2}, Lf/d/a/f$b;->a(Ljava/lang/Object;I)V

    goto :goto_0

    .line 1348
    :cond_2
    new-instance v1, Lf/b/a;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    aput-object v0, v3, v4

    aput-object p1, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3, v4}, Lf/b/a;-><init>(Ljava/util/Collection;B)V

    goto :goto_1

    :cond_3
    move-object v1, p1

    .line 1351
    goto :goto_1
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 376
    iget-boolean v0, p0, Lf/d/a/f$a;->e:Z

    if-eqz v0, :cond_0

    .line 380
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lf/d/a/f$a;->a:Lf/d/a/f$b;

    invoke-static {p1}, Lf/d/a/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lf/d/a/f$a;->c:I

    invoke-virtual {v0, v1, v2}, Lf/d/a/f$b;->a(Ljava/lang/Object;I)V

    goto :goto_0
.end method
