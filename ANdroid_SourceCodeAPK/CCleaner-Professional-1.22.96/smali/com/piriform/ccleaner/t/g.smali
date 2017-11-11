.class public final Lcom/piriform/ccleaner/t/g;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/t/g$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field private final b:Lcom/piriform/ccleaner/t/g$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/piriform/ccleaner/t/g$a;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/piriform/ccleaner/t/g;->b:Lcom/piriform/ccleaner/t/g$a;

    .line 17
    iput-object p1, p0, Lcom/piriform/ccleaner/t/g;->a:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 23
    if-nez v2, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 28
    new-array v4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "MediaBroadcastReceiverWrapper: receive "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/novoda/notils/c/a/a;->c([Ljava/lang/Object;)V

    .line 29
    iget-object v4, p0, Lcom/piriform/ccleaner/t/g;->b:Lcom/piriform/ccleaner/t/g$a;

    if-eqz v4, :cond_0

    .line 1043
    const-string/jumbo v4, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "android.intent.action.MEDIA_UNMOUNTED"

    .line 1044
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "android.intent.action.MEDIA_REMOVED"

    .line 1045
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "android.intent.action.MEDIA_SHARED"

    .line 1046
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v0, v1

    .line 30
    :cond_3
    if-eqz v0, :cond_4

    .line 31
    iget-object v0, p0, Lcom/piriform/ccleaner/t/g;->b:Lcom/piriform/ccleaner/t/g$a;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/t/g$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 2039
    :cond_4
    const-string/jumbo v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/piriform/ccleaner/t/g;->b:Lcom/piriform/ccleaner/t/g$a;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    invoke-interface {v0}, Lcom/piriform/ccleaner/t/g$a;->a()V

    goto :goto_0
.end method
