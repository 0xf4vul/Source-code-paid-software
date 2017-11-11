.class final Lcom/piriform/ccleaner/storageanalyzer/frontend/m$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/storageanalyzer/frontend/m;
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
        "Lcom/piriform/ccleaner/storageanalyzer/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/storageanalyzer/f;

.field final synthetic b:Lcom/piriform/ccleaner/storageanalyzer/frontend/m;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/m;Lcom/piriform/ccleaner/storageanalyzer/f;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$5;->b:Lcom/piriform/ccleaner/storageanalyzer/frontend/m;

    iput-object p2, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$5;->a:Lcom/piriform/ccleaner/storageanalyzer/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 119
    check-cast p1, Lcom/piriform/ccleaner/storageanalyzer/a;

    .line 1122
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$5;->a:Lcom/piriform/ccleaner/storageanalyzer/f;

    invoke-virtual {p1, v0}, Lcom/piriform/ccleaner/storageanalyzer/a;->a(Lcom/piriform/ccleaner/storageanalyzer/f;)Lcom/piriform/ccleaner/storageanalyzer/c;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/storageanalyzer/d;

    .line 1124
    if-nez v0, :cond_0

    .line 1125
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/d;

    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$5;->a:Lcom/piriform/ccleaner/storageanalyzer/f;

    invoke-direct {v0, p1, v1}, Lcom/piriform/ccleaner/storageanalyzer/d;-><init>(Lcom/piriform/ccleaner/storageanalyzer/a;Lcom/piriform/ccleaner/storageanalyzer/f;)V

    .line 119
    :cond_0
    return-object v0
.end method
