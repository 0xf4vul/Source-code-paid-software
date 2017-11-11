.class final Lcom/piriform/ccleaner/storageanalyzer/backend/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/e;


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
        "Lf/c/e",
        "<",
        "Lcom/piriform/ccleaner/storageanalyzer/a;",
        "Lcom/piriform/ccleaner/core/a/p",
        "<",
        "Lcom/piriform/ccleaner/storageanalyzer/a;",
        "Ljava/util/List",
        "<",
        "Lcom/piriform/ccleaner/g/d;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/piriform/ccleaner/storageanalyzer/backend/c;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/backend/c;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$1;->b:Lcom/piriform/ccleaner/storageanalyzer/backend/c;

    iput-object p2, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 86
    check-cast p1, Lcom/piriform/ccleaner/storageanalyzer/a;

    .line 1089
    new-instance v0, Lcom/piriform/ccleaner/core/a/p;

    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$1;->b:Lcom/piriform/ccleaner/storageanalyzer/backend/c;

    iget-object v2, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$1;->a:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->a(Lcom/piriform/ccleaner/storageanalyzer/backend/c;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/piriform/ccleaner/core/a/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    return-object v0
.end method
