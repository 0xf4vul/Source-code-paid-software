.class public final Lcom/piriform/ccleaner/core/a/m;
.super Lcom/d/a/y;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/pm/PackageManager;

.field private final b:Lcom/piriform/ccleaner/m/m;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Lcom/piriform/ccleaner/m/m;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/d/a/y;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/piriform/ccleaner/core/a/m;->a:Landroid/content/pm/PackageManager;

    .line 22
    iput-object p2, p0, Lcom/piriform/ccleaner/core/a/m;->b:Lcom/piriform/ccleaner/m/m;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Lcom/d/a/w;)Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Lcom/d/a/w;)Lcom/d/a/y$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/m;->b:Lcom/piriform/ccleaner/m/m;

    iget-object v1, p1, Lcom/d/a/w;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/m/m;->c(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 33
    iget-object v1, p0, Lcom/piriform/ccleaner/core/a/m;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/d/a/y$a;

    sget-object v2, Lcom/d/a/t$d;->b:Lcom/d/a/t$d;

    invoke-direct {v1, v0, v2}, Lcom/d/a/y$a;-><init>(Landroid/graphics/Bitmap;Lcom/d/a/t$d;)V

    return-object v1
.end method
