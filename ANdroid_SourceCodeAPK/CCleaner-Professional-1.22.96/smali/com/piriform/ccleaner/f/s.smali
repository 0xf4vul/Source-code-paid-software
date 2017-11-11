.class public final Lcom/piriform/ccleaner/f/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/f/m;


# instance fields
.field private final a:Lcom/piriform/ccleaner/f/n;

.field private final b:Lcom/piriform/ccleaner/f/l;

.field private final c:Lcom/piriform/ccleaner/f/d;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/f/n;Lcom/piriform/ccleaner/f/l;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/piriform/ccleaner/f/s;->a:Lcom/piriform/ccleaner/f/n;

    .line 17
    iput-object p2, p0, Lcom/piriform/ccleaner/f/s;->b:Lcom/piriform/ccleaner/f/l;

    .line 18
    new-instance v0, Lcom/piriform/ccleaner/f/c;

    invoke-direct {v0}, Lcom/piriform/ccleaner/f/c;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/f/s;->c:Lcom/piriform/ccleaner/f/d;

    .line 19
    return-void
.end method


# virtual methods
.method public final a()Lcom/piriform/ccleaner/f/n;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/piriform/ccleaner/f/s;->a:Lcom/piriform/ccleaner/f/n;

    return-object v0
.end method

.method public final a(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/piriform/ccleaner/f/l;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/piriform/ccleaner/f/s;->b:Lcom/piriform/ccleaner/f/l;

    return-object v0
.end method

.method public final b(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public final c()Lcom/piriform/ccleaner/f/d;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/piriform/ccleaner/f/s;->c:Lcom/piriform/ccleaner/f/d;

    return-object v0
.end method

.method public final c(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final d(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/io/File;)J
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 53
    .line 1028
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    .line 53
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/f/s;->h(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h(Ljava/io/File;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 59
    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    :cond_0
    return-object v0
.end method

.method public final i(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 79
    invoke-static {p1}, Lcom/piriform/ccleaner/core/b/f;->b(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public final j(Ljava/io/File;)Ljava/io/File;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final k(Ljava/io/File;)Lcom/piriform/ccleaner/g/b;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/piriform/ccleaner/g/b;

    invoke-direct {v0, p0, p1}, Lcom/piriform/ccleaner/g/b;-><init>(Lcom/piriform/ccleaner/f/m;Ljava/io/File;)V

    return-object v0
.end method
