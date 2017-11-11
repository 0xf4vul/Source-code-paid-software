.class final Lcom/piriform/ccleaner/storageanalyzer/frontend/m$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/storageanalyzer/frontend/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/storageanalyzer/frontend/m;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/m;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$3;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$3;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/m;

    .line 1025
    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/e;

    .line 100
    invoke-interface {v0}, Lcom/piriform/ccleaner/storageanalyzer/backend/e;->d()V

    .line 101
    return-void
.end method
