.class public final Lcom/piriform/ccleaner/a/a/b;
.super Lcom/piriform/ccleaner/a/a/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/a/a/q",
        "<",
        "Lcom/piriform/ccleaner/f/e;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/e;Lcom/piriform/ccleaner/f/n;Lcom/piriform/ccleaner/b/e;)V
    .locals 7

    .prologue
    .line 40
    sget-object v2, Lcom/piriform/ccleaner/a/h;->v:Lcom/piriform/ccleaner/a/h;

    sget-object v3, Lcom/piriform/ccleaner/a/c;->d:Lcom/piriform/ccleaner/a/c;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/piriform/ccleaner/a/a/q;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/a/h;Lcom/piriform/ccleaner/a/c;Lcom/piriform/ccleaner/f/p;Lcom/piriform/ccleaner/f/n;Lcom/piriform/ccleaner/b/e;)V

    .line 41
    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/a/a/b;
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcom/piriform/ccleaner/f/a;

    invoke-interface {p1}, Lcom/piriform/ccleaner/f/m;->c()Lcom/piriform/ccleaner/f/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/f/a;-><init>(Lcom/piriform/ccleaner/f/d;)V

    .line 25
    new-instance v1, Lcom/piriform/ccleaner/f/e;

    invoke-direct {v1, p1, v0}, Lcom/piriform/ccleaner/f/e;-><init>(Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/f/e$a;)V

    .line 26
    new-instance v0, Lcom/piriform/ccleaner/a/a/b;

    .line 29
    invoke-interface {p1}, Lcom/piriform/ccleaner/f/m;->a()Lcom/piriform/ccleaner/f/n;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/piriform/ccleaner/a/a/b;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/e;Lcom/piriform/ccleaner/f/n;Lcom/piriform/ccleaner/b/e;)V

    return-object v0
.end method


# virtual methods
.method protected final t()I
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f08013f

    return v0
.end method

.method protected final u()I
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f090021

    return v0
.end method

.method protected final v()V
    .locals 1

    .prologue
    .line 55
    .line 1205
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/q;->i:Lcom/piriform/ccleaner/f/p;

    .line 55
    check-cast v0, Lcom/piriform/ccleaner/f/e;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/f/e;->a()Lcom/piriform/ccleaner/f/h;

    move-result-object v0

    .line 2065
    iget-object v0, v0, Lcom/piriform/ccleaner/f/h;->d:Ljava/util/List;

    .line 56
    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/a/a/b;->a(Ljava/util/List;)V

    .line 57
    return-void
.end method
