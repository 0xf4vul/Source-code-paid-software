.class final Lcom/piriform/ccleaner/ui/view/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/view/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/b",
        "<",
        "Lf/a",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/g/d;

.field final synthetic b:Lcom/piriform/ccleaner/ui/view/k;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/view/k;Lcom/piriform/ccleaner/g/d;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/view/k$1;->b:Lcom/piriform/ccleaner/ui/view/k;

    iput-object p2, p0, Lcom/piriform/ccleaner/ui/view/k$1;->a:Lcom/piriform/ccleaner/g/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    .line 43
    check-cast p1, Lf/a;

    .line 1046
    iget-object v3, p0, Lcom/piriform/ccleaner/ui/view/k$1;->b:Lcom/piriform/ccleaner/ui/view/k;

    iget-object v4, p0, Lcom/piriform/ccleaner/ui/view/k$1;->a:Lcom/piriform/ccleaner/g/d;

    .line 2138
    iget-object v0, v4, Lcom/piriform/ccleaner/g/d;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/piriform/ccleaner/f;->a(Ljava/lang/String;)Lcom/piriform/ccleaner/f;

    move-result-object v2

    .line 2070
    sget-object v0, Lcom/piriform/ccleaner/f;->b:Lcom/piriform/ccleaner/f;

    if-ne v2, v0, :cond_5

    .line 3092
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v0, v4}, Lcom/piriform/ccleaner/ui/view/k;->a(Landroid/net/Uri;Lcom/piriform/ccleaner/g/d;)Landroid/database/Cursor;

    move-result-object v0

    .line 2073
    :goto_0
    sget-object v5, Lcom/piriform/ccleaner/f;->h:Lcom/piriform/ccleaner/f;

    if-ne v2, v5, :cond_4

    .line 4088
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v0, v4}, Lcom/piriform/ccleaner/ui/view/k;->a(Landroid/net/Uri;Lcom/piriform/ccleaner/g/d;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    .line 5080
    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 2059
    :goto_2
    if-eqz v0, :cond_0

    .line 5084
    const-string/jumbo v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2061
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 5138
    iget-object v2, v4, Lcom/piriform/ccleaner/g/d;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/piriform/ccleaner/f;->a(Ljava/lang/String;)Lcom/piriform/ccleaner/f;

    move-result-object v2

    .line 6106
    sget-object v4, Lcom/piriform/ccleaner/f;->b:Lcom/piriform/ccleaner/f;

    if-ne v2, v4, :cond_3

    .line 6116
    iget-object v2, v3, Lcom/piriform/ccleaner/ui/view/k;->a:Landroid/content/ContentResolver;

    int-to-long v4, v0

    invoke-static {v2, v4, v5, v6, v1}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1047
    :cond_0
    :goto_3
    if-eqz v1, :cond_1

    .line 1048
    invoke-interface {p1, v1}, Lf/a;->onNext(Ljava/lang/Object;)V

    .line 1050
    :cond_1
    invoke-interface {p1}, Lf/a;->onCompleted()V

    .line 43
    return-void

    .line 5080
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 6109
    :cond_3
    sget-object v4, Lcom/piriform/ccleaner/f;->h:Lcom/piriform/ccleaner/f;

    if-ne v2, v4, :cond_0

    .line 6120
    iget-object v2, v3, Lcom/piriform/ccleaner/ui/view/k;->a:Landroid/content/ContentResolver;

    int-to-long v4, v0

    invoke-static {v2, v4, v5, v6, v1}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v2, v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method
