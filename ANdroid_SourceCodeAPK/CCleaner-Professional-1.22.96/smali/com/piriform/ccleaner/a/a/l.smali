.class public final Lcom/piriform/ccleaner/a/a/l;
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
    .line 39
    sget-object v2, Lcom/piriform/ccleaner/a/h;->u:Lcom/piriform/ccleaner/a/h;

    sget-object v3, Lcom/piriform/ccleaner/a/c;->b:Lcom/piriform/ccleaner/a/c;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/piriform/ccleaner/a/a/q;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/a/h;Lcom/piriform/ccleaner/a/c;Lcom/piriform/ccleaner/f/p;Lcom/piriform/ccleaner/f/n;Lcom/piriform/ccleaner/b/e;)V

    .line 40
    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/m;Landroid/content/ContentResolver;Ljava/util/concurrent/Executor;Lcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/a/a/l;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/piriform/ccleaner/settings/b;

    invoke-direct {v0, p2, p3}, Lcom/piriform/ccleaner/settings/b;-><init>(Landroid/content/ContentResolver;Ljava/util/concurrent/Executor;)V

    .line 30
    new-instance v1, Lcom/piriform/ccleaner/f/e;

    invoke-direct {v1, p1, v0}, Lcom/piriform/ccleaner/f/e;-><init>(Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/f/e$a;)V

    .line 31
    new-instance v0, Lcom/piriform/ccleaner/a/a/l;

    invoke-interface {p1}, Lcom/piriform/ccleaner/f/m;->a()Lcom/piriform/ccleaner/f/n;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p4}, Lcom/piriform/ccleaner/a/a/l;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/e;Lcom/piriform/ccleaner/f/n;Lcom/piriform/ccleaner/b/e;)V

    return-object v0
.end method


# virtual methods
.method protected final t()I
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f080048

    return v0
.end method

.method protected final u()I
    .locals 1

    .prologue
    .line 49
    const v0, 0x7f09000a

    return v0
.end method

.method protected final v()V
    .locals 1

    .prologue
    .line 54
    .line 1205
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/q;->i:Lcom/piriform/ccleaner/f/p;

    .line 54
    check-cast v0, Lcom/piriform/ccleaner/f/e;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/f/e;->a()Lcom/piriform/ccleaner/f/h;

    move-result-object v0

    .line 2065
    iget-object v0, v0, Lcom/piriform/ccleaner/f/h;->d:Ljava/util/List;

    .line 55
    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/a/a/l;->a(Ljava/util/List;)V

    .line 56
    return-void
.end method
