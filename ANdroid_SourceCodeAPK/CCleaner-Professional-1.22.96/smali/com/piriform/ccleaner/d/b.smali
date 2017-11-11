.class public final Lcom/piriform/ccleaner/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/d/a/b;
.implements Lcom/piriform/ccleaner/k/a/a/b;


# instance fields
.field private final a:Lcom/piriform/ccleaner/cleaning/d;

.field private b:Lcom/piriform/ccleaner/k/a/h;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/cleaning/d;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/piriform/ccleaner/d/b;->a:Lcom/piriform/ccleaner/cleaning/d;

    .line 18
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/piriform/ccleaner/d/b;->b:Lcom/piriform/ccleaner/k/a/h;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/piriform/ccleaner/d/b;->b:Lcom/piriform/ccleaner/k/a/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/k/a/h;->cancel(Z)Z

    .line 33
    :cond_0
    return-void
.end method

.method public final a(F)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/piriform/ccleaner/d/b;->a:Lcom/piriform/ccleaner/cleaning/d;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/cleaning/d;->a(F)V

    .line 38
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/a/a/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/piriform/ccleaner/d/b;->a:Lcom/piriform/ccleaner/cleaning/d;

    sget v1, Lcom/piriform/ccleaner/cleaning/f;->a:I

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/cleaning/d;->b_(I)V

    .line 24
    new-instance v0, Lcom/piriform/ccleaner/k/a/h;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/k/a/h;-><init>(Lcom/piriform/ccleaner/k/a/a/b;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/d/b;->b:Lcom/piriform/ccleaner/k/a/h;

    .line 25
    iget-object v0, p0, Lcom/piriform/ccleaner/d/b;->b:Lcom/piriform/ccleaner/k/a/h;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/k/a/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 26
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/piriform/ccleaner/d/b;->a:Lcom/piriform/ccleaner/cleaning/d;

    sget v1, Lcom/piriform/ccleaner/cleaning/f;->b:I

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/cleaning/d;->b_(I)V

    .line 43
    return-void
.end method
