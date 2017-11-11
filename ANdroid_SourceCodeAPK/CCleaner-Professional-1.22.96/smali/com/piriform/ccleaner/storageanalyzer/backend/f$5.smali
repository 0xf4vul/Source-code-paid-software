.class final Lcom/piriform/ccleaner/storageanalyzer/backend/f$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/storageanalyzer/backend/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/e",
        "<",
        "Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;",
        "Lf/d",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/piriform/ccleaner/g/d;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/piriform/ccleaner/storageanalyzer/backend/f;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/backend/f;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/f$5;->b:Lcom/piriform/ccleaner/storageanalyzer/backend/f;

    iput-object p2, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/f$5;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 100
    check-cast p1, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;

    .line 1103
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/f$5;->a:Ljava/util/List;

    .line 2096
    iget-object v1, p1, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/b;

    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/storageanalyzer/backend/b;->a(Ljava/util/List;)Lf/d;

    move-result-object v0

    .line 100
    return-object v0
.end method
