.class public final Lcom/airbnb/lottie/av$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method static a(Landroid/content/res/Resources;Ljava/io/InputStream;)Lcom/airbnb/lottie/av;
    .locals 5

    .prologue
    .line 160
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 161
    new-array v0, v0, [B

    .line 163
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 164
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 165
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-static {p0, v0}, Lcom/airbnb/lottie/av$a;->a(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lcom/airbnb/lottie/av;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 174
    invoke-static {p1}, Lcom/airbnb/lottie/ch;->a(Ljava/io/Closeable;)V

    .line 176
    :goto_0
    return-object v0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    :try_start_1
    const-string/jumbo v1, "LOTTIE"

    const-string/jumbo v2, "Failed to load composition."

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Unable to find file."

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    invoke-static {p1}, Lcom/airbnb/lottie/ch;->a(Ljava/io/Closeable;)V

    .line 176
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 170
    :catch_1
    move-exception v0

    .line 171
    :try_start_2
    const-string/jumbo v1, "LOTTIE"

    const-string/jumbo v2, "Failed to load composition."

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Unable to load JSON."

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    invoke-static {p1}, Lcom/airbnb/lottie/ch;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/airbnb/lottie/ch;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method static a(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lcom/airbnb/lottie/av;
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    const/4 v3, -0x1

    .line 181
    const/4 v1, 0x0

    .line 182
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v7, v0, Landroid/util/DisplayMetrics;->density:F

    .line 183
    const-string/jumbo v0, "w"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 184
    const-string/jumbo v2, "h"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 186
    if-eq v0, v3, :cond_0

    if-eq v2, v3, :cond_0

    .line 187
    int-to-float v0, v0

    mul-float/2addr v0, v7

    float-to-int v0, v0

    .line 188
    int-to-float v1, v2

    mul-float/2addr v1, v7

    float-to-int v2, v1

    .line 189
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v8, v8, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 192
    :cond_0
    const-string/jumbo v0, "ip"

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 193
    const-string/jumbo v0, "op"

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 194
    const-string/jumbo v0, "fr"

    invoke-virtual {p1, v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 195
    new-instance v0, Lcom/airbnb/lottie/av;

    invoke-direct/range {v0 .. v8}, Lcom/airbnb/lottie/av;-><init>(Landroid/graphics/Rect;JJIFB)V

    .line 197
    const-string/jumbo v1, "assets"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 198
    invoke-static {v1, v0}, Lcom/airbnb/lottie/av$a;->b(Lorg/json/JSONArray;Lcom/airbnb/lottie/av;)V

    .line 199
    invoke-static {v1, v0}, Lcom/airbnb/lottie/av$a;->a(Lorg/json/JSONArray;Lcom/airbnb/lottie/av;)V

    .line 200
    invoke-static {p1, v0}, Lcom/airbnb/lottie/av$a;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/av;)V

    .line 201
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/airbnb/lottie/be;)Lcom/airbnb/lottie/q;
    .locals 5

    .prologue
    .line 113
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1127
    new-instance v1, Lcom/airbnb/lottie/ab;

    .line 1128
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/airbnb/lottie/ab;-><init>(Landroid/content/res/Resources;Lcom/airbnb/lottie/be;)V

    .line 1129
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/io/InputStream;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/lottie/ab;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 117
    return-object v1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to find file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Lorg/json/JSONArray;Lcom/airbnb/lottie/av;)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 222
    if-nez p0, :cond_1

    .line 242
    :cond_0
    return-void

    .line 225
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v2, v1

    .line 226
    :goto_0
    if-ge v2, v3, :cond_0

    .line 227
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 228
    const-string/jumbo v0, "layers"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 229
    if-eqz v5, :cond_3

    .line 232
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 233
    new-instance v7, Landroid/support/v4/h/f;

    invoke-direct {v7}, Landroid/support/v4/h/f;-><init>()V

    move v0, v1

    .line 234
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_2

    .line 235
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/airbnb/lottie/au$a;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/av;)Lcom/airbnb/lottie/au;

    move-result-object v8

    .line 5097
    iget-wide v10, v8, Lcom/airbnb/lottie/au;->c:J

    .line 236
    invoke-virtual {v7, v10, v11, v8}, Landroid/support/v4/h/f;->a(JLjava/lang/Object;)V

    .line 237
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 239
    :cond_2
    const-string/jumbo v0, "id"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6030
    iget-object v4, p1, Lcom/airbnb/lottie/av;->a:Ljava/util/Map;

    .line 240
    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/av;)V
    .locals 8

    .prologue
    .line 205
    const-string/jumbo v0, "layers"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 210
    if-nez v1, :cond_1

    .line 218
    :cond_0
    return-void

    .line 213
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 214
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 215
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/airbnb/lottie/au$a;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/av;)Lcom/airbnb/lottie/au;

    move-result-object v3

    .line 2030
    iget-object v4, p1, Lcom/airbnb/lottie/av;->d:Ljava/util/List;

    .line 3030
    iget-object v5, p1, Lcom/airbnb/lottie/av;->c:Landroid/support/v4/h/f;

    .line 3261
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4097
    iget-wide v6, v3, Lcom/airbnb/lottie/au;->c:J

    .line 3262
    invoke-virtual {v5, v6, v7, v3}, Landroid/support/v4/h/f;->a(JLjava/lang/Object;)V

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static b(Lorg/json/JSONArray;Lcom/airbnb/lottie/av;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 246
    if-nez p0, :cond_1

    .line 258
    :cond_0
    return-void

    .line 249
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v6, v5

    .line 250
    :goto_0
    if-ge v6, v7, :cond_0

    .line 251
    invoke-virtual {p0, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 252
    const-string/jumbo v0, "p"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7027
    new-instance v0, Lcom/airbnb/lottie/ax;

    const-string/jumbo v1, "w"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "h"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "id"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "p"

    .line 7028
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/lottie/ax;-><init>(IILjava/lang/String;Ljava/lang/String;B)V

    .line 7030
    iget-object v1, p1, Lcom/airbnb/lottie/av;->b:Ljava/util/Map;

    .line 7041
    iget-object v2, v0, Lcom/airbnb/lottie/ax;->a:Ljava/lang/String;

    .line 256
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method
