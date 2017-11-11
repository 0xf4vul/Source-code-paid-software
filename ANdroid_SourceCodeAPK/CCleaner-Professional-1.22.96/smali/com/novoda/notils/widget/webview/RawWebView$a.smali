.class public final Lcom/novoda/notils/widget/webview/RawWebView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novoda/notils/widget/webview/RawWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/novoda/notils/widget/webview/RawWebView$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 1072
    if-eqz p0, :cond_0

    .line 1073
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1077
    :cond_0
    :goto_0
    return-void

    .line 1076
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
