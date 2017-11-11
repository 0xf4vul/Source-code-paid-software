.class public final Lcom/piriform/ccleaner/a/a/e;
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


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/f/m;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/piriform/ccleaner/a/a/e;->a:Lcom/piriform/ccleaner/f/m;

    .line 16
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 9
    check-cast p1, Ljava/io/File;

    .line 1020
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/e;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/f/m;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/e;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/f/m;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 9
    goto :goto_0
.end method
