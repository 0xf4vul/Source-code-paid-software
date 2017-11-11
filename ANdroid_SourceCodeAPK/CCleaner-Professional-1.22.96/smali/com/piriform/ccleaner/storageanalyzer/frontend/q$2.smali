.class final Lcom/piriform/ccleaner/storageanalyzer/frontend/q$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/storageanalyzer/frontend/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/storageanalyzer/frontend/q;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/q;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q$2;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q$2;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/q;

    .line 1017
    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/e;

    .line 63
    invoke-interface {v0}, Lcom/piriform/ccleaner/storageanalyzer/backend/e;->e()V

    .line 64
    return-void
.end method
