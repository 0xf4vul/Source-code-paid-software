.class final Lcom/piriform/ccleaner/storageanalyzer/backend/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/b;


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
        "Lf/c/b",
        "<",
        "Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/storageanalyzer/backend/f;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/backend/f;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/f$2;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 73
    check-cast p1, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;

    .line 1076
    invoke-virtual {p1}, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;->a()V

    .line 73
    return-void
.end method
