.class public final Lcom/piriform/ccleaner/k/a/e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/piriform/ccleaner/f/j;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/piriform/ccleaner/f/j;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/piriform/ccleaner/a/a/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/a/a/q",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/piriform/ccleaner/d/d;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/a/a/q;Lcom/piriform/ccleaner/d/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/a/a/q",
            "<*>;",
            "Lcom/piriform/ccleaner/d/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/piriform/ccleaner/k/a/e;->a:Lcom/piriform/ccleaner/a/a/q;

    .line 18
    iput-object p2, p0, Lcom/piriform/ccleaner/k/a/e;->b:Lcom/piriform/ccleaner/d/d;

    .line 19
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 12
    check-cast p1, [Ljava/util/List;

    .line 3028
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 3030
    iget-object v1, p0, Lcom/piriform/ccleaner/k/a/e;->a:Lcom/piriform/ccleaner/a/a/q;

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/a/a/q;->b(Ljava/util/List;)Lcom/piriform/ccleaner/f/h;

    move-result-object v0

    .line 3069
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/piriform/ccleaner/f/h;->c:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3070
    iget-object v0, v0, Lcom/piriform/ccleaner/f/h;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    return-object v1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 12
    check-cast p1, Ljava/util/List;

    .line 1036
    iget-object v0, p0, Lcom/piriform/ccleaner/k/a/e;->b:Lcom/piriform/ccleaner/d/d;

    .line 2030
    iget-object v1, v0, Lcom/piriform/ccleaner/d/d;->a:Lcom/piriform/ccleaner/w/a;

    invoke-interface {v1, p1}, Lcom/piriform/ccleaner/w/a;->b(Ljava/util/List;)V

    .line 2031
    iget-object v0, v0, Lcom/piriform/ccleaner/d/d;->a:Lcom/piriform/ccleaner/w/a;

    sget-object v1, Lcom/piriform/ccleaner/ui/activity/c;->a:Lcom/piriform/ccleaner/ui/activity/c;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/w/a;->a(Lcom/piriform/ccleaner/ui/activity/c;)V

    .line 12
    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/piriform/ccleaner/k/a/e;->b:Lcom/piriform/ccleaner/d/d;

    .line 1026
    iget-object v0, v0, Lcom/piriform/ccleaner/d/d;->a:Lcom/piriform/ccleaner/w/a;

    sget-object v1, Lcom/piriform/ccleaner/ui/activity/c;->c:Lcom/piriform/ccleaner/ui/activity/c;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/w/a;->a(Lcom/piriform/ccleaner/ui/activity/c;)V

    .line 24
    return-void
.end method
