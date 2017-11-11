.class public Lcom/facebook/ads/internal/h/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/h/e$a;
.implements Lcom/facebook/ads/internal/h/f;


# static fields
.field public static a:D

.field public static b:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static e:Lcom/facebook/ads/internal/h/g;


# instance fields
.field public final c:Landroid/content/Context;

.field private final f:Lcom/facebook/ads/internal/h/e;

.field private final g:Lcom/facebook/ads/internal/f/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/h/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/h/g;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/f/d;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/f/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/h/g;->g:Lcom/facebook/ads/internal/f/d;

    new-instance v0, Lcom/facebook/ads/internal/h/e;

    invoke-direct {v0, p1, p0}, Lcom/facebook/ads/internal/h/e;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/h/e$a;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/h/g;->f:Lcom/facebook/ads/internal/h/e;

    iget-object v0, p0, Lcom/facebook/ads/internal/h/g;->f:Lcom/facebook/ads/internal/h/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/e;->b()V

    iput-object p1, p0, Lcom/facebook/ads/internal/h/g;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/facebook/ads/internal/e/a;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/e/a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/h/g;)Lcom/facebook/ads/internal/h/e;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/g;->f:Lcom/facebook/ads/internal/h/e;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/ads/internal/h/g;
    .locals 4

    sget-object v0, Lcom/facebook/ads/internal/h/g;->e:Lcom/facebook/ads/internal/h/g;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/ads/internal/h/g;->e:Lcom/facebook/ads/internal/h/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/h/g;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/h/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/ads/internal/h/g;->e:Lcom/facebook/ads/internal/h/g;

    invoke-static {}, Lcom/facebook/ads/internal/g/g;->a()V

    invoke-static {}, Lcom/facebook/ads/internal/g/g;->b()D

    move-result-wide v2

    sput-wide v2, Lcom/facebook/ads/internal/h/g;->a:D

    invoke-static {}, Lcom/facebook/ads/internal/g/g;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/h/g;->b:Ljava/lang/String;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/facebook/ads/internal/h/g;->e:Lcom/facebook/ads/internal/h/g;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(I)Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/h/g;->g:Lcom/facebook/ads/internal/f/d;

    .line 6000
    iget-object v0, v0, Lcom/facebook/ads/internal/f/d;->c:Lcom/facebook/ads/internal/f/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/f/c;->c()Landroid/database/Cursor;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/h/g;->g:Lcom/facebook/ads/internal/f/d;

    .line 7000
    invoke-virtual {v0}, Lcom/facebook/ads/internal/f/d;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/facebook/ads/internal/f/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " LIMIT "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 0
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "tokens"

    invoke-static {v2}, Lcom/facebook/ads/internal/h/g;->a(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "events"

    invoke-static {v2}, Lcom/facebook/ads/internal/h/g;->c(Landroid/database/Cursor;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    iget-object v4, p0, Lcom/facebook/ads/internal/h/g;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/facebook/ads/internal/l;->f(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/facebook/ads/internal/h/g;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/facebook/ads/internal/m/ac;->a(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_1

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string/jumbo v5, "debug"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_3
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_2

    :cond_8
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static b(Landroid/database/Cursor;)Lorg/json/JSONArray;
    .locals 6

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, -0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "id"

    sget-object v3, Lcom/facebook/ads/internal/f/c;->a:Lcom/facebook/ads/internal/f/b;

    iget v3, v3, Lcom/facebook/ads/internal/f/b;->a:I

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "token_id"

    sget-object v3, Lcom/facebook/ads/internal/f/c;->b:Lcom/facebook/ads/internal/f/b;

    iget v3, v3, Lcom/facebook/ads/internal/f/b;->a:I

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "type"

    sget-object v3, Lcom/facebook/ads/internal/f/c;->d:Lcom/facebook/ads/internal/f/b;

    iget v3, v3, Lcom/facebook/ads/internal/f/b;->a:I

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "time"

    sget-object v3, Lcom/facebook/ads/internal/f/c;->e:Lcom/facebook/ads/internal/f/b;

    iget v3, v3, Lcom/facebook/ads/internal/f/b;->a:I

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/facebook/ads/internal/m/u;->a(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "session_time"

    sget-object v3, Lcom/facebook/ads/internal/f/c;->f:Lcom/facebook/ads/internal/f/b;

    iget v3, v3, Lcom/facebook/ads/internal/f/b;->a:I

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/facebook/ads/internal/m/u;->a(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "session_id"

    sget-object v3, Lcom/facebook/ads/internal/f/c;->g:Lcom/facebook/ads/internal/f/b;

    iget v3, v3, Lcom/facebook/ads/internal/f/b;->a:I

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/facebook/ads/internal/f/c;->h:Lcom/facebook/ads/internal/f/b;

    iget v0, v0, Lcom/facebook/ads/internal/f/b;->a:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "data"

    if-eqz v3, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/facebook/ads/internal/h/g;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AdEventManager error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static c(Landroid/database/Cursor;)Lorg/json/JSONArray;
    .locals 6

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, -0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "id"

    const/4 v3, 0x2

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "token_id"

    const/4 v3, 0x0

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "type"

    const/4 v3, 0x4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "time"

    const/4 v3, 0x5

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/facebook/ads/internal/m/u;->a(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "session_time"

    const/4 v3, 0x6

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/facebook/ads/internal/m/u;->a(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "session_id"

    const/4 v3, 0x7

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v0, 0x8

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "data"

    if-eqz v3, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private d()Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/h/g;->g:Lcom/facebook/ads/internal/f/d;

    .line 4000
    iget-object v0, v0, Lcom/facebook/ads/internal/f/d;->b:Lcom/facebook/ads/internal/f/h;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/f/h;->c()Landroid/database/Cursor;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/h/g;->g:Lcom/facebook/ads/internal/f/d;

    .line 5000
    iget-object v0, v0, Lcom/facebook/ads/internal/f/d;->c:Lcom/facebook/ads/internal/f/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/f/c;->d()Landroid/database/Cursor;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 0
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "tokens"

    invoke-static {v3}, Lcom/facebook/ads/internal/h/g;->a(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "events"

    invoke-static {v2}, Lcom/facebook/ads/internal/h/g;->b(Landroid/database/Cursor;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    iget-object v4, p0, Lcom/facebook/ads/internal/h/g;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/facebook/ads/internal/l;->f(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/facebook/ads/internal/h/g;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/facebook/ads/internal/m/ac;->a(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_1

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string/jumbo v5, "debug"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_3
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_2

    :cond_8
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/l;->i(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/h/g;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/internal/h/g;->d()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/facebook/ads/internal/h/d;)V
    .locals 4

    .prologue
    .line 0
    invoke-virtual {p1}, Lcom/facebook/ads/internal/h/d;->i()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/internal/h/g;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Attempting to log an invalid "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/ads/internal/h/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " event."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/h/g;->g:Lcom/facebook/ads/internal/f/d;

    new-instance v1, Lcom/facebook/ads/internal/h/g$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/h/g$1;-><init>(Lcom/facebook/ads/internal/h/g;Lcom/facebook/ads/internal/h/d;)V

    .line 1000
    new-instance v2, Lcom/facebook/ads/internal/f/d$2;

    invoke-direct {v2, v0, p1}, Lcom/facebook/ads/internal/f/d$2;-><init>(Lcom/facebook/ads/internal/f/d;Lcom/facebook/ads/internal/h/d;)V

    .line 2000
    new-instance v3, Lcom/facebook/ads/internal/f/d$1;

    invoke-direct {v3, v0, v2, v1}, Lcom/facebook/ads/internal/f/d$1;-><init>(Lcom/facebook/ads/internal/f/d;Lcom/facebook/ads/internal/f/f;Lcom/facebook/ads/internal/f/a;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v3, v0}, Lcom/facebook/ads/internal/m/u;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/facebook/ads/internal/m/an;

    invoke-direct {v0}, Lcom/facebook/ads/internal/m/an;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/m/an;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/h/i;

    sget-wide v2, Lcom/facebook/ads/internal/h/g;->a:D

    sget-object v4, Lcom/facebook/ads/internal/h/g;->b:Ljava/lang/String;

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/h/i;-><init>(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/h/g;->a(Lcom/facebook/ads/internal/h/d;)V

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONArray;)Z
    .locals 11

    const/16 v10, 0x7d0

    const/4 v1, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/l;->f(Landroid/content/Context;)Z

    move-result v5

    move v0, v1

    move v2, v1

    move v3, v4

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_5

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "code"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v4, :cond_2

    if-eqz v5, :cond_1

    const-string/jumbo v8, "dbtype"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_1

    move v2, v4

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/facebook/ads/internal/h/g;->g:Lcom/facebook/ads/internal/f/d;

    invoke-virtual {v6, v7}, Lcom/facebook/ads/internal/f/d;->a(Ljava/lang/String;)Z

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_1

    :cond_2
    const/16 v9, 0x3e8

    if-lt v8, v9, :cond_3

    if-ge v8, v10, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    if-lt v8, v10, :cond_0

    const/16 v9, 0xbb8

    if-ge v8, v9, :cond_0

    if-eqz v5, :cond_4

    const-string/jumbo v8, "dbtype"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_4

    move v2, v4

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/facebook/ads/internal/h/g;->g:Lcom/facebook/ads/internal/f/d;

    invoke-virtual {v6, v7}, Lcom/facebook/ads/internal/f/d;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/internal/h/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/m/ac;->b(Landroid/content/Context;)V

    :cond_6
    return v3
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/h/g;->g:Lcom/facebook/ads/internal/f/d;

    .line 8000
    iget-object v0, v0, Lcom/facebook/ads/internal/f/d;->b:Lcom/facebook/ads/internal/f/h;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/f/h;->d()V

    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/h/g;->g:Lcom/facebook/ads/internal/f/d;

    .line 9000
    invoke-virtual {v0}, Lcom/facebook/ads/internal/f/d;->b()[Lcom/facebook/ads/internal/f/g;

    iget-object v1, v0, Lcom/facebook/ads/internal/f/d;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/facebook/ads/internal/f/d;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/facebook/ads/internal/f/d;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 0
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/h/o;

    sget-wide v2, Lcom/facebook/ads/internal/h/g;->a:D

    sget-object v4, Lcom/facebook/ads/internal/h/g;->b:Ljava/lang/String;

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/h/o;-><init>(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/h/g;->a(Lcom/facebook/ads/internal/h/d;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/h/m;

    sget-wide v2, Lcom/facebook/ads/internal/h/g;->a:D

    sget-object v4, Lcom/facebook/ads/internal/h/g;->b:Ljava/lang/String;

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/h/m;-><init>(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/h/g;->a(Lcom/facebook/ads/internal/h/d;)V

    goto :goto_0
.end method

.method public final c()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 0
    iget-object v1, p0, Lcom/facebook/ads/internal/h/g;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/ads/internal/l;->i(Landroid/content/Context;)I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/facebook/ads/internal/h/g;->g:Lcom/facebook/ads/internal/f/d;

    .line 3000
    iget-object v3, v3, Lcom/facebook/ads/internal/f/d;->c:Lcom/facebook/ads/internal/f/c;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/f/c;->c()Landroid/database/Cursor;

    move-result-object v1

    .line 0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-le v3, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public final d(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/h/b;

    sget-wide v2, Lcom/facebook/ads/internal/h/g;->a:D

    sget-object v4, Lcom/facebook/ads/internal/h/g;->b:Ljava/lang/String;

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/h/b;-><init>(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/h/g;->a(Lcom/facebook/ads/internal/h/d;)V

    goto :goto_0
.end method
