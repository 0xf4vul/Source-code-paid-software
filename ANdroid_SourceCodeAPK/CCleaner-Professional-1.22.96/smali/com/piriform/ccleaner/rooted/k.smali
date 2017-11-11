.class public final Lcom/piriform/ccleaner/rooted/k;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
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
    .line 9
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/piriform/ccleaner/rooted/k;->a:Lcom/piriform/ccleaner/rooted/l$a;

    .line 11
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    .line 3019
    invoke-static {}, Lb/a/a/b$f;->a()Z

    move-result v0

    .line 2016
    if-nez v0, :cond_0

    .line 2017
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/rooted/k;->cancel(Z)Z

    .line 2018
    const-string/jumbo v0, "No root access granted. Unable to reboot."

    invoke-static {v0}, Lcom/piriform/ccleaner/rooted/l;->b(Ljava/lang/String;)Lcom/piriform/ccleaner/rooted/l;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2021
    :cond_0
    invoke-static {}, Lcom/piriform/ccleaner/rooted/j;->a()Z

    .line 2026
    const-string/jumbo v0, "Successfully issued reboot command. Bye bye!"

    invoke-static {v0}, Lcom/piriform/ccleaner/rooted/l;->a(Ljava/lang/String;)Lcom/piriform/ccleaner/rooted/l;

    move-result-object v0

    goto :goto_0
.end method

.method protected final synthetic onCancelled(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 5
    check-cast p1, Lcom/piriform/ccleaner/rooted/l;

    .line 1031
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 1032
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/k;->a:Lcom/piriform/ccleaner/rooted/l$a;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/rooted/l$a;->a(Lcom/piriform/ccleaner/rooted/l;)V

    .line 5
    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 5
    check-cast p1, Lcom/piriform/ccleaner/rooted/l;

    .line 1037
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1038
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/k;->a:Lcom/piriform/ccleaner/rooted/l$a;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/rooted/l$a;->a(Lcom/piriform/ccleaner/rooted/l;)V

    .line 5
    return-void
.end method
