.class final Lf/d/a/z$3$1;
.super Lf/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/d/a/z$3;->onError(Ljava/lang/Throwable;)V
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
.field final synthetic a:Lf/d/a/z$3;


# direct methods
.method constructor <init>(Lf/d/a/z$3;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lf/d/a/z$3$1;->a:Lf/d/a/z$3;

    invoke-direct {p0}, Lf/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lf/f;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lf/d/a/z$3$1;->a:Lf/d/a/z$3;

    iget-object v0, v0, Lf/d/a/z$3;->d:Lf/d/b/a;

    invoke-virtual {v0, p1}, Lf/d/b/a;->a(Lf/f;)V

    .line 131
    return-void
.end method

.method public final onCompleted()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lf/d/a/z$3$1;->a:Lf/d/a/z$3;

    iget-object v0, v0, Lf/d/a/z$3;->c:Lf/i;

    invoke-virtual {v0}, Lf/i;->onCompleted()V

    .line 127
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lf/d/a/z$3$1;->a:Lf/d/a/z$3;

    iget-object v0, v0, Lf/d/a/z$3;->c:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onError(Ljava/lang/Throwable;)V

    .line 123
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lf/d/a/z$3$1;->a:Lf/d/a/z$3;

    iget-object v0, v0, Lf/d/a/z$3;->c:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onNext(Ljava/lang/Object;)V

    .line 119
    return-void
.end method
