.class final Lcom/piriform/ccleaner/storageanalyzer/backend/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/storageanalyzer/backend/a;
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
        "Lf/a",
        "<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/storageanalyzer/backend/a;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/backend/a;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/a$1;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 33
    check-cast p1, Lf/a;

    .line 1036
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/a$1;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/a;

    new-instance v1, Lcom/piriform/ccleaner/storageanalyzer/backend/a$1$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2, p1}, Lcom/piriform/ccleaner/storageanalyzer/backend/a$1$1;-><init>(Lcom/piriform/ccleaner/storageanalyzer/backend/a$1;Landroid/os/Handler;Lf/a;)V

    .line 2016
    iput-object v1, v0, Lcom/piriform/ccleaner/storageanalyzer/backend/a;->b:Landroid/database/ContentObserver;

    .line 1049
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/a$1;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/a;

    invoke-static {v0}, Lcom/piriform/ccleaner/storageanalyzer/backend/a;->a(Lcom/piriform/ccleaner/storageanalyzer/backend/a;)V

    .line 33
    return-void
.end method
