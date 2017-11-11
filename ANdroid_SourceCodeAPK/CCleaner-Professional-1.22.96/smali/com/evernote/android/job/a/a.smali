.class public final Lcom/evernote/android/job/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/evernote/android/job/i$c;
    .locals 3

    .prologue
    .line 95
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 96
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 97
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    :cond_0
    sget-object v0, Lcom/evernote/android/job/i$c;->a:Lcom/evernote/android/job/i$c;

    .line 109
    :goto_0
    return-object v0

    .line 101
    :cond_1
    invoke-static {v0}, Landroid/support/v4/e/a;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    .line 102
    if-nez v0, :cond_2

    .line 103
    sget-object v0, Lcom/evernote/android/job/i$c;->c:Lcom/evernote/android/job/i$c;

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    sget-object v0, Lcom/evernote/android/job/i$c;->b:Lcom/evernote/android/job/i$c;

    goto :goto_0

    .line 109
    :cond_3
    sget-object v0, Lcom/evernote/android/job/i$c;->d:Lcom/evernote/android/job/i$c;

    goto :goto_0
.end method
