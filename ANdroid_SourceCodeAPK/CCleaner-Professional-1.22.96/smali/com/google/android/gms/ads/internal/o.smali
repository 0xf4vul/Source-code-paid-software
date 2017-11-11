.class public final Lcom/google/android/gms/ads/internal/o;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# direct methods
.method public static a(Lcom/google/android/gms/internal/acw;)Landroid/view/View;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string/jumbo v0, "AdState is null"

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/o;->b(Lcom/google/android/gms/internal/acw;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->b()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acw;->p:Lcom/google/android/gms/internal/yb;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/acw;->p:Lcom/google/android/gms/internal/yb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/yb;->a()Lcom/google/android/gms/a/a;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    const-string/jumbo v0, "View in mediation adapter is null."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/a/b;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Could not get View from mediation adapter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vf;
    .locals 1

    .prologue
    .line 0
    .line 11000
    instance-of v0, p0, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/os/IBinder;

    invoke-static {p0}, Lcom/google/android/gms/internal/vf$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/vf;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 0
    goto :goto_0
.end method

.method static a(Lcom/google/android/gms/internal/ye;Lcom/google/android/gms/internal/yf;Lcom/google/android/gms/ads/internal/g$a;)Lcom/google/android/gms/internal/wb;
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/o$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/ads/internal/o$5;-><init>(Lcom/google/android/gms/internal/ye;Lcom/google/android/gms/ads/internal/g$a;Lcom/google/android/gms/internal/yf;)V

    return-object v0
.end method

.method private static a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-nez p0, :cond_0

    const-string/jumbo v0, "Bitmap is null. Returning empty string"

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "data:image/png;base64,"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static a(Lcom/google/android/gms/internal/vf;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string/jumbo v0, "Image is null. Returning empty string"

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/vf;->b()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Unable to get image uri. Trying data uri next"

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/o;->b(Lcom/google/android/gms/internal/vf;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 12000
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "image"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/o;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "Invalid type. An image type extra should return a bitmap"

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    const-string/jumbo v0, "Invalid asset type. Bitmap should be returned only for image type"

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_6
    move-object v0, v2

    .line 0
    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/aer;)V
    .locals 2

    .prologue
    .line 0
    .line 13000
    invoke-interface {p0}, Lcom/google/android/gms/internal/aer;->D()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/internal/aer;->b()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 0
    :cond_0
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/aer;Lcom/google/android/gms/internal/xu;Ljava/util/concurrent/CountDownLatch;)Z
    .locals 17

    .prologue
    .line 0
    const/16 v16, 0x0

    .line 1000
    :try_start_0
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/aer;->b()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "AdWebView is null"

    invoke-static {v2}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    .line 0
    :goto_0
    if-nez v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return v2

    .line 1000
    :cond_1
    const/4 v3, 0x4

    :try_start_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/xu;->b:Lcom/google/android/gms/internal/xp;

    iget-object v2, v2, Lcom/google/android/gms/internal/xp;->o:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const-string/jumbo v2, "No template ids present in mediation response"

    invoke-static {v2}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    .line 2000
    :cond_3
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v3

    const-string/jumbo v4, "/nativeExpressAssetsLoaded"

    .line 3000
    new-instance v5, Lcom/google/android/gms/ads/internal/o$3;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Lcom/google/android/gms/ads/internal/o$3;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 2000
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v3

    const-string/jumbo v4, "/nativeExpressAssetsLoadingFailed"

    .line 4000
    new-instance v5, Lcom/google/android/gms/ads/internal/o$4;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Lcom/google/android/gms/ads/internal/o$4;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 2000
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    .line 1000
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/xu;->c:Lcom/google/android/gms/internal/yb;

    invoke-interface {v3}, Lcom/google/android/gms/internal/yb;->h()Lcom/google/android/gms/internal/ye;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/xu;->c:Lcom/google/android/gms/internal/yb;

    invoke-interface {v3}, Lcom/google/android/gms/internal/yb;->i()Lcom/google/android/gms/internal/yf;

    move-result-object v10

    const-string/jumbo v3, "2"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v13, :cond_4

    .line 5000
    new-instance v2, Lcom/google/android/gms/internal/uv;

    invoke-interface {v13}, Lcom/google/android/gms/internal/ye;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13}, Lcom/google/android/gms/internal/ye;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v13}, Lcom/google/android/gms/internal/ye;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v13}, Lcom/google/android/gms/internal/ye;->d()Lcom/google/android/gms/internal/vf;

    move-result-object v6

    invoke-interface {v13}, Lcom/google/android/gms/internal/ye;->e()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13}, Lcom/google/android/gms/internal/ye;->f()D

    move-result-wide v8

    invoke-interface {v13}, Lcom/google/android/gms/internal/ye;->g()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v13}, Lcom/google/android/gms/internal/ye;->h()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v13}, Lcom/google/android/gms/internal/ye;->l()Landroid/os/Bundle;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v2 .. v15}, Lcom/google/android/gms/internal/uv;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/vf;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/us;Landroid/os/Bundle;Lcom/google/android/gms/internal/te;Landroid/view/View;)V

    .line 1000
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/xu;->b:Lcom/google/android/gms/internal/xp;

    iget-object v3, v3, Lcom/google/android/gms/internal/xp;->n:Ljava/lang/String;

    .line 6000
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/ads/internal/o$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v2, v3, v0}, Lcom/google/android/gms/ads/internal/o$1;-><init>(Lcom/google/android/gms/internal/uv;Ljava/lang/String;Lcom/google/android/gms/internal/aer;)V

    .line 7000
    iput-object v5, v4, Lcom/google/android/gms/internal/aes;->c:Lcom/google/android/gms/internal/aes$a;

    .line 1000
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/xu;->b:Lcom/google/android/gms/internal/xp;

    iget-object v4, v2, Lcom/google/android/gms/internal/xp;->l:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/xu;->b:Lcom/google/android/gms/internal/xp;

    iget-object v3, v2, Lcom/google/android/gms/internal/xp;->m:Ljava/lang/String;

    if-eqz v3, :cond_6

    const-string/jumbo v5, "text/html"

    const-string/jumbo v6, "UTF-8"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/aer;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v3, "1"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v10, :cond_5

    .line 8000
    new-instance v2, Lcom/google/android/gms/internal/uw;

    invoke-interface {v10}, Lcom/google/android/gms/internal/yf;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10}, Lcom/google/android/gms/internal/yf;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v10}, Lcom/google/android/gms/internal/yf;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10}, Lcom/google/android/gms/internal/yf;->d()Lcom/google/android/gms/internal/vf;

    move-result-object v6

    invoke-interface {v10}, Lcom/google/android/gms/internal/yf;->e()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10}, Lcom/google/android/gms/internal/yf;->f()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v10}, Lcom/google/android/gms/internal/yf;->j()Landroid/os/Bundle;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/uw;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/vf;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/us;Landroid/os/Bundle;Lcom/google/android/gms/internal/te;Landroid/view/View;)V

    .line 1000
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/xu;->b:Lcom/google/android/gms/internal/xp;

    iget-object v3, v3, Lcom/google/android/gms/internal/xp;->n:Ljava/lang/String;

    .line 9000
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/ads/internal/o$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v2, v3, v0}, Lcom/google/android/gms/ads/internal/o$2;-><init>(Lcom/google/android/gms/internal/uw;Ljava/lang/String;Lcom/google/android/gms/internal/aer;)V

    .line 10000
    iput-object v5, v4, Lcom/google/android/gms/internal/aes;->c:Lcom/google/android/gms/internal/aes$a;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 0
    :catch_0
    move-exception v2

    const-string/jumbo v3, "Unable to invoke load assets"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move/from16 v2, v16

    goto/16 :goto_0

    .line 1000
    :cond_5
    :try_start_2
    const-string/jumbo v2, "No matching template id and mapper"

    invoke-static {v2}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v2, "text/html"

    const-string/jumbo v3, "UTF-8"

    move-object/from16 v0, p0

    invoke-interface {v0, v4, v2, v3}, Lcom/google/android/gms/internal/aer;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 0
    :catch_1
    move-exception v2

    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v2
.end method

.method private static b(Lcom/google/android/gms/internal/vf;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/vf;->a()Lcom/google/android/gms/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Drawable is null. Returning empty string"

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/a/b;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_1

    const-string/jumbo v0, "Drawable is not an instance of BitmapDrawable. Returning empty string"

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Unable to get drawable. Returning empty string"

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/o;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Lcom/google/android/gms/internal/acw;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/acw;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/acw;->o:Lcom/google/android/gms/internal/xp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/acw;->o:Lcom/google/android/gms/internal/xp;

    iget-object v0, v0, Lcom/google/android/gms/internal/xp;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
