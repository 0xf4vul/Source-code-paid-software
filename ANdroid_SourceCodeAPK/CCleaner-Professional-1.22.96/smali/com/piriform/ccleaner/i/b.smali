.class public final Lcom/piriform/ccleaner/i/b;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final a:Lcom/piriform/ccleaner/i/c;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/piriform/ccleaner/i/c;

    invoke-direct {v0, p1, p2}, Lcom/piriform/ccleaner/i/c;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/i/b;-><init>(Lcom/piriform/ccleaner/i/c;)V

    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/piriform/ccleaner/i/c;

    invoke-direct {v0, p1, p2}, Lcom/piriform/ccleaner/i/c;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/piriform/ccleaner/i/b;-><init>(Lcom/piriform/ccleaner/i/c;Ljava/lang/Exception;)V

    .line 48
    return-void
.end method

.method private constructor <init>(Lcom/piriform/ccleaner/i/c;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/i/b;-><init>(Lcom/piriform/ccleaner/i/c;Ljava/lang/Exception;)V

    .line 31
    return-void
.end method

.method private constructor <init>(Lcom/piriform/ccleaner/i/c;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 38
    .line 1045
    iget-object v0, p1, Lcom/piriform/ccleaner/i/c;->b:Ljava/lang/String;

    .line 38
    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    iput-object p1, p0, Lcom/piriform/ccleaner/i/b;->a:Lcom/piriform/ccleaner/i/c;

    .line 40
    return-void
.end method
