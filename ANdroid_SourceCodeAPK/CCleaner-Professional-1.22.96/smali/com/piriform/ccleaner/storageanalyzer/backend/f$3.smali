.class final Lcom/piriform/ccleaner/storageanalyzer/backend/f$3;
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
        "Lcom/piriform/ccleaner/storageanalyzer/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/storageanalyzer/backend/f;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/backend/f;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/f$3;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    check-cast p1, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;

    .line 1088
    iget-object v0, p1, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/b;

    invoke-interface {v0}, Lcom/piriform/ccleaner/storageanalyzer/backend/b;->a()Lf/d;

    move-result-object v0

    .line 82
    return-object v0
.end method
