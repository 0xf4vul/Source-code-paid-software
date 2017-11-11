.class final Lcom/piriform/ccleaner/storageanalyzer/frontend/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

.field b:Lcom/piriform/ccleaner/professional/ui/ProPurchasedCardView;

.field c:Landroid/view/View;

.field d:Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/b$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/b$1;-><init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/b;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/b;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/b;->a:Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/b;->b:Lcom/piriform/ccleaner/professional/ui/ProPurchasedCardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/b;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
