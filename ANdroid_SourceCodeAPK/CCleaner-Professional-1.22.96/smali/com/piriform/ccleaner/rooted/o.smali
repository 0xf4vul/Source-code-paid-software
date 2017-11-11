.class final Lcom/piriform/ccleaner/rooted/o;
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
.field private final a:Landroid/content/Context;

.field private final b:Lcom/piriform/ccleaner/rooted/l$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/piriform/ccleaner/rooted/l$a;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/piriform/ccleaner/rooted/o;->a:Landroid/content/Context;

    .line 16
    iput-object p2, p0, Lcom/piriform/ccleaner/rooted/o;->b:Lcom/piriform/ccleaner/rooted/l$a;

    .line 17
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 9
    check-cast p1, [Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 2022
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/o;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2023
    invoke-virtual {p0, v3}, Lcom/piriform/ccleaner/rooted/o;->cancel(Z)Z

    .line 2024
    const-string/jumbo v0, "Context can\'t be null. Aborting."

    invoke-static {v0}, Lcom/piriform/ccleaner/rooted/l;->b(Ljava/lang/String;)Lcom/piriform/ccleaner/rooted/l;

    move-result-object v0

    .line 2040
    :goto_0
    return-object v0

    .line 2027
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 2029
    if-nez v0, :cond_1

    .line 2030
    new-instance v0, Lcom/novoda/notils/b/a;

    const-string/jumbo v1, "AndroidPackage instance can\'t be null"

    invoke-direct {v0, v1}, Lcom/novoda/notils/b/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3019
    :cond_1
    invoke-static {}, Lb/a/a/b$f;->a()Z

    move-result v1

    .line 2033
    if-nez v1, :cond_2

    .line 2034
    invoke-virtual {p0, v3}, Lcom/piriform/ccleaner/rooted/o;->cancel(Z)Z

    .line 2035
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No root access granted "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/data/AndroidPackage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/piriform/ccleaner/rooted/l;->b(Ljava/lang/String;)Lcom/piriform/ccleaner/rooted/l;

    move-result-object v0

    goto :goto_0

    .line 2038
    :cond_2
    iget-object v1, p0, Lcom/piriform/ccleaner/rooted/o;->a:Landroid/content/Context;

    .line 3031
    new-instance v2, Lcom/piriform/ccleaner/rooted/q;

    invoke-direct {v2, v1}, Lcom/piriform/ccleaner/rooted/q;-><init>(Landroid/content/Context;)V

    .line 3032
    invoke-virtual {v2, v0}, Lcom/piriform/ccleaner/rooted/q;->a(Lcom/piriform/ccleaner/core/data/AndroidPackage;)Z

    move-result v1

    .line 2038
    if-nez v1, :cond_3

    .line 2039
    invoke-virtual {p0, v3}, Lcom/piriform/ccleaner/rooted/o;->cancel(Z)Z

    .line 2040
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Removal of system app failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/data/AndroidPackage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/piriform/ccleaner/rooted/l;->b(Ljava/lang/String;)Lcom/piriform/ccleaner/rooted/l;

    move-result-object v0

    goto :goto_0

    .line 2043
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Removed system app "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/data/AndroidPackage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 9
    check-cast p1, Lcom/piriform/ccleaner/rooted/l;

    .line 1048
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 1049
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/o;->b:Lcom/piriform/ccleaner/rooted/l$a;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/rooted/l$a;->a(Lcom/piriform/ccleaner/rooted/l;)V

    .line 9
    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 9
    check-cast p1, Lcom/piriform/ccleaner/rooted/l;

    .line 1054
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1055
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/o;->b:Lcom/piriform/ccleaner/rooted/l$a;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/rooted/l$a;->a(Lcom/piriform/ccleaner/rooted/l;)V

    .line 9
    return-void
.end method
