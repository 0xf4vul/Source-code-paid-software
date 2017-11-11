.class final Lcom/piriform/ccleaner/storageanalyzer/backend/c$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/storageanalyzer/backend/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/e",
        "<",
        "Lcom/piriform/ccleaner/g/d;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/storageanalyzer/backend/c;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$10;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 195
    check-cast p1, Lcom/piriform/ccleaner/g/d;

    .line 1198
    invoke-virtual {p1}, Lcom/piriform/ccleaner/g/d;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$10;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/c;

    invoke-static {v3}, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->d(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$10;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/c;

    invoke-static {v2, p1}, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->a(Lcom/piriform/ccleaner/storageanalyzer/backend/c;Lcom/piriform/ccleaner/g/d;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v0

    .line 1199
    :goto_0
    if-nez v2, :cond_2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 195
    return-object v0

    :cond_1
    move v2, v1

    .line 1198
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1199
    goto :goto_1
.end method
