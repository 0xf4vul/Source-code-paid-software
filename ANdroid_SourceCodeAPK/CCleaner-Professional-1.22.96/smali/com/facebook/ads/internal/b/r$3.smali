.class final Lcom/facebook/ads/internal/b/r$3;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/b/r;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/b/r;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/b/r;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b/r$3;->a:Lcom/facebook/ads/internal/b/r;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 0
    .line 1000
    const-string/jumbo v0, "javascript:var anchors = document.getElementsByClassName(\'buy\');for(var i = 0; i < anchors.length; i++) {var anchor = anchors[i];anchor.classList.remove(\'buy\');anchor.onclick = function() {WatchAndInstall.onClick();};}"

    .line 0
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
