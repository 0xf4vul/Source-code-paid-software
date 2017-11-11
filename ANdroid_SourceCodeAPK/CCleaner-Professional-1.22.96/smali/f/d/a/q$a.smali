.class final Lf/d/a/q$a;
.super Lf/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/q;
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


# static fields
.field static final e:Ljava/lang/Object;


# instance fields
.field final a:Lf/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final c:Lf/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c/f",
            "<TT;TT;TT;>;"
        }
    .end annotation
.end field

.field d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf/d/a/q$a;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf/i;Lf/c/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TT;>;",
            "Lf/c/f",
            "<TT;TT;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Lf/i;-><init>()V

    .line 65
    iput-object p1, p0, Lf/d/a/q$a;->a:Lf/i;

    .line 66
    iput-object p2, p0, Lf/d/a/q$a;->c:Lf/c/f;

    .line 67
    sget-object v0, Lf/d/a/q$a;->e:Ljava/lang/Object;

    iput-object v0, p0, Lf/d/a/q$a;->d:Ljava/lang/Object;

    .line 68
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lf/d/a/q$a;->a(J)V

    .line 69
    return-void
.end method


# virtual methods
.method final b(J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 118
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "n >= 0 required but it was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    .line 122
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lf/d/a/q$a;->a(J)V

    .line 124
    :cond_1
    return-void
.end method

.method public final onCompleted()V
    .locals 2

    .prologue
    .line 104
    iget-boolean v0, p0, Lf/d/a/q$a;->f:Z

    if-eqz v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/q$a;->f:Z

    .line 108
    iget-object v0, p0, Lf/d/a/q$a;->d:Ljava/lang/Object;

    .line 109
    sget-object v1, Lf/d/a/q$a;->e:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    .line 110
    iget-object v1, p0, Lf/d/a/q$a;->a:Lf/i;

    invoke-virtual {v1, v0}, Lf/i;->onNext(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lf/d/a/q$a;->a:Lf/i;

    invoke-virtual {v0}, Lf/i;->onCompleted()V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lf/d/a/q$a;->a:Lf/i;

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-virtual {v0, v1}, Lf/i;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lf/d/a/q$a;->f:Z

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/q$a;->f:Z

    .line 95
    iget-object v0, p0, Lf/d/a/q$a;->a:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onError(Ljava/lang/Throwable;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-static {p1}, Lf/g/c;->a(Ljava/lang/Throwable;)V

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
    .line 74
    iget-boolean v0, p0, Lf/d/a/q$a;->f:Z

    if-eqz v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lf/d/a/q$a;->d:Ljava/lang/Object;

    .line 78
    sget-object v1, Lf/d/a/q$a;->e:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 79
    iput-object p1, p0, Lf/d/a/q$a;->d:Ljava/lang/Object;

    goto :goto_0

    .line 82
    :cond_1
    :try_start_0
    iget-object v1, p0, Lf/d/a/q$a;->c:Lf/c/f;

    invoke-interface {v1, v0, p1}, Lf/c/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lf/d/a/q$a;->d:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-static {v0}, Lf/b/b;->a(Ljava/lang/Throwable;)V

    .line 85
    invoke-virtual {p0}, Lf/d/a/q$a;->b()V

    .line 86
    invoke-virtual {p0, v0}, Lf/d/a/q$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
