.class final Lcom/d/a/z;
.super Lcom/d/a/y;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/d/a/y;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/d/a/z;->a:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Lcom/d/a/w;)Z
    .locals 2

    .prologue
    .line 35
    iget v0, p1, Lcom/d/a/w;->e:I

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x1

    .line 39
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "android.resource"

    iget-object v1, p1, Lcom/d/a/w;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final b(Lcom/d/a/w;)Lcom/d/a/y$a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/d/a/z;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/d/a/ae;->a(Landroid/content/Context;Lcom/d/a/w;)Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    invoke-static {v0, p1}, Lcom/d/a/ae;->a(Landroid/content/res/Resources;Lcom/d/a/w;)I

    move-result v1

    .line 45
    new-instance v2, Lcom/d/a/y$a;

    .line 1049
    invoke-static {p1}, Lcom/d/a/z;->d(Lcom/d/a/w;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    .line 1050
    invoke-static {v3}, Lcom/d/a/z;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1051
    invoke-static {v0, v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1052
    iget v4, p1, Lcom/d/a/w;->h:I

    iget v5, p1, Lcom/d/a/w;->i:I

    invoke-static {v4, v5, v3, p1}, Lcom/d/a/z;->a(IILandroid/graphics/BitmapFactory$Options;Lcom/d/a/w;)V

    .line 1054
    :cond_0
    invoke-static {v0, v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/d/a/t$d;->b:Lcom/d/a/t$d;

    invoke-direct {v2, v0, v1}, Lcom/d/a/y$a;-><init>(Landroid/graphics/Bitmap;Lcom/d/a/t$d;)V

    return-object v2
.end method
