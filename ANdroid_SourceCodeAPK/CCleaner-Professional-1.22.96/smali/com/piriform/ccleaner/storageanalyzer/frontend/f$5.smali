.class final Lcom/piriform/ccleaner/storageanalyzer/frontend/f$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/storageanalyzer/frontend/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/storageanalyzer/frontend/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerCategoryEmptyView;)V
    .locals 1

    .prologue
    .line 54
    const v0, 0x7f080195

    invoke-virtual {p1, v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerCategoryEmptyView;->setLabel(I)V

    .line 55
    const v0, 0x7f0200e9

    invoke-virtual {p1, v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerCategoryEmptyView;->setIcon(I)V

    .line 56
    return-void
.end method
