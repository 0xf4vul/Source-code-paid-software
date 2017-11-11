.class public final Lcom/piriform/ccleaner/ui/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/piriform/ccleaner/ui/a/c;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/ui/a/c;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/a/j;->a:Lcom/piriform/ccleaner/ui/a/c;

    .line 19
    return-void
.end method


# virtual methods
.method final a(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/a/j;->a:Lcom/piriform/ccleaner/ui/a/c;

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/ui/a/c;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/j;->a:Lcom/piriform/ccleaner/ui/a/c;

    const v1, 0x7f0800bf

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
