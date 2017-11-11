.class final enum Lcom/piriform/ccleaner/t/x$a$1;
.super Lcom/piriform/ccleaner/t/x$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/t/x$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, v0, p2, v0}, Lcom/piriform/ccleaner/t/x$a;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    return-void
.end method


# virtual methods
.method public final a(F)Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    float-to-long v0, p1

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
