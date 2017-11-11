.class final Lf/d/a/ad$a;
.super Lf/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/ad;
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
.field private final a:Lf/d/b/a;

.field private final c:Lf/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lf/i;Lf/d/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TT;>;",
            "Lf/d/b/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Lf/i;-><init>()V

    .line 101
    iput-object p1, p0, Lf/d/a/ad$a;->c:Lf/i;

    .line 102
    iput-object p2, p0, Lf/d/a/ad$a;->a:Lf/d/b/a;

    .line 103
    return-void
.end method


# virtual methods
.method public final a(Lf/f;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lf/d/a/ad$a;->a:Lf/d/b/a;

    invoke-virtual {v0, p1}, Lf/d/b/a;->a(Lf/f;)V

    .line 108
    return-void
.end method

.method public final onCompleted()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lf/d/a/ad$a;->c:Lf/i;

    invoke-virtual {v0}, Lf/i;->onCompleted()V

    .line 113
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lf/d/a/ad$a;->c:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onError(Ljava/lang/Throwable;)V

    .line 118
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
    .line 122
    iget-object v0, p0, Lf/d/a/ad$a;->c:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onNext(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lf/d/a/ad$a;->a:Lf/d/b/a;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lf/d/b/a;->b(J)V

    .line 124
    return-void
.end method
