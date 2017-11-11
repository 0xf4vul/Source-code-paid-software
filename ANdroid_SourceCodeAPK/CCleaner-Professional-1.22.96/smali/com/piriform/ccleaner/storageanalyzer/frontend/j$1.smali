.class final Lcom/piriform/ccleaner/storageanalyzer/frontend/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/q/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/storageanalyzer/frontend/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/piriform/ccleaner/q/b",
        "<",
        "Lcom/piriform/ccleaner/g/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/storageanalyzer/frontend/j;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/j;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/j$1;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lcom/piriform/ccleaner/g/d;

    .line 1031
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/j$1;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/j;

    .line 2016
    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->c:Lcom/piriform/ccleaner/q/c;

    .line 1031
    invoke-interface {v0, p1, p2}, Lcom/piriform/ccleaner/q/c;->a(Ljava/lang/Object;Z)V

    .line 28
    return-void
.end method
