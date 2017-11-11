.class final Lcom/piriform/ccleaner/storageanalyzer/backend/c$2;
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
        "Lcom/piriform/ccleaner/s/l;",
        "Lf/d",
        "<",
        "Lcom/piriform/ccleaner/g/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/storageanalyzer/backend/c;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$2;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 235
    check-cast p1, Lcom/piriform/ccleaner/s/l;

    .line 1238
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$2;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/c;

    .line 1240
    invoke-static {v0, p1}, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->a(Lcom/piriform/ccleaner/storageanalyzer/backend/c;Lcom/piriform/ccleaner/s/l;)Lf/c/b;

    move-result-object v0

    .line 2228
    new-instance v1, Lf/e/c$1;

    invoke-direct {v1, v0}, Lf/e/c$1;-><init>(Lf/c/b;)V

    .line 2235
    new-instance v0, Lf/e/c$b;

    invoke-direct {v0, v1}, Lf/e/c$b;-><init>(Lf/c/f;)V

    .line 1238
    invoke-static {v0}, Lf/d;->a(Lf/e/c;)Lf/d;

    move-result-object v0

    .line 235
    return-object v0
.end method
