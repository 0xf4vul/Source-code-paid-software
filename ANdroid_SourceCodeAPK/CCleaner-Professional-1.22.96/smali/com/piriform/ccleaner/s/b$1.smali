.class final Lcom/piriform/ccleaner/s/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/s/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/piriform/ccleaner/s/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/s/b;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/s/b;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/piriform/ccleaner/s/b$1;->a:Lcom/piriform/ccleaner/s/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 73
    check-cast p1, Lcom/piriform/ccleaner/s/l;

    check-cast p2, Lcom/piriform/ccleaner/s/l;

    .line 2013
    iget-object v0, p1, Lcom/piriform/ccleaner/s/l;->a:Ljava/lang/String;

    .line 3013
    iget-object v1, p2, Lcom/piriform/ccleaner/s/l;->a:Ljava/lang/String;

    .line 1076
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1079
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sub-int/2addr v0, v1

    .line 73
    goto :goto_0
.end method
