.class final Lcom/piriform/ccleaner/professional/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/professional/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/e",
        "<",
        "Lcom/piriform/ccleaner/l/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/professional/b;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/professional/b;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/b$1;->a:Lcom/piriform/ccleaner/professional/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "Failed to get Scheduled Clean during ex pro clean up"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/novoda/notils/c/a/a;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lcom/piriform/ccleaner/l/c;

    .line 1029
    check-cast p1, Lcom/piriform/ccleaner/l/b;

    .line 1134
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/piriform/ccleaner/l/b;->e:Z

    .line 1031
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/b$1;->a:Lcom/piriform/ccleaner/professional/b;

    .line 2012
    iget-object v0, v0, Lcom/piriform/ccleaner/professional/b;->a:Lcom/piriform/ccleaner/scheduler/n;

    .line 1031
    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/scheduler/n;->a(Lcom/piriform/ccleaner/l/c;)Lf/d;

    move-result-object v0

    invoke-virtual {v0}, Lf/d;->c()Lf/j;

    .line 16
    return-void
.end method
