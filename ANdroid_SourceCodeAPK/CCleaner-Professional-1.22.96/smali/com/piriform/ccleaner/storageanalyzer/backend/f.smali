.class public final Lcom/piriform/ccleaner/storageanalyzer/backend/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/storageanalyzer/backend/e;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/f;->a:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 61
    const-class v0, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;

    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/f;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/p/a/b;->a(Ljava/lang/Class;Landroid/content/Context;)Lf/d;

    move-result-object v0

    new-instance v1, Lcom/piriform/ccleaner/storageanalyzer/backend/f$1;

    invoke-direct {v1, p0, p1}, Lcom/piriform/ccleaner/storageanalyzer/backend/f$1;-><init>(Lcom/piriform/ccleaner/storageanalyzer/backend/f;Z)V

    .line 62
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/c/b;)Lf/d;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lf/d;->c()Lf/j;

    .line 69
    return-void
.end method


# virtual methods
.method public final a()Lf/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/d",
            "<",
            "Lcom/piriform/ccleaner/storageanalyzer/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    const-class v0, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;

    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/f;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/p/a/a;->a(Ljava/lang/Class;Landroid/content/Context;)Lf/d;

    move-result-object v0

    .line 1082
    new-instance v1, Lcom/piriform/ccleaner/storageanalyzer/backend/f$3;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/storageanalyzer/backend/f$3;-><init>(Lcom/piriform/ccleaner/storageanalyzer/backend/f;)V

    .line 29
    invoke-virtual {v0, v1}, Lf/d;->b(Lf/c/e;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/List;)Lf/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/g/d;",
            ">;)",
            "Lf/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/g/d;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 40
    const-class v0, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;

    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/f;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/p/a/a;->a(Ljava/lang/Class;Landroid/content/Context;)Lf/d;

    move-result-object v0

    .line 1100
    new-instance v1, Lcom/piriform/ccleaner/storageanalyzer/backend/f$5;

    invoke-direct {v1, p0, p1}, Lcom/piriform/ccleaner/storageanalyzer/backend/f$5;-><init>(Lcom/piriform/ccleaner/storageanalyzer/backend/f;Ljava/util/List;)V

    .line 41
    invoke-virtual {v0, v1}, Lf/d;->b(Lf/c/e;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lf/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/d",
            "<",
            "Lcom/piriform/ccleaner/storageanalyzer/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    const-class v0, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;

    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/f;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/p/a/a;->a(Ljava/lang/Class;Landroid/content/Context;)Lf/d;

    move-result-object v0

    .line 1091
    new-instance v1, Lcom/piriform/ccleaner/storageanalyzer/backend/f$4;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/storageanalyzer/backend/f$4;-><init>(Lcom/piriform/ccleaner/storageanalyzer/backend/f;)V

    .line 35
    invoke-virtual {v0, v1}, Lf/d;->b(Lf/c/e;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lf/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/d",
            "<",
            "Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    const-class v0, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;

    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/f;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/p/a/b;->a(Ljava/lang/Class;Landroid/content/Context;)Lf/d;

    move-result-object v0

    .line 2073
    new-instance v1, Lcom/piriform/ccleaner/storageanalyzer/backend/f$2;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/storageanalyzer/backend/f$2;-><init>(Lcom/piriform/ccleaner/storageanalyzer/backend/f;)V

    .line 47
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/c/b;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/storageanalyzer/backend/f;->a(Z)V

    .line 53
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/storageanalyzer/backend/f;->a(Z)V

    .line 58
    return-void
.end method
