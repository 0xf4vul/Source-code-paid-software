.class public final Lcom/piriform/ccleaner/a/a/w;
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
.method private constructor <init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/p;Lcom/piriform/ccleaner/f/n;Lcom/piriform/ccleaner/b/e;)V
    .locals 7

    .prologue
    .line 25
    sget-object v2, Lcom/piriform/ccleaner/a/h;->r:Lcom/piriform/ccleaner/a/h;

    sget-object v3, Lcom/piriform/ccleaner/a/c;->d:Lcom/piriform/ccleaner/a/c;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/piriform/ccleaner/a/a/q;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/a/h;Lcom/piriform/ccleaner/a/c;Lcom/piriform/ccleaner/f/p;Lcom/piriform/ccleaner/f/n;Lcom/piriform/ccleaner/b/e;)V

    .line 26
    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/a/a/d;
    .locals 3

    .prologue
    .line 19
    invoke-interface {p1}, Lcom/piriform/ccleaner/f/m;->c()Lcom/piriform/ccleaner/f/d;

    move-result-object v0

    .line 20
    new-instance v1, Lcom/piriform/ccleaner/f/u;

    invoke-interface {v0}, Lcom/piriform/ccleaner/f/d;->i()Ljava/io/File;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/piriform/ccleaner/f/u;-><init>(Lcom/piriform/ccleaner/f/m;Ljava/io/File;)V

    .line 21
    new-instance v0, Lcom/piriform/ccleaner/a/a/w;

    invoke-interface {p1}, Lcom/piriform/ccleaner/f/m;->a()Lcom/piriform/ccleaner/f/n;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/piriform/ccleaner/a/a/w;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/p;Lcom/piriform/ccleaner/f/n;Lcom/piriform/ccleaner/b/e;)V

    return-object v0
.end method


# virtual methods
.method protected final A()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method protected final t()I
    .locals 1

    .prologue
    .line 30
    const v0, 0x7f08004c

    return v0
.end method

.method protected final u()I
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f09001a

    return v0
.end method
