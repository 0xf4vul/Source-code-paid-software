.class public final Lcom/piriform/ccleaner/a/a/o;
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
.method private constructor <init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/p;Lcom/piriform/ccleaner/f/n;Lcom/piriform/ccleaner/a/a/p;Lcom/piriform/ccleaner/b/e;)V
    .locals 8

    .prologue
    .line 39
    sget-object v2, Lcom/piriform/ccleaner/a/h;->s:Lcom/piriform/ccleaner/a/h;

    sget-object v3, Lcom/piriform/ccleaner/a/c;->b:Lcom/piriform/ccleaner/a/c;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/piriform/ccleaner/a/a/q;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/a/h;Lcom/piriform/ccleaner/a/c;Lcom/piriform/ccleaner/f/p;Lcom/piriform/ccleaner/f/n;Lcom/piriform/ccleaner/v/b;Lcom/piriform/ccleaner/b/e;)V

    .line 40
    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/a/a/d;
    .locals 6

    .prologue
    .line 22
    invoke-interface {p1}, Lcom/piriform/ccleaner/f/m;->c()Lcom/piriform/ccleaner/f/d;

    move-result-object v0

    .line 24
    new-instance v4, Lcom/piriform/ccleaner/a/a/p;

    invoke-interface {v0}, Lcom/piriform/ccleaner/f/d;->h()Ljava/io/File;

    move-result-object v1

    invoke-direct {v4, p1, v1}, Lcom/piriform/ccleaner/a/a/p;-><init>(Lcom/piriform/ccleaner/f/m;Ljava/io/File;)V

    .line 25
    new-instance v2, Lcom/piriform/ccleaner/f/u;

    .line 26
    invoke-interface {v0}, Lcom/piriform/ccleaner/f/d;->e()Ljava/io/File;

    move-result-object v0

    invoke-direct {v2, p1, v0, v4}, Lcom/piriform/ccleaner/f/u;-><init>(Lcom/piriform/ccleaner/f/m;Ljava/io/File;Lcom/piriform/ccleaner/v/b;)V

    .line 1088
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/piriform/ccleaner/f/u;->c:Z

    .line 29
    new-instance v0, Lcom/piriform/ccleaner/a/a/o;

    invoke-interface {p1}, Lcom/piriform/ccleaner/f/m;->a()Lcom/piriform/ccleaner/f/n;

    move-result-object v3

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/a/a/o;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/p;Lcom/piriform/ccleaner/f/n;Lcom/piriform/ccleaner/a/a/p;Lcom/piriform/ccleaner/b/e;)V

    return-object v0
.end method


# virtual methods
.method protected final a(IJ)Ljava/lang/String;
    .locals 5

    .prologue
    .line 65
    .line 3053
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 65
    const v1, 0x7f090017

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, p1, v2}, Lcom/piriform/ccleaner/a/q;->a(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/piriform/ccleaner/f/h;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/f/h;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/f/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    .line 3065
    iget-object v0, p1, Lcom/piriform/ccleaner/f/h;->d:Ljava/util/List;

    .line 70
    return-object v0
.end method

.method protected final b(Lcom/piriform/ccleaner/f/h;)I
    .locals 1

    .prologue
    .line 75
    .line 4033
    iget-object v0, p1, Lcom/piriform/ccleaner/f/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 75
    return v0
.end method

.method protected final t()I
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f08004a

    return v0
.end method

.method protected final u()I
    .locals 1

    .prologue
    .line 49
    const v0, 0x7f09000c

    return v0
.end method

.method protected final w()Ljava/lang/String;
    .locals 6

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/piriform/ccleaner/a/a/o;->y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2053
    iget-object v1, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 55
    const v2, 0x7f09000d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v0, v3}, Lcom/piriform/ccleaner/a/q;->a(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/piriform/ccleaner/a/a/o;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
