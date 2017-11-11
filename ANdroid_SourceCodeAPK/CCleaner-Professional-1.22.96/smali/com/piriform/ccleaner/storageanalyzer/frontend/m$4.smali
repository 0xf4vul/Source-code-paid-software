.class final Lcom/piriform/ccleaner/storageanalyzer/frontend/m$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/b;


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
        "Lf/c/b",
        "<",
        "Lcom/piriform/ccleaner/storageanalyzer/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a;

.field final synthetic b:Lcom/piriform/ccleaner/storageanalyzer/frontend/m;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/m;Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$4;->b:Lcom/piriform/ccleaner/storageanalyzer/frontend/m;

    iput-object p2, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$4;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 107
    check-cast p1, Lcom/piriform/ccleaner/storageanalyzer/a;

    .line 1110
    sget-object v0, Lcom/piriform/ccleaner/storageanalyzer/a;->a:Lcom/piriform/ccleaner/storageanalyzer/a;

    if-ne p1, v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$4;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a;->g()V

    .line 107
    :cond_0
    return-void
.end method
