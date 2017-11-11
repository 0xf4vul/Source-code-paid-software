.class public final Lcom/piriform/ccleaner/k/a/d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/piriform/ccleaner/core/data/d;",
        ">;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/piriform/ccleaner/a/a/j;

.field private final b:Lcom/piriform/ccleaner/d/c;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/a/a/j;Lcom/piriform/ccleaner/d/c;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/piriform/ccleaner/k/a/d;->a:Lcom/piriform/ccleaner/a/a/j;

    .line 18
    iput-object p2, p0, Lcom/piriform/ccleaner/k/a/d;->b:Lcom/piriform/ccleaner/d/c;

    .line 19
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 11
    check-cast p1, [Ljava/util/List;

    .line 3028
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 3029
    iget-object v1, p0, Lcom/piriform/ccleaner/k/a/d;->a:Lcom/piriform/ccleaner/a/a/j;

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/a/a/j;->a(Ljava/util/List;)V

    .line 3030
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 11
    .line 1035
    iget-object v0, p0, Lcom/piriform/ccleaner/k/a/d;->b:Lcom/piriform/ccleaner/d/c;

    .line 2030
    iget-object v0, v0, Lcom/piriform/ccleaner/d/c;->b:Lcom/piriform/ccleaner/ui/fragment/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/fragment/h;->b()V

    .line 11
    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/piriform/ccleaner/k/a/d;->b:Lcom/piriform/ccleaner/d/c;

    .line 1026
    iget-object v0, v0, Lcom/piriform/ccleaner/d/c;->b:Lcom/piriform/ccleaner/ui/fragment/h;

    sget-object v1, Lcom/piriform/ccleaner/ui/activity/c;->c:Lcom/piriform/ccleaner/ui/activity/c;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/fragment/h;->a(Lcom/piriform/ccleaner/ui/activity/c;)V

    .line 24
    return-void
.end method
