.class final Lcom/piriform/ccleaner/storageanalyzer/backend/a$1$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/storageanalyzer/backend/a$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/a;

.field final synthetic b:Lcom/piriform/ccleaner/storageanalyzer/backend/a$1;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/backend/a$1;Landroid/os/Handler;Lf/a;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/a$1$1;->b:Lcom/piriform/ccleaner/storageanalyzer/backend/a$1;

    iput-object p3, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/a$1$1;->a:Lf/a;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/piriform/ccleaner/storageanalyzer/backend/a$1$1;->onChange(ZLandroid/net/Uri;)V

    .line 40
    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/a$1$1;->b:Lcom/piriform/ccleaner/storageanalyzer/backend/a$1;

    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/backend/a$1;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/a;

    .line 1016
    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/backend/a;->a:Landroid/content/ContentResolver;

    .line 44
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 45
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/a$1$1;->a:Lf/a;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/a;->onNext(Ljava/lang/Object;)V

    .line 46
    return-void
.end method
