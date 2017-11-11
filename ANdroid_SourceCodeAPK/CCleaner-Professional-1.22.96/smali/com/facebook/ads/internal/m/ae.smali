.class public Lcom/facebook/ads/internal/m/ae;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public a:Lcom/facebook/ads/internal/m/af;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/ads/internal/view/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/m/ae;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/m/ae;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/m/ae;->c:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/m/ae;->e:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/m/ae;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/view/e;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/m/ae;->c:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/m/ae;->e:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/m/ae;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private varargs b([Ljava/lang/String;)[Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 0
    aget-object v4, p1, v8

    iget-object v0, p0, Lcom/facebook/ads/internal/m/ae;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    new-array v0, v10, [Landroid/graphics/Bitmap;

    aput-object v1, v0, v8

    aput-object v1, v0, v9

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/facebook/ads/internal/d/c;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/d/c;

    move-result-object v0

    .line 1000
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/facebook/ads/internal/d/c;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v2, "file://"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v4}, Lcom/facebook/ads/internal/d/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 0
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/m/ae;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/internal/m/ae;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    :try_start_2
    new-instance v0, Lcom/facebook/ads/internal/m/g;

    invoke-direct {v0, v2}, Lcom/facebook/ads/internal/m/g;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x42200000    # 40.0f

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 2000
    iget-object v5, v0, Lcom/facebook/ads/internal/m/g;->e:Lcom/facebook/ads/internal/m/y;

    iget-object v6, v0, Lcom/facebook/ads/internal/m/g;->c:Landroid/graphics/Bitmap;

    int-to-float v3, v3

    invoke-interface {v5, v6, v3}, Lcom/facebook/ads/internal/m/y;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/ads/internal/m/g;->d:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/facebook/ads/internal/m/g;->d:Landroid/graphics/Bitmap;

    .line 3000
    iget-object v0, v0, Lcom/facebook/ads/internal/m/g;->d:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    move-object v1, v2

    .line 0
    :goto_3
    new-array v2, v10, [Landroid/graphics/Bitmap;

    aput-object v1, v2, v8

    aput-object v0, v2, v9

    move-object v0, v2

    goto :goto_0

    .line 1000
    :cond_1
    :try_start_3
    invoke-virtual {v0, v4}, Lcom/facebook/ads/internal/d/c;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v2

    goto :goto_1

    .line 0
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v2, v1

    move-object v0, v1

    :goto_4
    sget-object v5, Lcom/facebook/ads/internal/m/ae;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Error downloading image: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v3, v1}, Lcom/facebook/ads/internal/m/p;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/m/p;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/m/q;->a(Lcom/facebook/ads/internal/m/p;)V

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v3, v0

    move-object v0, v2

    goto :goto_4

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final varargs a([Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/m/ae;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/facebook/ads/internal/m/ae;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/m/ae;->b([Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 0
    check-cast p1, [Landroid/graphics/Bitmap;

    .line 4000
    iget-object v0, p0, Lcom/facebook/ads/internal/m/ae;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/m/ae;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/m/ae;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/m/ae;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/e;

    if-eqz v0, :cond_2

    aget-object v1, p1, v2

    const/4 v2, 0x1

    aget-object v2, p1, v2

    .line 5000
    if-nez v2, :cond_1

    iget-object v3, v0, Lcom/facebook/ads/internal/view/e;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lcom/facebook/ads/internal/view/e;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    if-nez v1, :cond_4

    iget-object v0, v0, Lcom/facebook/ads/internal/view/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4000
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/internal/m/ae;->a:Lcom/facebook/ads/internal/m/af;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/internal/m/ae;->a:Lcom/facebook/ads/internal/m/af;

    invoke-interface {v0}, Lcom/facebook/ads/internal/m/af;->a()V

    .line 0
    :cond_3
    return-void

    .line 5000
    :cond_4
    iget-object v3, v0, Lcom/facebook/ads/internal/view/e;->b:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Lcom/facebook/ads/internal/view/e;->d:Landroid/graphics/Bitmap;

    iput-object v2, v0, Lcom/facebook/ads/internal/view/e;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e;->a()V

    goto :goto_0
.end method
