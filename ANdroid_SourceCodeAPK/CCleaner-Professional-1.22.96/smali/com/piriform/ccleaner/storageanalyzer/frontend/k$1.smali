.class final Lcom/piriform/ccleaner/storageanalyzer/frontend/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/storageanalyzer/frontend/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/storageanalyzer/frontend/k;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/k;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/k$1;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/k$1;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/k;

    invoke-static {v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/k;->a(Lcom/piriform/ccleaner/storageanalyzer/frontend/k;)Lcom/piriform/ccleaner/q/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/k$1;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/k;

    invoke-static {v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/k;->a(Lcom/piriform/ccleaner/storageanalyzer/frontend/k;)Lcom/piriform/ccleaner/q/b;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/k$1;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/k;

    invoke-static {v1}, Lcom/piriform/ccleaner/storageanalyzer/frontend/k;->b(Lcom/piriform/ccleaner/storageanalyzer/frontend/k;)Lcom/piriform/ccleaner/g/d;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/piriform/ccleaner/q/b;->a(Ljava/lang/Object;Z)V

    .line 35
    :cond_0
    return-void
.end method
