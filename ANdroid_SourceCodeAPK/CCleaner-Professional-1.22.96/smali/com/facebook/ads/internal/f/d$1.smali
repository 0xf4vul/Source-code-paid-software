.class public final Lcom/facebook/ads/internal/f/d$1;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/f/f;

.field final synthetic b:Lcom/facebook/ads/internal/f/a;

.field final synthetic c:Lcom/facebook/ads/internal/f/d;

.field private d:Lcom/facebook/ads/internal/f/f$a;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/f/d;Lcom/facebook/ads/internal/f/f;Lcom/facebook/ads/internal/f/a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/f/d$1;->c:Lcom/facebook/ads/internal/f/d;

    iput-object p2, p0, Lcom/facebook/ads/internal/f/d$1;->a:Lcom/facebook/ads/internal/f/f;

    iput-object p3, p0, Lcom/facebook/ads/internal/f/d$1;->b:Lcom/facebook/ads/internal/f/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/internal/f/d$1;->a:Lcom/facebook/ads/internal/f/f;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/f/f;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/f/d$1;->a:Lcom/facebook/ads/internal/f/f;

    .line 1000
    iget-object v1, v1, Lcom/facebook/ads/internal/f/f;->c:Lcom/facebook/ads/internal/f/f$a;

    .line 0
    iput-object v1, p0, Lcom/facebook/ads/internal/f/d$1;->d:Lcom/facebook/ads/internal/f/f$a;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/facebook/ads/internal/f/f$a;->a:Lcom/facebook/ads/internal/f/f$a;

    iput-object v1, p0, Lcom/facebook/ads/internal/f/d$1;->d:Lcom/facebook/ads/internal/f/f$a;

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/f/d$1;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/f/d$1;->d:Lcom/facebook/ads/internal/f/f$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/f/d$1;->b:Lcom/facebook/ads/internal/f/a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/f/a;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/f/d$1;->b:Lcom/facebook/ads/internal/f/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/f/d$1;->d:Lcom/facebook/ads/internal/f/f$a;

    .line 2000
    iget v1, v1, Lcom/facebook/ads/internal/f/f$a;->f:I

    .line 0
    iget-object v2, p0, Lcom/facebook/ads/internal/f/d$1;->d:Lcom/facebook/ads/internal/f/f$a;

    .line 3000
    iget-object v2, v2, Lcom/facebook/ads/internal/f/f$a;->g:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/f/a;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
