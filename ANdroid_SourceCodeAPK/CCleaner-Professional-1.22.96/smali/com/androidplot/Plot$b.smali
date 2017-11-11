.class final Lcom/androidplot/Plot$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/Plot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field volatile a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/androidplot/Plot;

.field private volatile c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Canvas;


# direct methods
.method private constructor <init>(Lcom/androidplot/Plot;)V
    .locals 1

    .prologue
    .line 160
    iput-object p1, p0, Lcom/androidplot/Plot$b;->b:Lcom/androidplot/Plot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot$b;->d:Landroid/graphics/Canvas;

    return-void
.end method

.method synthetic constructor <init>(Lcom/androidplot/Plot;B)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/androidplot/Plot$b;-><init>(Lcom/androidplot/Plot;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidplot/Plot$b;->c:Landroid/graphics/Bitmap;

    .line 171
    iget-object v1, p0, Lcom/androidplot/Plot$b;->a:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/androidplot/Plot$b;->c:Landroid/graphics/Bitmap;

    .line 172
    iput-object v0, p0, Lcom/androidplot/Plot$b;->a:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(II)V
    .locals 1

    .prologue
    .line 176
    monitor-enter p0

    if-lez p2, :cond_0

    if-gtz p1, :cond_1

    .line 177
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/androidplot/Plot$b;->c:Landroid/graphics/Bitmap;

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidplot/Plot$b;->a:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :goto_0
    monitor-exit p0

    return-void

    .line 180
    :cond_1
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/Plot$b;->c:Landroid/graphics/Bitmap;

    .line 181
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/Plot$b;->a:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Landroid/graphics/Canvas;
    .locals 2

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidplot/Plot$b;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/androidplot/Plot$b;->d:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/androidplot/Plot$b;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 195
    iget-object v0, p0, Lcom/androidplot/Plot$b;->d:Landroid/graphics/Canvas;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
