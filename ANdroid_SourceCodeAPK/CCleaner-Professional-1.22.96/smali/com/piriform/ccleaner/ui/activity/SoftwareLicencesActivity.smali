.class public Lcom/piriform/ccleaner/ui/activity/SoftwareLicencesActivity;
.super Lcom/piriform/ccleaner/ui/activity/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/activity/a;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/activity/SoftwareLicencesActivity;->setContentView(I)V

    .line 1024
    const v0, 0x7f1000aa

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 16
    check-cast v0, Lcom/novoda/notils/widget/webview/RawWebView;

    .line 1051
    const/4 v1, 0x0

    .line 1053
    :try_start_0
    invoke-virtual {v0}, Lcom/novoda/notils/widget/webview/RawWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f070000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1066
    :try_start_1
    new-instance v1, Ljava/util/Scanner;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v6, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string/jumbo v2, "\\A"

    invoke-virtual {v1, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v1

    .line 1067
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v2

    .line 2034
    :goto_0
    const-string/jumbo v1, "file:///android_res/raw"

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "UTF-8"

    sget-object v5, Lcom/novoda/notils/widget/webview/RawWebView;->a:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/novoda/notils/widget/webview/RawWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1057
    invoke-static {v6}, Lcom/novoda/notils/widget/webview/RawWebView$a;->a(Ljava/io/Closeable;)V

    .line 1058
    return-void

    .line 1067
    :cond_0
    :try_start_2
    const-string/jumbo v2, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 1057
    :catchall_0
    move-exception v0

    :goto_1
    invoke-static {v1}, Lcom/novoda/notils/widget/webview/RawWebView$a;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method
