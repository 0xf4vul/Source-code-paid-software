.class public Lcom/novoda/notils/widget/webview/RawWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novoda/notils/widget/webview/RawWebView$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public final b:Lcom/novoda/notils/widget/webview/RawWebView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/novoda/notils/widget/webview/RawWebView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Lcom/novoda/notils/widget/webview/RawWebView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/novoda/notils/widget/webview/RawWebView$a;-><init>(B)V

    iput-object v0, p0, Lcom/novoda/notils/widget/webview/RawWebView;->b:Lcom/novoda/notils/widget/webview/RawWebView$a;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v0, Lcom/novoda/notils/widget/webview/RawWebView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/novoda/notils/widget/webview/RawWebView$a;-><init>(B)V

    iput-object v0, p0, Lcom/novoda/notils/widget/webview/RawWebView;->b:Lcom/novoda/notils/widget/webview/RawWebView$a;

    .line 31
    return-void
.end method
