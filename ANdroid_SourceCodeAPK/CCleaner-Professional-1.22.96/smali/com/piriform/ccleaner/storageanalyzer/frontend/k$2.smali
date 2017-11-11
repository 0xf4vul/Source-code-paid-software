.class final Lcom/piriform/ccleaner/storageanalyzer/frontend/k$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/storageanalyzer/frontend/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/g/d;

.field final synthetic b:Lcom/piriform/ccleaner/storageanalyzer/frontend/k;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/k;Lcom/piriform/ccleaner/g/d;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/k$2;->b:Lcom/piriform/ccleaner/storageanalyzer/frontend/k;

    iput-object p2, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/k$2;->a:Lcom/piriform/ccleaner/g/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/k$2;->b:Lcom/piriform/ccleaner/storageanalyzer/frontend/k;

    invoke-static {v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/k;->c(Lcom/piriform/ccleaner/storageanalyzer/frontend/k;)Lcom/piriform/ccleaner/storageanalyzer/frontend/o;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/k$2;->a:Lcom/piriform/ccleaner/g/d;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/storageanalyzer/frontend/o;->a(Lcom/piriform/ccleaner/g/d;)V

    .line 80
    return-void
.end method
