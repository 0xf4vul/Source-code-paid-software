.class final Lf/d/a/ad$b;
.super Lf/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
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
.field private a:Z

.field private final c:Lf/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final d:Lf/j/c;

.field private final e:Lf/d/b/a;

.field private final f:Lf/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lf/i;Lf/j/c;Lf/d/b/a;Lf/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TT;>;",
            "Lf/j/c;",
            "Lf/d/b/a;",
            "Lf/d",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Lf/i;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/ad$b;->a:Z

    .line 56
    iput-object p1, p0, Lf/d/a/ad$b;->c:Lf/i;

    .line 57
    iput-object p2, p0, Lf/d/a/ad$b;->d:Lf/j/c;

    .line 58
    iput-object p3, p0, Lf/d/a/ad$b;->e:Lf/d/b/a;

    .line 59
    iput-object p4, p0, Lf/d/a/ad$b;->f:Lf/d;

    .line 60
    return-void
.end method


# virtual methods
.method public final a(Lf/f;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lf/d/a/ad$b;->e:Lf/d/b/a;

    invoke-virtual {v0, p1}, Lf/d/b/a;->a(Lf/f;)V

    .line 65
    return-void
.end method

.method public final onCompleted()V
    .locals 3

    .prologue
    .line 69
    iget-boolean v0, p0, Lf/d/a/ad$b;->a:Z

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lf/d/a/ad$b;->c:Lf/i;

    invoke-virtual {v0}, Lf/i;->onCompleted()V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lf/d/a/ad$b;->c:Lf/i;

    .line 1108
    iget-object v0, v0, Lf/i;->b:Lf/d/e/l;

    .line 2059
    iget-boolean v0, v0, Lf/d/e/l;->b:Z

    .line 71
    if-nez v0, :cond_0

    .line 2077
    new-instance v0, Lf/d/a/ad$a;

    iget-object v1, p0, Lf/d/a/ad$b;->c:Lf/i;

    iget-object v2, p0, Lf/d/a/ad$b;->e:Lf/d/b/a;

    invoke-direct {v0, v1, v2}, Lf/d/a/ad$a;-><init>(Lf/i;Lf/d/b/a;)V

    .line 2078
    iget-object v1, p0, Lf/d/a/ad$b;->d:Lf/j/c;

    invoke-virtual {v1, v0}, Lf/j/c;->a(Lf/j;)V

    .line 2079
    iget-object v1, p0, Lf/d/a/ad$b;->f:Lf/d;

    invoke-virtual {v1, v0}, Lf/d;->a(Lf/i;)Lf/j;

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lf/d/a/ad$b;->c:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onError(Ljava/lang/Throwable;)V

    .line 85
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/d/a/ad$b;->a:Z

    .line 90
    iget-object v0, p0, Lf/d/a/ad$b;->c:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onNext(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lf/d/a/ad$b;->e:Lf/d/b/a;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lf/d/b/a;->b(J)V

    .line 92
    return-void
.end method
