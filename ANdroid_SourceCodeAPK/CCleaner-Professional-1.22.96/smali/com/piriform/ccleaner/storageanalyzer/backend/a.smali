.class public final Lcom/piriform/ccleaner/storageanalyzer/backend/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/ContentResolver;

.field b:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/a;->a:Landroid/content/ContentResolver;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/storageanalyzer/backend/a;)V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 16
    .line 1055
    new-array v1, v6, [Landroid/net/Uri;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v1, v0

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v1, v5

    const/4 v2, 0x2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "external"

    .line 1059
    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "internal"

    .line 1060
    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1065
    :goto_0
    if-ge v0, v6, :cond_0

    aget-object v2, v1, v0

    .line 1066
    iget-object v3, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/a;->a:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/a;->b:Landroid/database/ContentObserver;

    invoke-virtual {v3, v2, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1065
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method
