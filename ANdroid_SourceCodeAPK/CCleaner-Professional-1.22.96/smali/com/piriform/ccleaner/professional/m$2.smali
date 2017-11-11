.class final enum Lcom/piriform/ccleaner/professional/m$2;
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
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/piriform/ccleaner/professional/m;-><init>(Ljava/lang/String;IIB)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/professional/m;)Lcom/piriform/ccleaner/professional/m;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/piriform/ccleaner/professional/m$2;->c:Lcom/piriform/ccleaner/professional/m;

    if-ne p1, v0, :cond_0

    .line 17
    sget-object p1, Lcom/piriform/ccleaner/professional/m$2;->b:Lcom/piriform/ccleaner/professional/m;

    .line 19
    :cond_0
    return-object p1
.end method
