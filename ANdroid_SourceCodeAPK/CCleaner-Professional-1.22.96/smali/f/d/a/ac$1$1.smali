.class final Lf/d/a/ac$1$1;
.super Lf/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/d/a/ac$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Thread;

.field final synthetic c:Lf/d/a/ac$1;


# direct methods
.method constructor <init>(Lf/d/a/ac$1;Lf/i;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lf/d/a/ac$1$1;->c:Lf/d/a/ac$1;

    iput-object p3, p0, Lf/d/a/ac$1$1;->a:Ljava/lang/Thread;

    invoke-direct {p0, p2}, Lf/i;-><init>(Lf/i;)V

    return-void
.end method


# virtual methods
.method public final a(Lf/f;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lf/d/a/ac$1$1;->c:Lf/d/a/ac$1;

    iget-object v0, v0, Lf/d/a/ac$1;->a:Lf/i;

    new-instance v1, Lf/d/a/ac$1$1$1;

    invoke-direct {v1, p0, p1}, Lf/d/a/ac$1$1$1;-><init>(Lf/d/a/ac$1$1;Lf/f;)V

    invoke-virtual {v0, v1}, Lf/i;->a(Lf/f;)V

    .line 91
    return-void
.end method

.method public final onCompleted()V
    .locals 2

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p0, Lf/d/a/ac$1$1;->c:Lf/d/a/ac$1;

    iget-object v0, v0, Lf/d/a/ac$1;->a:Lf/i;

    invoke-virtual {v0}, Lf/i;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object v0, p0, Lf/d/a/ac$1$1;->c:Lf/d/a/ac$1;

    iget-object v0, v0, Lf/d/a/ac$1;->b:Lf/g$a;

    invoke-virtual {v0}, Lf/g$a;->b()V

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lf/d/a/ac$1$1;->c:Lf/d/a/ac$1;

    iget-object v1, v1, Lf/d/a/ac$1;->b:Lf/g$a;

    invoke-virtual {v1}, Lf/g$a;->b()V

    throw v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lf/d/a/ac$1$1;->c:Lf/d/a/ac$1;

    iget-object v0, v0, Lf/d/a/ac$1;->a:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v0, p0, Lf/d/a/ac$1$1;->c:Lf/d/a/ac$1;

    iget-object v0, v0, Lf/d/a/ac$1;->b:Lf/g$a;

    invoke-virtual {v0}, Lf/g$a;->b()V

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lf/d/a/ac$1$1;->c:Lf/d/a/ac$1;

    iget-object v1, v1, Lf/d/a/ac$1;->b:Lf/g$a;

    invoke-virtual {v1}, Lf/g$a;->b()V

    throw v0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lf/d/a/ac$1$1;->c:Lf/d/a/ac$1;

    iget-object v0, v0, Lf/d/a/ac$1;->a:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onNext(Ljava/lang/Object;)V

    .line 54
    return-void
.end method
