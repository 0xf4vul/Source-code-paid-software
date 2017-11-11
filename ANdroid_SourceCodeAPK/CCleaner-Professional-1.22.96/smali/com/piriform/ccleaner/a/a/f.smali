.class public final Lcom/piriform/ccleaner/a/a/f;
.super Lcom/piriform/ccleaner/a/a/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/a/a/q",
        "<",
        "Lcom/piriform/ccleaner/f/p;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/p;Lcom/piriform/ccleaner/f/n;Lcom/piriform/ccleaner/a/a/e;Lcom/piriform/ccleaner/b/e;)V
    .locals 8

    .prologue
    .line 35
    sget-object v2, Lcom/piriform/ccleaner/a/h;->k:Lcom/piriform/ccleaner/a/h;

    sget-object v3, Lcom/piriform/ccleaner/a/c;->b:Lcom/piriform/ccleaner/a/c;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/piriform/ccleaner/a/a/q;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/a/h;Lcom/piriform/ccleaner/a/c;Lcom/piriform/ccleaner/f/p;Lcom/piriform/ccleaner/f/n;Lcom/piriform/ccleaner/v/b;Lcom/piriform/ccleaner/b/e;)V

    .line 36
    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/a/a/d;
    .locals 6

    .prologue
    .line 19
    invoke-interface {p1}, Lcom/piriform/ccleaner/f/m;->c()Lcom/piriform/ccleaner/f/d;

    move-result-object v0

    .line 21
    new-instance v4, Lcom/piriform/ccleaner/a/a/e;

    invoke-direct {v4, p1}, Lcom/piriform/ccleaner/a/a/e;-><init>(Lcom/piriform/ccleaner/f/m;)V

    .line 22
    new-instance v2, Lcom/piriform/ccleaner/f/u;

    invoke-interface {v0}, Lcom/piriform/ccleaner/f/d;->e()Ljava/io/File;

    move-result-object v0

    invoke-direct {v2, p1, v0, v4}, Lcom/piriform/ccleaner/f/u;-><init>(Lcom/piriform/ccleaner/f/m;Ljava/io/File;Lcom/piriform/ccleaner/v/b;)V

    .line 1088
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/piriform/ccleaner/f/u;->c:Z

    .line 25
    new-instance v0, Lcom/piriform/ccleaner/a/a/f;

    invoke-interface {p1}, Lcom/piriform/ccleaner/f/m;->a()Lcom/piriform/ccleaner/f/n;

    move-result-object v3

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/a/a/f;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/p;Lcom/piriform/ccleaner/f/n;Lcom/piriform/ccleaner/a/a/e;Lcom/piriform/ccleaner/b/e;)V

    return-object v0
.end method


# virtual methods
.method protected final t()I
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f080046

    return v0
.end method

.method protected final u()I
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f090002

    return v0
.end method
