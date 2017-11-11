.class final Lf/d/a/i$a;
.super Lf/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lf/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lf/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final c:Lf/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/e",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method constructor <init>(Lf/i;Lf/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TT;>;",
            "Lf/e",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lf/i;-><init>(Lf/i;)V

    .line 53
    iput-object p1, p0, Lf/d/a/i$a;->a:Lf/i;

    .line 54
    iput-object p2, p0, Lf/d/a/i$a;->c:Lf/e;

    .line 55
    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lf/d/a/i$a;->d:Z

    if-eqz v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 63
    :cond_0
    :try_start_0
    iget-object v0, p0, Lf/d/a/i$a;->c:Lf/e;

    invoke-interface {v0}, Lf/e;->onCompleted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/i$a;->d:Z

    .line 70
    iget-object v0, p0, Lf/d/a/i$a;->a:Lf/i;

    invoke-virtual {v0}, Lf/i;->onCompleted()V

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    invoke-static {v0, p0}, Lf/b/b;->a(Ljava/lang/Throwable;Lf/e;)V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 75
    iget-boolean v0, p0, Lf/d/a/i$a;->d:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p1}, Lf/g/c;->a(Ljava/lang/Throwable;)V

    .line 88
    :goto_0
    return-void

    .line 79
    :cond_0
    iput-boolean v5, p0, Lf/d/a/i$a;->d:Z

    .line 81
    :try_start_0
    iget-object v0, p0, Lf/d/a/i$a;->c:Lf/e;

    invoke-interface {v0, p1}, Lf/e;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    iget-object v0, p0, Lf/d/a/i$a;->a:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-static {v0}, Lf/b/b;->a(Ljava/lang/Throwable;)V

    .line 84
    iget-object v1, p0, Lf/d/a/i$a;->a:Lf/i;

    new-instance v2, Lf/b/a;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    aput-object p1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0, v4}, Lf/b/a;-><init>(Ljava/util/Collection;B)V

    invoke-virtual {v1, v2}, Lf/i;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 92
    iget-boolean v0, p0, Lf/d/a/i$a;->d:Z

    if-eqz v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 96
    :cond_0
    :try_start_0
    iget-object v0, p0, Lf/d/a/i$a;->c:Lf/e;

    invoke-interface {v0, p1}, Lf/e;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    iget-object v0, p0, Lf/d/a/i$a;->a:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    invoke-static {v0, p0, p1}, Lf/b/b;->a(Ljava/lang/Throwable;Lf/e;Ljava/lang/Object;)V

    goto :goto_0
.end method
