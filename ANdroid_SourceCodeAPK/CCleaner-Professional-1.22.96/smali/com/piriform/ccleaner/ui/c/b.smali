.class public final Lcom/piriform/ccleaner/ui/c/b;
.super Landroid/support/v4/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/b/a",
        "<[",
        "Lcom/piriform/ccleaner/f/j;",
        ">;"
    }
.end annotation


# instance fields
.field private final o:Ljava/io/File;

.field private final p:Z

.field private q:[Lcom/piriform/ccleaner/f/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/support/v4/b/a;-><init>(Landroid/content/Context;)V

    .line 19
    iput-boolean p3, p0, Lcom/piriform/ccleaner/ui/c/b;->p:Z

    .line 20
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/c/b;->o:Ljava/io/File;

    .line 21
    return-void
.end method

.method private a([Lcom/piriform/ccleaner/f/j;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    array-length v0, p1

    new-array v0, v0, [Lcom/piriform/ccleaner/f/j;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/c/b;->q:[Lcom/piriform/ccleaner/f/j;

    .line 47
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/c/b;->q:[Lcom/piriform/ccleaner/f/j;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1226
    iget-boolean v0, p0, Landroid/support/v4/b/d;->j:Z

    .line 49
    if-eqz v0, :cond_0

    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/b/a;->a(Ljava/lang/Object;)V

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, [Lcom/piriform/ccleaner/f/j;

    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/ui/c/b;->a([Lcom/piriform/ccleaner/f/j;)V

    return-void
.end method

.method public final synthetic d()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 12
    .line 3026
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/c/b;->p:Z

    if-eqz v0, :cond_0

    .line 3027
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/c/b;->o:Ljava/io/File;

    invoke-static {v0}, Lcom/piriform/ccleaner/core/b/f;->c(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/piriform/ccleaner/core/b/f;->a([Ljava/io/File;)[Lcom/piriform/ccleaner/f/j;

    move-result-object v0

    .line 12
    :goto_0
    return-object v0

    .line 3029
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/c/b;->o:Ljava/io/File;

    .line 3035
    new-instance v1, Lcom/piriform/ccleaner/ui/c/b$1;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/ui/c/b$1;-><init>(Lcom/piriform/ccleaner/ui/c/b;)V

    .line 3029
    invoke-static {v0, v1}, Lcom/piriform/ccleaner/core/b/f;->a(Ljava/io/File;Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/piriform/ccleaner/core/b/f;->a([Ljava/io/File;)[Lcom/piriform/ccleaner/f/j;

    move-result-object v0

    goto :goto_0
.end method

.method protected final f()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/c/b;->q:[Lcom/piriform/ccleaner/f/j;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/c/b;->q:[Lcom/piriform/ccleaner/f/j;

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/ui/c/b;->a([Lcom/piriform/ccleaner/f/j;)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/c/b;->m()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/c/b;->q:[Lcom/piriform/ccleaner/f/j;

    if-nez v0, :cond_2

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/c/b;->h()V

    .line 63
    :cond_2
    return-void
.end method

.method protected final j()V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/c/b;->g()Z

    .line 68
    return-void
.end method

.method protected final l()V
    .locals 1

    .prologue
    .line 72
    .line 2067
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/c/b;->g()Z

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/c/b;->q:[Lcom/piriform/ccleaner/f/j;

    .line 74
    return-void
.end method
