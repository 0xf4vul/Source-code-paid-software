.class final Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;)V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService$a;->a:Ljava/lang/ref/WeakReference;

    .line 115
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;

    .line 120
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;->stopSelf()V

    .line 123
    :cond_0
    return-void
.end method
