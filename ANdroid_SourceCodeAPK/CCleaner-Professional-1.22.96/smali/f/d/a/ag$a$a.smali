.class final Lf/d/a/ag$a$a;
.super Lf/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/ag$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Lf/d/e/i;

.field final synthetic c:Lf/d/a/ag$a;


# direct methods
.method constructor <init>(Lf/d/a/ag$a;)V
    .locals 1

    .prologue
    .line 291
    iput-object p1, p0, Lf/d/a/ag$a$a;->c:Lf/d/a/ag$a;

    invoke-direct {p0}, Lf/i;-><init>()V

    .line 293
    invoke-static {}, Lf/d/e/i;->d()Lf/d/e/i;

    move-result-object v0

    iput-object v0, p0, Lf/d/a/ag$a$a;->a:Lf/d/e/i;

    return-void
.end method


# virtual methods
.method public final b(J)V
    .locals 1

    .prologue
    .line 301
    invoke-virtual {p0, p1, p2}, Lf/d/a/ag$a$a;->a(J)V

    .line 302
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 297
    sget v0, Lf/d/e/i;->b:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lf/d/a/ag$a$a;->a(J)V

    .line 298
    return-void
.end method

.method public final onCompleted()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lf/d/a/ag$a$a;->a:Lf/d/e/i;

    .line 1361
    iget-object v1, v0, Lf/d/e/i;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 1362
    invoke-static {}, Lf/d/a/d;->b()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lf/d/e/i;->a:Ljava/lang/Object;

    .line 307
    :cond_0
    iget-object v0, p0, Lf/d/a/ag$a$a;->c:Lf/d/a/ag$a;

    invoke-virtual {v0}, Lf/d/a/ag$a;->a()V

    .line 308
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lf/d/a/ag$a$a;->c:Lf/d/a/ag$a;

    iget-object v0, v0, Lf/d/a/ag$a;->a:Lf/e;

    invoke-interface {v0, p1}, Lf/e;->onError(Ljava/lang/Throwable;)V

    .line 314
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 319
    :try_start_0
    iget-object v0, p0, Lf/d/a/ag$a$a;->a:Lf/d/e/i;

    invoke-virtual {v0, p1}, Lf/d/e/i;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lf/b/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    iget-object v0, p0, Lf/d/a/ag$a$a;->c:Lf/d/a/ag$a;

    invoke-virtual {v0}, Lf/d/a/ag$a;->a()V

    .line 324
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    invoke-virtual {p0, v0}, Lf/d/a/ag$a$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
