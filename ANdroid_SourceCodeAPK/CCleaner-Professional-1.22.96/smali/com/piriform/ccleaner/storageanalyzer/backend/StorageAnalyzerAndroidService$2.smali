.class final Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/b",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService$2;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 78
    .line 1081
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService$2;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;->a()V

    .line 1082
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService$2;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;

    invoke-static {v0}, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;->a(Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 78
    return-void
.end method
