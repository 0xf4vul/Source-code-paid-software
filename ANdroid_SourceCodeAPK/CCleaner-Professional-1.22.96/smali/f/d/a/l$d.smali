.class final Lf/d/a/l$d;
.super Lf/d/a/l$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lf/d/a/l$f",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lf/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lf/d/a/l$f;-><init>(Lf/i;)V

    .line 265
    return-void
.end method


# virtual methods
.method final e()V
    .locals 2

    .prologue
    .line 269
    new-instance v0, Lf/b/c;

    const-string/jumbo v1, "fromAsync: could not emit value due to lack of requests"

    invoke-direct {v0, v1}, Lf/b/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lf/d/a/l$d;->onError(Ljava/lang/Throwable;)V

    .line 270
    return-void
.end method
