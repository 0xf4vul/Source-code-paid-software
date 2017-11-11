.class public final Lcom/piriform/ccleaner/a/a/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/v/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/piriform/ccleaner/v/b",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/piriform/ccleaner/f/m;

.field private final b:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/f/m;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/piriform/ccleaner/a/a/p;->a:Lcom/piriform/ccleaner/f/m;

    .line 14
    iput-object p2, p0, Lcom/piriform/ccleaner/a/a/p;->b:Ljava/io/File;

    .line 15
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 8
    check-cast p1, Ljava/io/File;

    .line 1019
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/p;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/f/m;->d(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/a/a/p;->a:Lcom/piriform/ccleaner/f/m;

    iget-object v2, p0, Lcom/piriform/ccleaner/a/a/p;->b:Ljava/io/File;

    invoke-interface {v1, v2}, Lcom/piriform/ccleaner/f/m;->d(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1020
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/p;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/f/m;->g(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 8
    goto :goto_0
.end method
