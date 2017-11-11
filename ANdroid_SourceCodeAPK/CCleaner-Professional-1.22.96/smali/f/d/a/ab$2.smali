.class final Lf/d/a/ab$2;
.super Lf/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/d/a/ab;->a(Lf/i;)Lf/i;
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
.field a:Z

.field c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field final synthetic d:Lf/i;

.field final synthetic e:Lf/d/a/ab;


# direct methods
.method constructor <init>(Lf/d/a/ab;Lf/i;Lf/i;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lf/d/a/ab$2;->e:Lf/d/a/ab;

    iput-object p3, p0, Lf/d/a/ab$2;->d:Lf/i;

    invoke-direct {p0, p2}, Lf/i;-><init>(Lf/i;)V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lf/d/a/ab$2;->d:Lf/i;

    invoke-virtual {v0}, Lf/i;->onCompleted()V

    .line 125
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lf/d/a/ab$2;->d:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onError(Ljava/lang/Throwable;)V

    .line 121
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 103
    iget-boolean v0, p0, Lf/d/a/ab$2;->a:Z

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/ab$2;->a:Z

    .line 115
    :goto_0
    iput-object p1, p0, Lf/d/a/ab$2;->c:Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lf/d/a/ab$2;->d:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onNext(Ljava/lang/Object;)V

    .line 117
    :goto_1
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lf/d/a/ab$2;->c:Ljava/lang/Object;

    .line 109
    :try_start_0
    iget-object v1, p0, Lf/d/a/ab$2;->e:Lf/d/a/ab;

    iget-object v1, v1, Lf/d/a/ab;->a:Lf/c/f;

    invoke-interface {v1, v0, p1}, Lf/c/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    iget-object v1, p0, Lf/d/a/ab$2;->d:Lf/i;

    invoke-static {v0, v1, p1}, Lf/b/b;->a(Ljava/lang/Throwable;Lf/e;Ljava/lang/Object;)V

    goto :goto_1
.end method
