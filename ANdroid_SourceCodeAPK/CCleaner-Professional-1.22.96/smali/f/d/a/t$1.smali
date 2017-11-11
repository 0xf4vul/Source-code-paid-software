.class final Lf/d/a/t$1;
.super Lf/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/t;
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
.field a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field c:Z

.field final synthetic d:Lf/i;

.field final synthetic e:Lf/d/a/t;


# direct methods
.method constructor <init>(Lf/d/a/t;Lf/i;Lf/i;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lf/d/a/t$1;->e:Lf/d/a/t;

    iput-object p3, p0, Lf/d/a/t$1;->d:Lf/i;

    invoke-direct {p0, p2}, Lf/i;-><init>(Lf/i;)V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lf/d/a/t$1;->d:Lf/i;

    invoke-virtual {v0}, Lf/i;->onCompleted()V

    .line 114
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lf/d/a/t$1;->d:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onError(Ljava/lang/Throwable;)V

    .line 109
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 77
    :try_start_0
    iget-object v0, p0, Lf/d/a/t$1;->e:Lf/d/a/t;

    iget-object v0, v0, Lf/d/a/t;->a:Lf/c/e;

    invoke-interface {v0, p1}, Lf/c/e;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 82
    iget-object v0, p0, Lf/d/a/t$1;->a:Ljava/lang/Object;

    .line 83
    iput-object v1, p0, Lf/d/a/t$1;->a:Ljava/lang/Object;

    .line 85
    iget-boolean v2, p0, Lf/d/a/t$1;->c:Z

    if-eqz v2, :cond_1

    .line 89
    :try_start_1
    iget-object v2, p0, Lf/d/a/t$1;->e:Lf/d/a/t;

    iget-object v2, v2, Lf/d/a/t;->b:Lf/c/f;

    invoke-interface {v2, v0, v1}, Lf/c/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 95
    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lf/d/a/t$1;->d:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onNext(Ljava/lang/Object;)V

    .line 104
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    iget-object v1, p0, Lf/d/a/t$1;->d:Lf/i;

    invoke-static {v0, v1, p1}, Lf/b/b;->a(Ljava/lang/Throwable;Lf/e;Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :catch_1
    move-exception v0

    iget-object v2, p0, Lf/d/a/t$1;->d:Lf/i;

    invoke-static {v0, v2, v1}, Lf/b/b;->a(Ljava/lang/Throwable;Lf/e;Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_0
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lf/d/a/t$1;->a(J)V

    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/t$1;->c:Z

    .line 102
    iget-object v0, p0, Lf/d/a/t$1;->d:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method
