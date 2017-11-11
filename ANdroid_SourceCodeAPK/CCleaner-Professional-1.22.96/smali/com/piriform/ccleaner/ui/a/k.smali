.class public final Lcom/piriform/ccleaner/ui/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/a/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/ui/a/c;Lcom/piriform/ccleaner/ui/a/j;)V
    .locals 3

    .prologue
    .line 14
    .line 1039
    :try_start_0
    iget-object v0, p2, Lcom/piriform/ccleaner/ui/a/j;->a:Lcom/piriform/ccleaner/ui/a/c;

    const v1, 0x7f080242

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/a/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "com.piriform.ccleaner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1048
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1050
    iget-object v0, p2, Lcom/piriform/ccleaner/ui/a/j;->a:Lcom/piriform/ccleaner/ui/a/c;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/a/c;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    :goto_0
    return-void

    .line 1042
    :catch_0
    move-exception v0

    iget-object v0, p2, Lcom/piriform/ccleaner/ui/a/j;->a:Lcom/piriform/ccleaner/ui/a/c;

    const v1, 0x7f080201

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/a/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1043
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "com.piriform.ccleaner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/piriform/ccleaner/ui/a/j;->a(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public final a(Lcom/piriform/ccleaner/ui/a/c;)Z
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    return v0
.end method
