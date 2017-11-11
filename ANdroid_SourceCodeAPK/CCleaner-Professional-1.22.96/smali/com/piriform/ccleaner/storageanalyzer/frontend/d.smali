.class public final Lcom/piriform/ccleaner/storageanalyzer/frontend/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/storageanalyzer/frontend/p;


# instance fields
.field private final a:Lcom/piriform/ccleaner/e/a;

.field private final b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/piriform/ccleaner/e/a;

    invoke-direct {v0}, Lcom/piriform/ccleaner/e/a;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/d;->a:Lcom/piriform/ccleaner/e/a;

    .line 14
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/d;->b:Landroid/app/Activity;

    .line 15
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/d;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/d;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 23
    return-void
.end method
