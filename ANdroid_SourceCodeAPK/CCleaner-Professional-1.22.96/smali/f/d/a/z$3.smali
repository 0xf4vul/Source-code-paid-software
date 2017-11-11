.class final Lf/d/a/z$3;
.super Lf/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/d/a/z;->a(Lf/i;)Lf/i;
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
.field a:J

.field final synthetic c:Lf/i;

.field final synthetic d:Lf/d/b/a;

.field final synthetic e:Lf/j/c;

.field final synthetic f:Lf/d/a/z;

.field private g:Z


# direct methods
.method constructor <init>(Lf/d/a/z;Lf/i;Lf/d/b/a;Lf/j/c;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lf/d/a/z$3;->f:Lf/d/a/z;

    iput-object p2, p0, Lf/d/a/z$3;->c:Lf/i;

    iput-object p3, p0, Lf/d/a/z$3;->d:Lf/d/b/a;

    iput-object p4, p0, Lf/d/a/z$3;->e:Lf/j/c;

    invoke-direct {p0}, Lf/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lf/f;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lf/d/a/z$3;->d:Lf/d/b/a;

    invoke-virtual {v0, p1}, Lf/d/b/a;->a(Lf/f;)V

    .line 160
    return-void
.end method

.method public final onCompleted()V
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lf/d/a/z$3;->g:Z

    if-eqz v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/z$3;->g:Z

    .line 101
    iget-object v0, p0, Lf/d/a/z$3;->c:Lf/i;

    invoke-virtual {v0}, Lf/i;->onCompleted()V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 106
    iget-boolean v0, p0, Lf/d/a/z$3;->g:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-static {p1}, Lf/b/b;->a(Ljava/lang/Throwable;)V

    .line 108
    invoke-static {p1}, Lf/g/c;->a(Ljava/lang/Throwable;)V

    .line 146
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/z$3;->g:Z

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lf/d/a/z$3;->b()V

    .line 115
    new-instance v1, Lf/d/a/z$3$1;

    invoke-direct {v1, p0}, Lf/d/a/z$3$1;-><init>(Lf/d/a/z$3;)V

    .line 133
    iget-object v0, p0, Lf/d/a/z$3;->e:Lf/j/c;

    invoke-virtual {v0, v1}, Lf/j/c;->a(Lf/j;)V

    .line 135
    iget-wide v2, p0, Lf/d/a/z$3;->a:J

    .line 136
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lf/d/a/z$3;->d:Lf/d/b/a;

    invoke-virtual {v0, v2, v3}, Lf/d/b/a;->b(J)V

    .line 140
    :cond_1
    iget-object v0, p0, Lf/d/a/z$3;->f:Lf/d/a/z;

    iget-object v0, v0, Lf/d/a/z;->a:Lf/c/e;

    invoke-interface {v0, p1}, Lf/c/e;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d;

    .line 142
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/i;)Lf/j;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    iget-object v1, p0, Lf/d/a/z$3;->c:Lf/i;

    invoke-static {v0, v1}, Lf/b/b;->a(Ljava/lang/Throwable;Lf/e;)V

    goto :goto_0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 150
    iget-boolean v0, p0, Lf/d/a/z$3;->g:Z

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-wide v0, p0, Lf/d/a/z$3;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lf/d/a/z$3;->a:J

    .line 154
    iget-object v0, p0, Lf/d/a/z$3;->c:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method
