.class public final Lcom/facebook/ads/internal/j/b/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/j/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Ljava/io/File;

.field b:Lcom/facebook/ads/internal/j/b/a/c;

.field c:Lcom/facebook/ads/internal/j/b/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    invoke-static {p1}, Lcom/facebook/ads/internal/j/b/o;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "video-cache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 0
    iput-object v1, p0, Lcom/facebook/ads/internal/j/b/f$a;->a:Ljava/io/File;

    new-instance v0, Lcom/facebook/ads/internal/j/b/a/g;

    invoke-direct {v0}, Lcom/facebook/ads/internal/j/b/a/g;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/j/b/f$a;->c:Lcom/facebook/ads/internal/j/b/a/a;

    new-instance v0, Lcom/facebook/ads/internal/j/b/a/f;

    invoke-direct {v0}, Lcom/facebook/ads/internal/j/b/a/f;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/j/b/f$a;->b:Lcom/facebook/ads/internal/j/b/a/c;

    return-void
.end method
