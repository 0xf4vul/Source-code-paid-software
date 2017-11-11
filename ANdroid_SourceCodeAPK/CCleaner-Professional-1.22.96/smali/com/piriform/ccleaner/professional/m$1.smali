.class final enum Lcom/piriform/ccleaner/professional/m$1;
.super Lcom/piriform/ccleaner/professional/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/professional/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/piriform/ccleaner/professional/m;-><init>(Ljava/lang/String;IIB)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/professional/m;)Lcom/piriform/ccleaner/professional/m;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/piriform/ccleaner/professional/m$1;->d:Lcom/piriform/ccleaner/professional/m;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/piriform/ccleaner/professional/m$1;->c:Lcom/piriform/ccleaner/professional/m;

    if-ne p1, v0, :cond_1

    .line 8
    :cond_0
    sget-object p1, Lcom/piriform/ccleaner/professional/m$1;->a:Lcom/piriform/ccleaner/professional/m;

    .line 10
    :cond_1
    return-object p1
.end method
