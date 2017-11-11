.class public final Lcom/piriform/ccleaner/core/data/d;
.super Lcom/piriform/ccleaner/core/data/f;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/core/data/l;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/core/data/f;",
        "Lcom/piriform/ccleaner/core/data/l",
        "<",
        "Lcom/piriform/ccleaner/core/data/e;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/piriform/ccleaner/core/data/d;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/piriform/ccleaner/core/data/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/piriform/ccleaner/core/data/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 3
    check-cast p1, Lcom/piriform/ccleaner/core/data/d;

    .line 1027
    iget-object v0, p1, Lcom/piriform/ccleaner/core/data/d;->e:Ljava/util/Date;

    iget-object v1, p0, Lcom/piriform/ccleaner/core/data/d;->e:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    .line 3
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 17
    instance-of v0, p1, Lcom/piriform/ccleaner/core/data/d;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/piriform/ccleaner/core/data/d;

    iget-object v0, p1, Lcom/piriform/ccleaner/core/data/d;->e:Ljava/util/Date;

    iget-object v1, p0, Lcom/piriform/ccleaner/core/data/d;->e:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/piriform/ccleaner/core/data/d;->e:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    return v0
.end method
