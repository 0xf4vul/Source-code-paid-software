.class public final Lcom/piriform/ccleaner/k/a/g;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/piriform/ccleaner/core/data/k;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/piriform/ccleaner/core/data/k;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/piriform/ccleaner/a/a/s;

.field private final b:Lcom/piriform/ccleaner/d/f;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/a/a/s;Lcom/piriform/ccleaner/d/f;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/piriform/ccleaner/k/a/g;->a:Lcom/piriform/ccleaner/a/a/s;

    .line 17
    iput-object p2, p0, Lcom/piriform/ccleaner/k/a/g;->b:Lcom/piriform/ccleaner/d/f;

    .line 18
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 11
    check-cast p1, [Ljava/util/List;

    .line 3027
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 3028
    iget-object v1, p0, Lcom/piriform/ccleaner/k/a/g;->a:Lcom/piriform/ccleaner/a/a/s;

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/a/a/s;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 11
    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 11
    check-cast p1, Ljava/util/List;

    .line 1033
    iget-object v0, p0, Lcom/piriform/ccleaner/k/a/g;->b:Lcom/piriform/ccleaner/d/f;

    .line 2031
    iget-object v1, v0, Lcom/piriform/ccleaner/d/f;->a:Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;

    invoke-virtual {v1, p1}, Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;->b(Ljava/util/List;)V

    .line 2032
    iget-object v0, v0, Lcom/piriform/ccleaner/d/f;->a:Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;

    sget-object v1, Lcom/piriform/ccleaner/ui/activity/c;->a:Lcom/piriform/ccleaner/ui/activity/c;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;->a(Lcom/piriform/ccleaner/ui/activity/c;)V

    .line 11
    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/piriform/ccleaner/k/a/g;->b:Lcom/piriform/ccleaner/d/f;

    .line 1027
    iget-object v0, v0, Lcom/piriform/ccleaner/d/f;->a:Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;

    sget-object v1, Lcom/piriform/ccleaner/ui/activity/c;->c:Lcom/piriform/ccleaner/ui/activity/c;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/fragment/CleanGooglePlaySearchHistoryFragment;->a(Lcom/piriform/ccleaner/ui/activity/c;)V

    .line 23
    return-void
.end method
