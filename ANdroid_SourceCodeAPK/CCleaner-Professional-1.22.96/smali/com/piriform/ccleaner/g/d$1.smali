.class final Lcom/piriform/ccleaner/g/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/g/d;
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
        "Lcom/piriform/ccleaner/g/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 16
    check-cast p1, Lcom/piriform/ccleaner/g/d;

    check-cast p2, Lcom/piriform/ccleaner/g/d;

    .line 1019
    invoke-static {p1}, Lcom/piriform/ccleaner/g/d;->b(Lcom/piriform/ccleaner/g/d;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/piriform/ccleaner/g/d;->b(Lcom/piriform/ccleaner/g/d;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1020
    const/4 v0, -0x1

    .line 1023
    :goto_0
    return v0

    .line 1022
    :cond_0
    invoke-static {p1}, Lcom/piriform/ccleaner/g/d;->b(Lcom/piriform/ccleaner/g/d;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/piriform/ccleaner/g/d;->b(Lcom/piriform/ccleaner/g/d;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1023
    invoke-virtual {p1}, Lcom/piriform/ccleaner/g/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/piriform/ccleaner/g/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1025
    :cond_1
    const/4 v0, 0x1

    .line 16
    goto :goto_0
.end method
