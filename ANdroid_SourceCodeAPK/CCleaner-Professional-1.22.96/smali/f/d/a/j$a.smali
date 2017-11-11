.class final Lf/d/a/j$a;
.super Lf/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field final a:Lf/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final c:Lf/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c/e",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field d:Z


# direct methods
.method public constructor <init>(Lf/i;Lf/c/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TT;>;",
            "Lf/c/e",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lf/i;-><init>()V

    .line 57
    iput-object p1, p0, Lf/d/a/j$a;->a:Lf/i;

    .line 58
    iput-object p2, p0, Lf/d/a/j$a;->c:Lf/c/e;

    .line 59
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lf/d/a/j$a;->a(J)V

    .line 60
    return-void
.end method


# virtual methods
.method public final a(Lf/f;)V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0, p1}, Lf/i;->a(Lf/f;)V

    .line 104
    iget-object v0, p0, Lf/d/a/j$a;->a:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->a(Lf/f;)V

    .line 105
    return-void
.end method

.method public final onCompleted()V
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lf/d/a/j$a;->d:Z

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lf/d/a/j$a;->a:Lf/i;

    invoke-virtual {v0}, Lf/i;->onCompleted()V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lf/d/a/j$a;->d:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-static {p1}, Lf/g/c;->a(Ljava/lang/Throwable;)V

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/j$a;->d:Z

    .line 90
    iget-object v0, p0, Lf/d/a/j$a;->a:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lf/d/a/j$a;->c:Lf/c/e;

    invoke-interface {v0, p1}, Lf/c/e;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lf/d/a/j$a;->a:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onNext(Ljava/lang/Object;)V

    .line 80
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-static {v0}, Lf/b/b;->a(Ljava/lang/Throwable;)V

    .line 70
    invoke-virtual {p0}, Lf/d/a/j$a;->b()V

    .line 71
    invoke-static {v0, p1}, Lf/b/g;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf/d/a/j$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 78
    :cond_0
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lf/d/a/j$a;->a(J)V

    goto :goto_0
.end method
