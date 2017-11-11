.class public final Lcom/piriform/ccleaner/ui/fragment/f;
.super Lcom/piriform/ccleaner/ui/fragment/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/ui/fragment/n",
        "<",
        "Lcom/piriform/ccleaner/a/a/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/n;-><init>()V

    return-void
.end method


# virtual methods
.method protected final I()Lcom/piriform/ccleaner/a/h;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/piriform/ccleaner/a/h;->k:Lcom/piriform/ccleaner/a/h;

    return-object v0
.end method

.method protected final K()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const v0, 0x7f080066

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/f;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/content/ContentResolver;Lcom/piriform/ccleaner/f/m;)Lcom/piriform/ccleaner/f/p;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lcom/piriform/ccleaner/f/u;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/f;->O()Lcom/piriform/ccleaner/f/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/piriform/ccleaner/f/d;->e()Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/piriform/ccleaner/a/a/e;

    invoke-direct {v2, p2}, Lcom/piriform/ccleaner/a/a/e;-><init>(Lcom/piriform/ccleaner/f/m;)V

    invoke-direct {v0, p2, v1, v2}, Lcom/piriform/ccleaner/f/u;-><init>(Lcom/piriform/ccleaner/f/m;Ljava/io/File;Lcom/piriform/ccleaner/v/b;)V

    .line 1088
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/piriform/ccleaner/f/u;->c:Z

    .line 32
    return-object v0
.end method

.method protected final b(Lcom/piriform/ccleaner/f/j;)Lcom/piriform/ccleaner/core/a/b;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/piriform/ccleaner/ui/b/e;

    invoke-direct {v0, p1}, Lcom/piriform/ccleaner/ui/b/e;-><init>(Lcom/piriform/ccleaner/f/j;)V

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/f;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final q_()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method
