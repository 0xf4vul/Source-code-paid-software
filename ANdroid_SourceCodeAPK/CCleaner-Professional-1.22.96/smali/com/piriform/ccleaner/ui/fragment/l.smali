.class public final Lcom/piriform/ccleaner/ui/fragment/l;
.super Lcom/piriform/ccleaner/ui/fragment/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/ui/fragment/n",
        "<",
        "Lcom/piriform/ccleaner/a/a/m;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/n;-><init>()V

    return-void
.end method

.method private static a(ZLcom/piriform/ccleaner/f/j;)Lcom/piriform/ccleaner/ui/fragment/l;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/l;

    invoke-direct {v0}, Lcom/piriform/ccleaner/ui/fragment/l;-><init>()V

    .line 24
    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/ui/fragment/l;->c(Lcom/piriform/ccleaner/f/j;)V

    .line 25
    invoke-virtual {v0, p0}, Lcom/piriform/ccleaner/ui/fragment/l;->e(Z)V

    .line 26
    return-object v0
.end method

.method public static a(Z)Lcom/piriform/ccleaner/ui/fragment/n;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/l;->a(ZLcom/piriform/ccleaner/f/j;)Lcom/piriform/ccleaner/ui/fragment/l;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final I()Lcom/piriform/ccleaner/a/h;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/piriform/ccleaner/a/h;->h:Lcom/piriform/ccleaner/a/h;

    return-object v0
.end method

.method protected final K()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const v0, 0x7f0800a7

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/l;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final L()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method protected final a(Landroid/content/ContentResolver;Lcom/piriform/ccleaner/f/m;)Lcom/piriform/ccleaner/f/p;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/piriform/ccleaner/f/u;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/l;->O()Lcom/piriform/ccleaner/f/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/piriform/ccleaner/f/d;->f()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/piriform/ccleaner/f/u;-><init>(Lcom/piriform/ccleaner/f/m;Ljava/io/File;)V

    .line 1460
    iget-boolean v1, p0, Lcom/piriform/ccleaner/ui/fragment/n;->d:Z

    .line 2088
    iput-boolean v1, v0, Lcom/piriform/ccleaner/f/u;->c:Z

    .line 39
    return-object v0
.end method

.method protected final a(Lcom/piriform/ccleaner/f/j;)Lcom/piriform/ccleaner/ui/fragment/n;
    .locals 1

    .prologue
    .line 64
    .line 2460
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->d:Z

    .line 64
    invoke-static {v0, p1}, Lcom/piriform/ccleaner/ui/fragment/l;->a(ZLcom/piriform/ccleaner/f/j;)Lcom/piriform/ccleaner/ui/fragment/l;

    move-result-object v0

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f0800a6

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/l;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final q_()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method
