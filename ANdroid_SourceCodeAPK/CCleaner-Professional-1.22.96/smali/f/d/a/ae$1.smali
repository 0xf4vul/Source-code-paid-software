.class final Lf/d/a/ae$1;
.super Lf/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/d/a/ae;->a(Lf/i;)Lf/i;
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
.field a:I

.field c:Z

.field final synthetic d:Lf/i;

.field final synthetic e:Lf/d/a/ae;


# direct methods
.method constructor <init>(Lf/d/a/ae;Lf/i;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lf/d/a/ae$1;->e:Lf/d/a/ae;

    iput-object p2, p0, Lf/d/a/ae$1;->d:Lf/i;

    invoke-direct {p0}, Lf/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lf/f;)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lf/d/a/ae$1;->d:Lf/i;

    new-instance v1, Lf/d/a/ae$1$1;

    invoke-direct {v1, p0, p1}, Lf/d/a/ae$1$1;-><init>(Lf/d/a/ae$1;Lf/f;)V

    invoke-virtual {v0, v1}, Lf/i;->a(Lf/f;)V

    .line 116
    return-void
.end method

.method public final onCompleted()V
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lf/d/a/ae$1;->c:Z

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/ae$1;->c:Z

    .line 56
    iget-object v0, p0, Lf/d/a/ae$1;->d:Lf/i;

    invoke-virtual {v0}, Lf/i;->onCompleted()V

    .line 58
    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lf/d/a/ae$1;->c:Z

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/ae$1;->c:Z

    .line 65
    :try_start_0
    iget-object v0, p0, Lf/d/a/ae$1;->d:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {p0}, Lf/d/a/ae$1;->b()V

    .line 70
    :cond_0
    return-void

    .line 67
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lf/d/a/ae$1;->b()V

    throw v0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 74
    .line 1108
    iget-object v0, p0, Lf/i;->b:Lf/d/e/l;

    .line 2059
    iget-boolean v0, v0, Lf/d/e/l;->b:Z

    .line 74
    if-nez v0, :cond_0

    iget v0, p0, Lf/d/a/ae$1;->a:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lf/d/a/ae$1;->a:I

    iget-object v2, p0, Lf/d/a/ae$1;->e:Lf/d/a/ae;

    iget v2, v2, Lf/d/a/ae;->a:I

    if-ge v0, v2, :cond_0

    .line 75
    iget v0, p0, Lf/d/a/ae$1;->a:I

    iget-object v2, p0, Lf/d/a/ae$1;->e:Lf/d/a/ae;

    iget v2, v2, Lf/d/a/ae;->a:I

    if-ne v0, v2, :cond_1

    move v0, v1

    .line 76
    :goto_0
    iget-object v2, p0, Lf/d/a/ae$1;->d:Lf/i;

    invoke-virtual {v2, p1}, Lf/i;->onNext(Ljava/lang/Object;)V

    .line 77
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lf/d/a/ae$1;->c:Z

    if-nez v0, :cond_0

    .line 78
    iput-boolean v1, p0, Lf/d/a/ae$1;->c:Z

    .line 80
    :try_start_0
    iget-object v0, p0, Lf/d/a/ae$1;->d:Lf/i;

    invoke-virtual {v0}, Lf/i;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {p0}, Lf/d/a/ae$1;->b()V

    .line 86
    :cond_0
    return-void

    .line 75
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lf/d/a/ae$1;->b()V

    throw v0
.end method
