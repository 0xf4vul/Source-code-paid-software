.class final Lcom/piriform/ccleaner/core/a/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/core/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/piriform/ccleaner/core/a/o;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .prologue
    .line 17
    check-cast p1, Lcom/piriform/ccleaner/core/a/o;

    check-cast p2, Lcom/piriform/ccleaner/core/a/o;

    .line 1020
    invoke-virtual {p1}, Lcom/piriform/ccleaner/core/a/o;->c()J

    move-result-wide v0

    .line 1021
    invoke-virtual {p2}, Lcom/piriform/ccleaner/core/a/o;->c()J

    move-result-wide v2

    .line 1022
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 1023
    const/4 v0, -0x1

    .line 1026
    :goto_0
    return v0

    .line 1025
    :cond_0
    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 1026
    const/4 v0, 0x0

    goto :goto_0

    .line 1028
    :cond_1
    const/4 v0, 0x1

    .line 17
    goto :goto_0
.end method
