.class final Lf/d/a/w$1;
.super Lf/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/d/a/w;->a(Lf/i;)Lf/i;
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
.field final synthetic a:Lf/i;

.field final synthetic c:Lf/d/a/w;


# direct methods
.method constructor <init>(Lf/d/a/w;Lf/i;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lf/d/a/w$1;->c:Lf/d/a/w;

    iput-object p2, p0, Lf/d/a/w$1;->a:Lf/i;

    invoke-direct {p0}, Lf/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lf/d/a/w$1;->a:Lf/i;

    invoke-virtual {v0}, Lf/i;->onCompleted()V

    .line 43
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lf/d/a/w$1;->a:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onError(Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    return-void
.end method
