.class public final Lf/f/c;
.super Lf/i;
.source "SourceFile"


# annotations
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
.field private final a:Lf/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/e",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lf/f/c;-><init>(Lf/i;B)V

    .line 40
    return-void
.end method

.method private constructor <init>(Lf/i;B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TT;>;B)V"
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lf/i;-><init>(Lf/i;Z)V

    .line 54
    new-instance v0, Lf/f/b;

    invoke-direct {v0, p1}, Lf/f/b;-><init>(Lf/e;)V

    iput-object v0, p0, Lf/f/c;->a:Lf/e;

    .line 55
    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lf/f/c;->a:Lf/e;

    invoke-interface {v0}, Lf/e;->onCompleted()V

    .line 65
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lf/f/c;->a:Lf/e;

    invoke-interface {v0, p1}, Lf/e;->onError(Ljava/lang/Throwable;)V

    .line 79
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
    .line 94
    iget-object v0, p0, Lf/f/c;->a:Lf/e;

    invoke-interface {v0, p1}, Lf/e;->onNext(Ljava/lang/Object;)V

    .line 95
    return-void
.end method
