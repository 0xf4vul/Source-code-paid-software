.class final Lcom/piriform/ccleaner/storageanalyzer/backend/c$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/storageanalyzer/backend/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/piriform/ccleaner/s/l;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/storageanalyzer/backend/c;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$12;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 225
    .line 1228
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$12;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/c;

    invoke-static {v0}, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->e(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)Lcom/piriform/ccleaner/s/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/piriform/ccleaner/s/k;->a()Ljava/util/List;

    move-result-object v0

    .line 225
    return-object v0
.end method
