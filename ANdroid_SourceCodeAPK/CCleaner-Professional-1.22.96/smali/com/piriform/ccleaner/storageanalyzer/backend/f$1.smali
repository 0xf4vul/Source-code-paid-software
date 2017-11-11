.class final Lcom/piriform/ccleaner/storageanalyzer/backend/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/storageanalyzer/backend/f;->a(Z)V
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
.field final synthetic a:Z

.field final synthetic b:Lcom/piriform/ccleaner/storageanalyzer/backend/f;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/backend/f;Z)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/f$1;->b:Lcom/piriform/ccleaner/storageanalyzer/backend/f;

    iput-boolean p2, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/f$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 62
    check-cast p1, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;

    .line 1065
    iget-boolean v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/f$1;->a:Z

    .line 1107
    iput-boolean v0, p1, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;->c:Z

    .line 62
    return-void
.end method
