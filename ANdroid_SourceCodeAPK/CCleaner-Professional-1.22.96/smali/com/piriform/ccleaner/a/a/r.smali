.class public final Lcom/piriform/ccleaner/a/a/r;
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
    .line 35
    sget-object v2, Lcom/piriform/ccleaner/a/h;->t:Lcom/piriform/ccleaner/a/h;

    sget-object v3, Lcom/piriform/ccleaner/a/c;->d:Lcom/piriform/ccleaner/a/c;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/piriform/ccleaner/a/a/q;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/a/h;Lcom/piriform/ccleaner/a/c;Lcom/piriform/ccleaner/f/p;Lcom/piriform/ccleaner/f/n;Lcom/piriform/ccleaner/b/e;)V

    .line 36
    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/a/a/d;
    .locals 3

    .prologue
    .line 24
    invoke-interface {p1}, Lcom/piriform/ccleaner/f/m;->c()Lcom/piriform/ccleaner/f/d;

    move-result-object v0

    .line 25
    new-instance v1, Lcom/piriform/ccleaner/f/u;

    invoke-interface {v0}, Lcom/piriform/ccleaner/f/d;->j()Ljava/io/File;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/piriform/ccleaner/f/u;-><init>(Lcom/piriform/ccleaner/f/m;Ljava/io/File;)V

    .line 26
    new-instance v0, Lcom/piriform/ccleaner/a/a/r;

    invoke-interface {p1}, Lcom/piriform/ccleaner/f/m;->a()Lcom/piriform/ccleaner/f/n;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/piriform/ccleaner/a/a/r;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/p;Lcom/piriform/ccleaner/f/n;Lcom/piriform/ccleaner/b/e;)V

    return-object v0
.end method


# virtual methods
.method protected final A()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method protected final a(IJ)Ljava/lang/String;
    .locals 6

    .prologue
    .line 45
    .line 1053
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 45
    const v1, 0x7f0800ec

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1257
    iget-object v4, p0, Lcom/piriform/ccleaner/a/a/a;->h:Lcom/piriform/ccleaner/core/i;

    .line 2080
    iget-wide v4, v4, Lcom/piriform/ccleaner/core/i;->b:J

    invoke-static {v4, v5}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v4

    .line 45
    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/piriform/ccleaner/a/q;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b(IJ)Ljava/lang/String;
    .locals 6

    .prologue
    .line 74
    invoke-static {p2, p3}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 5053
    iget-object v1, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 75
    const v2, 0x7f0800b5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/piriform/ccleaner/a/q;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final t()I
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f08004b

    return v0
.end method

.method protected final u()I
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/novoda/notils/b/a;

    const-string/jumbo v1, "Plural message resource should not be used for Google Maps cache progress info!"

    invoke-direct {v0, v1}, Lcom/novoda/notils/b/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final w()Ljava/lang/String;
    .locals 7

    .prologue
    .line 60
    .line 2240
    iget v0, p0, Lcom/piriform/ccleaner/a/a/q;->j:I

    .line 2244
    iget-wide v2, p0, Lcom/piriform/ccleaner/a/a/q;->k:J

    .line 61
    invoke-static {v2, v3}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 3053
    iget-object v2, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 62
    const v3, 0x7f09000e

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v0, v4}, Lcom/piriform/ccleaner/a/q;->a(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final x()Ljava/lang/String;
    .locals 7

    .prologue
    .line 67
    .line 3240
    iget v0, p0, Lcom/piriform/ccleaner/a/a/q;->j:I

    .line 3244
    iget-wide v2, p0, Lcom/piriform/ccleaner/a/a/q;->k:J

    .line 68
    invoke-static {v2, v3}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 4053
    iget-object v2, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 69
    const v3, 0x7f090029

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v0, v4}, Lcom/piriform/ccleaner/a/q;->a(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final z()I
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/novoda/notils/b/a;

    const-string/jumbo v1, "Plural message resource should not be used for Google Maps cache analysis!"

    invoke-direct {v0, v1}, Lcom/novoda/notils/b/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method
