.class public final Lcom/piriform/ccleaner/ui/activity/g;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/piriform/ccleaner/a/a/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/piriform/ccleaner/ui/activity/MainActivity;

.field private final b:Lcom/piriform/ccleaner/a/d;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/ui/activity/MainActivity;Lcom/piriform/ccleaner/a/d;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/activity/g;->a:Lcom/piriform/ccleaner/ui/activity/MainActivity;

    .line 19
    iput-object p2, p0, Lcom/piriform/ccleaner/ui/activity/g;->b:Lcom/piriform/ccleaner/a/d;

    .line 20
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 12
    .line 2024
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/g;->b:Lcom/piriform/ccleaner/a/d;

    invoke-interface {v0}, Lcom/piriform/ccleaner/a/d;->a()Ljava/util/List;

    move-result-object v1

    .line 2026
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/g;->a:Lcom/piriform/ccleaner/ui/activity/MainActivity;

    .line 2027
    invoke-static {v0}, Lcom/piriform/ccleaner/CCleanerApplication;->a(Landroid/content/Context;)Lcom/piriform/ccleaner/CCleanerApplication;

    move-result-object v0

    .line 2128
    iget-object v2, v0, Lcom/piriform/ccleaner/CCleanerApplication;->a:Lcom/piriform/ccleaner/a/g;

    .line 3022
    iget-object v0, v2, Lcom/piriform/ccleaner/a/g;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3023
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/a/d;

    .line 3024
    iget-object v4, v2, Lcom/piriform/ccleaner/a/g;->a:Ljava/util/Map;

    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->m()Lcom/piriform/ccleaner/a/h;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_0
    return-object v1
.end method

.method protected final onCancelled()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/g;->a:Lcom/piriform/ccleaner/ui/activity/MainActivity;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->o()V

    .line 42
    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 12
    check-cast p1, Ljava/util/List;

    .line 1036
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/g;->a:Lcom/piriform/ccleaner/ui/activity/MainActivity;

    .line 1878
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->p:Lcom/piriform/ccleaner/ui/activity/g;

    .line 1879
    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1880
    iget-object v1, v0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->n:Lcom/piriform/ccleaner/d/a/a;

    iget-object v0, v0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->B:Lcom/piriform/ccleaner/b/e;

    invoke-interface {v1, v0, p1}, Lcom/piriform/ccleaner/d/a/a;->a(Lcom/piriform/ccleaner/b/e;Ljava/util/List;)V

    .line 12
    :cond_0
    return-void
.end method
