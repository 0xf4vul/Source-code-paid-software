.class final Lcom/piriform/ccleaner/o/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/o/f;
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
        "Lcom/piriform/ccleaner/o/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/o/f;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/o/f;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/piriform/ccleaner/o/f$1;->a:Lcom/piriform/ccleaner/o/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "Error in migration of old Scheduled Clean to new DB"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/novoda/notils/c/a/a;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/piriform/ccleaner/o/f$1;->a:Lcom/piriform/ccleaner/o/f;

    .line 1016
    iget-object v0, v0, Lcom/piriform/ccleaner/o/f;->d:Lcom/piriform/ccleaner/b/e;

    .line 37
    const-string/jumbo v1, "Error in migration of old Scheduled Clean to new DB"

    invoke-interface {v0, v1, p1}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 23
    check-cast p1, Lcom/piriform/ccleaner/o/g;

    .line 1026
    iget-object v0, p0, Lcom/piriform/ccleaner/o/f$1;->a:Lcom/piriform/ccleaner/o/f;

    .line 2016
    iget-object v2, v0, Lcom/piriform/ccleaner/o/f;->c:Lcom/piriform/ccleaner/b/a;

    .line 1026
    sget-object v3, Lcom/piriform/ccleaner/b/b;->w:Lcom/piriform/ccleaner/b/b;

    const-string/jumbo v4, "success"

    invoke-interface {p1}, Lcom/piriform/ccleaner/o/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-interface {v2, v3, v4, v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;Ljava/lang/String;J)V

    .line 23
    return-void

    .line 1026
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
