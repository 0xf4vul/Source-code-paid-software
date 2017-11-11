.class public final Lcom/google/android/gms/internal/afa;
.super Lcom/google/android/gms/internal/afc;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/aer;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/afc;-><init>(Lcom/google/android/gms/internal/aer;Z)V

    return-void
.end method


# virtual methods
.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/afa;->a(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method
