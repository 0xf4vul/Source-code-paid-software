.class public final Lcom/piriform/ccleaner/rooted/c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
        "Ljava/lang/Void;",
        "Lcom/piriform/ccleaner/rooted/l;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/piriform/ccleaner/rooted/l$a;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/rooted/l$a;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/piriform/ccleaner/rooted/c;->a:Lcom/piriform/ccleaner/rooted/l$a;

    .line 14
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 8
    check-cast p1, [Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 2019
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 2021
    if-nez v0, :cond_0

    .line 2022
    new-instance v0, Lcom/novoda/notils/b/a;

    const-string/jumbo v1, "AndroidPackage instance can\'t be null"

    invoke-direct {v0, v1}, Lcom/novoda/notils/b/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2025
    :cond_0
    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/data/AndroidPackage;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3019
    invoke-static {}, Lb/a/a/b$f;->a()Z

    move-result v2

    .line 2026
    if-nez v2, :cond_1

    .line 2027
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/rooted/c;->cancel(Z)Z

    .line 2028
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No root access granted "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/piriform/ccleaner/rooted/l;->b(Ljava/lang/String;)Lcom/piriform/ccleaner/rooted/l;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3107
    :cond_1
    iget-object v0, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->b:Ljava/lang/String;

    .line 4010
    new-instance v2, Lcom/piriform/ccleaner/rooted/d;

    invoke-direct {v2}, Lcom/piriform/ccleaner/rooted/d;-><init>()V

    .line 4011
    invoke-virtual {v2, v0}, Lcom/piriform/ccleaner/rooted/d;->a(Ljava/lang/String;)Z

    .line 2036
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Enabling app "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/piriform/ccleaner/rooted/l;->a(Ljava/lang/String;)Lcom/piriform/ccleaner/rooted/l;

    move-result-object v0

    goto :goto_0
.end method

.method protected final synthetic onCancelled(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 8
    check-cast p1, Lcom/piriform/ccleaner/rooted/l;

    .line 1041
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 1042
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/c;->a:Lcom/piriform/ccleaner/rooted/l$a;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/rooted/l$a;->a(Lcom/piriform/ccleaner/rooted/l;)V

    .line 8
    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 8
    check-cast p1, Lcom/piriform/ccleaner/rooted/l;

    .line 1047
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1048
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/c;->a:Lcom/piriform/ccleaner/rooted/l$a;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/rooted/l$a;->a(Lcom/piriform/ccleaner/rooted/l;)V

    .line 8
    return-void
.end method
