.class public final Lcom/piriform/ccleaner/ui/b/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/piriform/ccleaner/core/a/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 13
    instance-of v0, p0, Lcom/piriform/ccleaner/core/data/d;

    if-eqz v0, :cond_0

    .line 14
    new-instance v0, Lcom/piriform/ccleaner/ui/b/j;

    check-cast p0, Lcom/piriform/ccleaner/core/data/d;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/ui/b/j;-><init>(Lcom/piriform/ccleaner/core/data/d;)V

    .line 20
    :goto_0
    return-object v0

    .line 15
    :cond_0
    instance-of v0, p0, Lcom/piriform/ccleaner/core/data/g;

    if-eqz v0, :cond_1

    .line 16
    new-instance v0, Lcom/piriform/ccleaner/ui/b/q;

    check-cast p0, Lcom/piriform/ccleaner/core/data/g;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/ui/b/q;-><init>(Lcom/piriform/ccleaner/core/data/g;)V

    goto :goto_0

    .line 17
    :cond_1
    instance-of v0, p0, Lcom/piriform/ccleaner/core/data/i;

    if-eqz v0, :cond_2

    .line 18
    new-instance v0, Lcom/piriform/ccleaner/ui/b/w;

    check-cast p0, Lcom/piriform/ccleaner/core/data/i;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/piriform/ccleaner/ui/b/w;-><init>(Lcom/piriform/ccleaner/core/data/i;Z)V

    goto :goto_0

    .line 20
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
