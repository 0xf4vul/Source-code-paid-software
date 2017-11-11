.class final Lcom/piriform/ccleaner/storageanalyzer/frontend/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/storageanalyzer/frontend/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/storageanalyzer/f;

.field final synthetic b:Lcom/piriform/ccleaner/storageanalyzer/frontend/h;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/h;Lcom/piriform/ccleaner/storageanalyzer/f;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/h$1;->b:Lcom/piriform/ccleaner/storageanalyzer/frontend/h;

    iput-object p2, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/h$1;->a:Lcom/piriform/ccleaner/storageanalyzer/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/h$1;->b:Lcom/piriform/ccleaner/storageanalyzer/frontend/h;

    invoke-static {v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/h;->a(Lcom/piriform/ccleaner/storageanalyzer/frontend/h;)Lcom/piriform/ccleaner/storageanalyzer/frontend/t;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/h$1;->a:Lcom/piriform/ccleaner/storageanalyzer/f;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/storageanalyzer/frontend/t;->a(Lcom/piriform/ccleaner/storageanalyzer/f;)V

    .line 65
    return-void
.end method
