.class final Lf/d/a/af$1;
.super Lf/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/d/a/af;->a(Lf/i;)Lf/i;
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

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lf/d/b/b;

.field final synthetic e:Lf/i;

.field final synthetic f:Lf/d/a/af;


# direct methods
.method constructor <init>(Lf/d/a/af;Lf/d/b/b;Lf/i;)V
    .locals 1

    .prologue
    .line 61
    iput-object p1, p0, Lf/d/a/af$1;->f:Lf/d/a/af;

    iput-object p2, p0, Lf/d/a/af$1;->d:Lf/d/b/b;

    iput-object p3, p0, Lf/d/a/af$1;->e:Lf/i;

    invoke-direct {p0}, Lf/i;-><init>()V

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lf/d/a/af$1;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    .prologue
    .line 68
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lf/d/a/af$1;->a(J)V

    .line 69
    return-void
.end method

.method public final onCompleted()V
    .locals 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lf/d/a/af$1;->a:Z

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/af$1;->a:Z

    .line 92
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lf/d/a/af$1;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    const/4 v1, 0x0

    iput-object v1, p0, Lf/d/a/af$1;->c:Ljava/util/List;

    .line 98
    iget-object v1, p0, Lf/d/a/af$1;->d:Lf/d/b/b;

    invoke-virtual {v1, v0}, Lf/d/b/b;->a(Ljava/lang/Object;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    invoke-static {v0, p0}, Lf/b/b;->a(Ljava/lang/Throwable;Lf/e;)V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lf/d/a/af$1;->e:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onError(Ljava/lang/Throwable;)V

    .line 105
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
    .line 109
    iget-boolean v0, p0, Lf/d/a/af$1;->a:Z

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lf/d/a/af$1;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_0
    return-void
.end method
